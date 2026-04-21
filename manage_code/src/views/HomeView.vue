<template>
	<div class="home_view">
		<div class="projectTitle">欢迎使用 {{projectName}}</div>
		<div class="count_list">
			<el-collapse-transition v-if="btnAuth('dingdanxiadan','首页总数')">
				<el-card v-show="countTypeList.closedingdanxiadanCountType" class="card_view count-item">
					<template #header>
						<div class="index_card_head">
							<div class="card_head_title">
								订单下单
							</div>
							<div class="card_head_right">
								<el-icon @click="countTypeClick('hiddendingdanxiadanCountType')" class="showIcons"
									:class="countTypeList.hiddendingdanxiadanCountType?'showIcons1':''">
									<ArrowUpBold />
								</el-icon>
								<el-icon @click="countTypeClick('closedingdanxiadanCountType')" class="closeIcons">
									<CloseBold />
								</el-icon>
							</div>
						</div>
					</template>
					<el-collapse-transition>
						<div class="count_item" v-show="countTypeList.hiddendingdanxiadanCountType">
							<div class="count_title">订单下单总数</div>
							<div class="count_num">{{dingdanxiadanCount}}</div>
						</div>
					</el-collapse-transition>
				</el-card>
			</el-collapse-transition>
		</div>
		<div class="card_list">
			<el-collapse-transition v-if="btnAuth('dingdanxiadan','首页统计')">
				<el-card v-show="cardTypeList.closedingdanxiadanChartType1" class="card_view chart-item">
					<template #header>
						<div class="index_card_head">
							<div class="card_head_title">
								订单下单
							</div>
							<div class="card_head_right">
								<el-icon @click="cardTypeClick('hiddendingdanxiadanChartType1')" class="showIcons"
										 :class="cardTypeList.hiddendingdanxiadanChartType1?'showIcons1':''">
									<ArrowUpBold />
								</el-icon>
								<el-icon @click="cardTypeClick('closedingdanxiadanChartType1')" class="closeIcons">
									<CloseBold />
								</el-icon>
							</div>
						</div>
					</template>
					<el-collapse-transition>
						<div class="card_item" v-show="cardTypeList.hiddendingdanxiadanChartType1">
							<div id="dingdanxiadanfuwumingchengEchart1" class="Echart" style="width: 100%;height: 400px;"></div>
						</div>
					</el-collapse-transition>
				</el-card>
			</el-collapse-transition>
		</div>
	</div>
</template>

<script setup>
	import {
		inject,
		nextTick,
		ref,
		getCurrentInstance
	} from 'vue';
	const context = getCurrentInstance()?.appContext.config.globalProperties;
	const projectName = context.$project.projectName
	const countTypeList = ref({
	})
	const getCountList=()=>{
		countTypeList.value.closedingdanxiadanCountType = true
		countTypeList.value.hiddendingdanxiadanCountType = true
		if(btnAuth('dingdanxiadan','首页总数')){
			getdingdanxiadanCount()
		}
	}
	const dingdanxiadanCount = ref(0)
	const getdingdanxiadanCount = () => {
		context?.$http({
			url:'dingdanxiadan/count',
			method: 'get'
		}).then(res=>{
			dingdanxiadanCount.value = res.data.data
		})
	}
	const countTypeClick = (e) => {
		countTypeList.value[e] = !countTypeList.value[e]
	}
	//权限验证
	const btnAuth = (e,a)=>{
		return context?.$toolUtil.isAuth(e,a)
	}
	let echarts = inject("echarts")
	const cardTypeClick = (e) =>{
		cardTypeList.value[e] = !cardTypeList.value[e]
		setTimeout(()=>{
			getCardList()
		},1000)
	}
	const cardTypeList = ref({
		closedingdanxiadanChartType1: true,
		hiddendingdanxiadanChartType1: true,
	})
	const getCardList = () => {
		if(btnAuth('dingdanxiadan','首页统计')){
			getdingdanxiadanChart1()
		}
	}
	import '@/assets/js/echarts-theme'
	const getdingdanxiadanChart1 = () => {
		nextTick(()=>{
			var fuwumingchengEchart1 = echarts.init(document.getElementById("dingdanxiadanfuwumingchengEchart1"),'theme');
			context?.$http({
				url: "dingdanxiadan/group/fuwumingcheng",
				method: "get",
			}).then(obj=>{
				let res = obj.data.data
				let xAxis = [];
				let yAxis = [];
				let dataList = []
				for(let i=0;i<res.length;i++){
				    xAxis.push(res[i].fuwumingcheng);
				    yAxis.push(parseFloat((res[i].total)));
					dataList.push({
				        value: parseFloat((res[i].total)),
				        name: res[i].fuwumingcheng
				    })
				}
				var option = {};
				option = {
    title: {
        text: '订单数量统计',
        left: 'center'
    },
    tooltip: {
        trigger: 'item',
        formatter: '{b} : {c}'
    },
    xAxis: {
        data: xAxis,
        type: 'category',
    },
    yAxis: {
        type: 'value'
    },
    series:{
        data: yAxis,
        type: 'bar'
    }
}

				fuwumingchengEchart1.clear()
				// 使用刚指定的配置项和数据显示图表。
				fuwumingchengEchart1.setOption(option);
				//根据窗口的大小变动图表
				fuwumingchengEchart1.resize();
			})
		})
	}

	const init=()=>{
		getCountList()
		getCardList()
	}
	init()
</script>
<style lang="scss" scoped>
	// 首页盒子
	.home_view {
	}
	.home_view .projectTitle{
	}

	.showIcons {
		transition: transform 0.3s;
		margin-right: 10px;
	}

	.showIcons1 {
		transform: rotate(-180deg);
	}
	
	// 总数盒子
	.count_list{
		// 总数card
		.card_view {
			// card头部
			.el-card__header {
				// 头部盒子
				.index_card_head {
					// 标题
					.card_head_title {
					}
					// 按钮盒子
					.card_head_right {
						// 按钮
						.el-icon {
						}
					}
				}
			}
			// body
			.el-card__body {
				// body盒子
				.count_item{
					// 总数标题
					.count_title{
					}
					// 总数数字
					.count_num{
					}
				}
			}
		}
	}

	// 统计图盒子
	.card_list {
		// 统计图card
		.card_view {
			// 头部
			.el-card__header {
				// 头部盒子
				.index_card_head {
					// 标题
					.card_head_title {
					}
					// 按钮盒子
					.card_head_right {
						// 按钮
						.el-icon{
						}
					}
				}
			}
			// body
			.el-card__body {
				// body盒子
				.card_item{
				}
			}
		}
	}
</style>
<style>
/*总盒子*/
.home_view{
    padding: 0px 20px;
    margin: 0px;
    height: auto;
    min-height: 100vh;
    background: none;
    width: 100%;
}
.home_view .projectTitle{
    width: 100%;
    font-size: 28px;
    font-weight: bold;
    padding: 40px 0px 20px;
    height: auto;
    display: flex;
    align-items: center;
    justify-content: center;
    margin: 0px 0px 20px;
    color: #000;
}

/*总数*/
/*总盒子*/
.home_view .count_list {
    display:flex;
    flex-wrap:wrap;
    justify-content:center;
    padding:0px 0px 20px;
    width:100%;
    align-items:flex-start;
    column-gap: 20px;
}
/*卡片盒子*/
.home_view .count_list .card_view {
    width:23%;
    height:auto;
    box-sizing:border-box;
    border:0px;
    border-radius:0px;
    /* box-shadow:0 2px 5px 0 rgba(0,0,0,0.16),0 2px 10px 0 rgba(0,0,0,0.12); */
    flex: 1;
    background-image: url(http://clfile.zggen.cn/20241029/5b35112b887e4cc78c335487ea07ca36.png);
    background-size: 58px 36px;
    background-position: calc(100% - 30px) 30%;
    background-repeat: no-repeat;
}

/*head 总盒子*/
.home_view .count_list .card_view .el-card__header{
     width: 100%;
    border: 0px solid rgb(238, 238, 238);
    display: none;
}
/*item*/
.home_view .count_list .card_view .el-card__header .index_card_head{
    display: flex;
    align-items: center;
    justify-content: space-between;
    width: 100%;
    height: 10px;
}
/*标题*/
.home_view .count_list .card_view .el-card__header .index_card_head .card_head_title{
    font-size: 14px;
    color: rgb(51, 51, 51);
}
/*按钮盒子*/
.home_view .count_list .card_view .el-card__header .index_card_head .card_head_right{
    display: flex;
    align-items: center;
}
/*按钮*/
.home_view .count_list .card_view .el-card__header .index_card_head .card_head_right .showIcons{
    color: rgb(102, 102, 102);
    font-size: 20px;
    cursor: pointer;
}
/*body 总盒子*/
.home_view .count_list .card_view .el-card__body{
    padding: 0px;
    background: none;
}
/*item*/
.home_view .count_list .card_view .el-card__body .count_item{
    padding: 20px 20px 40px;
    text-align: left;
    display: flex;
    align-items: flex-start;
    justify-content: flex-start;
    flex-direction: column;
    border: 2px solid #D0FFFE;
    position: relative;
}
/*标题*/
.home_view .count_list .card_view .el-card__body .count_item .count_title{
    font-size: 14px;
    color: #969696;
    line-height: 2;
    display: inline-block;
    margin: 0px 10px 0px 0px;
    order: 2;
}
/*数字*/
.home_view .count_list .card_view .el-card__body .count_item .count_num{
    font-size: 26px;
    color: #000;
    line-height: 2;
    display: inline-block;
    font-weight: 600;
    order: 1;
}

/*图表*/
/*总盒子*/
.home_view .card_list{
    width: 100%;
    display: flex;
    flex-wrap: wrap;
    padding: 0px 0px 20px;
    align-items: flex-start;
    gap: 20px;
}
/*卡片 总盒子*/
.home_view .card_list .card_view{
    min-width: 30%;
    height: auto;
    box-sizing: border-box;
    border: 0px;
    border-radius: 0px;
    padding: 20px 0px 0px;
    box-shadow: none;
    flex: 1;
}
/*head 总盒子*/
.home_view .card_list .card_view .el-card__header{
    width: 100%;
    border: 0px solid rgb(238, 238, 238);
    background: rgb(255, 255, 255);
    display: none;
}
/*item*/
.home_view .card_list .card_view .el-card__header .index_card_head{
    display: flex;
    align-items: center;
    justify-content: space-between;
    width: 100%;
    height: 10px;
}
/*标题*/
.home_view .card_list .card_view .el-card__header .index_card_head .card_head_title{
}
/*按钮盒子*/
.home_view .card_list .card_view .el-card__header .index_card_head .card_head_right{
    display: none;
}
/*按钮*/
.home_view .card_list .card_view .el-card__header .index_card_head .card_head_right .showIcons{
    color: rgb(238, 238, 238);
    font-size: 20px;
    cursor: pointer;
}

/*body 总盒子*/
.home_view .card_list .card_view .el-card__body{
    padding: 0px;
    background: rgb(255, 255, 255);
}
.home_view .card_list .card_view .el-card__body .card_item{
    padding: 10px;
    text-align: center;
}


.home_view .count_list .card_view .el-card__body .count_item:after {
    content: '';
    background: #D8D8D8;
    position: absolute;
    bottom: 20px;
    height: 2px;
    width: calc(100% - 60px);
}

.home_view .count_list .card_view .el-card__body .count_item:before {
    content: '';
    position: absolute;
    height: 2px;
    bottom: 20px;
    width: 30%;
    background: var(--theme);
    z-index: 1;
}
.home-calendar{
  border: 0px solid rgb(218, 218, 218);
  box-shadow: rgba(0, 0, 0, 0.1) 0px 0px 0px;
  margin: 0px auto 30px;
  border-radius: 0px;
  color: rgb(102, 102, 102);
  background: #fff;
  width: 100%;
  font-size: inherit;
  height: auto;
  padding:0 0 10px;
  order:2;
}
.home-calendar .header{
  padding: 17px 40px;
  border-color: rgba(126, 96, 16, 0.1);
  flex-wrap: wrap;
  background: #2791fe;
  border-width: 0px 0px 1px;
  display: flex;
  width: 100%;
  border-style: solid;
  justify-content: space-between;
  height: auto;
}
.home-calendar .header .btn{
  cursor: pointer;
  border: 0px solid rgb(153, 153, 153);
  padding: 0px 0px 0px 12px;
  align-items: center;
  color: #fff;
  border-radius: 4px;
  display: flex;
  width: auto;
  font-size: 16px;
  justify-content: center;
}
.home-calendar .header .title{
  padding: 0px 10px;
  font-size: 24px;
  align-items: center;
  justify-content: center;
  display: flex;
  color: #fff;
}
.home-calendar table{
  width: 100%;
  padding: 0px 0px 20px;
  height: auto;
}
.home-calendar tbody,thead{
  width: 100%;
}
.home-calendar tr{
  width: 100%;
  align-items: center;
  justify-content: center;
  display: flex;
}
.home-calendar th{
  align-items: center;
  flex: 1;
  display: flex;
  line-height: 50px;
  justify-content: center;
}
.home-calendar td{
  cursor: pointer;
  padding: 6px 12px 6px;
  flex: 1;
  display: flex;
  justify-content: center;
  text-align: center;
}
.home-calendar td.today .text{
  width: 80%;
  height: 80%;
  padding:5px 0;
  background: #2791fe10;
  color:#2791fe;
  border-radius:0px;
}
.home-calendar td.festival .text{
  width: 80%;
  height: 80%;
  padding:5px 0;
  background: #2f3f5610;
  border-radius:0px;
}

</style>
