<template>
	<div>
		<div class="home_box">
			<!-- 服务项目推荐 -->
			<div class="recomList_view">
				<div class="recomList_title">
                    <span>服务项目推荐</span>
                </div>
				<div class="recommend_list_one">
					<div class="recommend_item animation_box" v-for="(item,index) in fuwuxiangmuRecomList" :key="index" @click="detailClick('fuwuxiangmu',item.id)">
						<div class="recommend_img_box">
							<img class="recommend_img" v-if="isHttp(item.fengmian)" :src="item.fengmian.split(',')[0]" alt="">
							<img class="recommend_img" v-else :src="item.fengmian?$config.url + item.fengmian.split(',')[0]:''" alt="">
						</div>
						<div class="recommend_content">
							<div class="recommend_title">
								服务名称：{{item.fuwumingcheng}}
							</div>
							<div class="recommend_title">
								{{item.fuwuleixing}}
							</div>
							<div class="recommend_title">
								{{item.gongsimingcheng}}
							</div>
							<div class="recommend_title">
								{{item.lianxifangshi}}
							</div>
							<div class="recommend_bottom">
								<div class="recommend_like" v-if="item.thumbsupNumber">
									<span class="iconfont icon-thumb-up-line1 like_icon"></span>
									<div class="num">{{item.thumbsupNumber}}</div>
								</div>
								<div class="recommend_collect" v-if="item.storeupNumber">
									<el-icon><StarFilled /></el-icon>
									<div class="num">{{item.storeupNumber}}</div>
								</div>
								<div class="recommend_clickNum" v-if="item.clickNumber">
									<el-icon><View /></el-icon>
									<div class="num">{{item.clickNumber}}</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="recommend_more_view" @click="moreClick('fuwuxiangmu')">
					<span class="recommend_more_text">查看更多</span>
				</div>
			</div>
			<!-- 系统公告 -->
			<div class="newsList_view">
				<div class="newtitle">
				  <div class="in">系统公告</div>
				  <div class="nmore" @click="moreClick('news')" style="cursor: pointer">查看更多 +</div>
				</div>
				
				<div class="list">
				  <div class="list1">
				    <template v-for="(item,index) in newsList">
				      <div class="item0" v-if="index<=3" @click="newsDetailClick(item)">
				        <div class="imgbox"></div>
				        <div class="infobox">
				          <div class="title">{{item.title}}</div>
				          <div class="time">
				          	{{moment(item.addtime).format('YYYY-MM-DD')}}
				          </div>
				        </div>
				      </div>
				    </template>
				  </div>
				  <template v-for="(item,index) in newsList">
				    <div class="item" :key="index" v-if="index>3" @click="newsDetailClick(item)">
				      <img :src="item.imgUrl" >
				      <div class="infobox">
				        <div class="title">{{item.title}}</div>
				        <div class="info">{{item.introduction}}</div>
				        <div class="time">
				          <span class="time_in">{{moment(item.addtime).format('YYYY-MM-DD')}}</span>
				        </div>
				      </div>
				    </div>
				  </template>
				</div>
			</div>

		</div>
		<formModel ref="newsFormModelRef"></formModel>
	</div>
</template>

<script setup>
	import {
		ref,
		getCurrentInstance
	} from 'vue';
	import moment from 'moment'
	import {
		useRouter
	} from 'vue-router';
	const context = getCurrentInstance()?.appContext.config.globalProperties;
	const router = useRouter()
	//服务项目推荐
	const fuwuxiangmuRecomList = ref([])
	const getfuwuxiangmuRecomList = () => {
		let autoSortUrl = 'fuwuxiangmu/autoSort'
		if(context?.$toolUtil.storageGet('frontToken')){
			autoSortUrl = "fuwuxiangmu/autoSort2"
		}
		let params = {
			page: 1,
			limit: 10
		}
		context?.$http({
			url: autoSortUrl,
			method: 'get',
			params: params
		}).then(res => {
			fuwuxiangmuRecomList.value = res.data.data.list
			fuwuxiangmuRecomList.value.forEach(item=>{
				if(!isHttp(item.fengmian)){
					item.imgUrls = item.fengmian.split(',').map(item=>context.$config.url+item)
				}
			})
		})
	}
	//系统公告弹窗
	import formModel from './news/formModel'
	const newsFormModelRef = ref(null)
	//系统公告
	const newsList = ref([])
	const getNewsList = () => {
		context?.$http({
			url: 'news/list',
			method: 'get',
			params:{
				page:1,
				limit: 6,
                sort:'id',
                order:'desc',
			}
		}).then(res=>{
			newsList.value = res.data.data.list
			newsList.value.forEach(item=>{
				if(!isHttp(item.picture)){
					item.imgUrl=context.$config.url+item.picture.split(',')[0]
				}
			})
		})
	}
	const newsDetailClick = (item) => {
		if (item && item.id){
			newsFormModelRef.value.init(item.id)
		}
	}
	//判断图片链接是否带http
	const isHttp = (str) => {
        return str && str.substr(0,4)=='http';
    }
	//跳转详情
	const detailClick = (table,id) => {
		router.push(`/index/${table}Detail?id=${id}`)
	}
	const moreClick = (table) => {
		router.push(`/index/${table}List`)
	}
	const init = () => {
		//服务项目推荐
		getfuwuxiangmuRecomList()
		//系统公告
		getNewsList()
	}
	init()
</script>

<style lang="scss">
	.home_box {
	}

	// 推荐
	.recomList_view {
		.recomList_title {
		}
		// list
		.recommend_list_one {
			.recommend_item {
			}
			.recommend_img_box {
				.recommend_img {
				}
			}
			.recommend_content {
				.recommend_title {
				}
				.recommend_price {
				}
				.recommend_bottom {
					.recommend_like {
						.like_icon {
						}
						.num {
						}
					}
					.recommend_collect {
						.el-icon {
						}
						.num {
						}
					}
					.recommend_clickNum {
						.el-icon {
						}
						.num {
						}
					}
				}
			}
		}
		// list
		// animation
		.animation_box {
			transform: rotate(0deg) scale(1) skew(0deg, 0deg) translate3d(0px, 0px, 0px);
			z-index: initial;
		}
		.animation_box:hover {
		}
		.animation_box img {
			transform: rotate(0deg) scale(1) skew(0deg, 0deg) translate3d(0px, 0px, 0px);
			z-index: initial;
		}
		.animation_box img:hover {
		}
		// animation
		// 更多
		.recommend_more_view {
			.recommend_more_text {
			}
		}
	}
	// 推荐
	// 新闻资讯
	.newsList_view {

		.newsList_title {
		}
		// list
		.news_list_one {
			display: flex;
			flex-wrap: wrap;
			.news_item {
				box-shadow: 0 4px 6px rgba(0,0,0,.3);
				margin: 0 10px 10px;
				background: #fff;
				display: flex;
				width: calc(33% - 20px);
				align-items: center;
				.news_img_box {
					width: 40%;
					font-size: 0;
					.news_img {
						object-fit: cover;
						width: 100%;
						height: 200px;
					}
				}
				.news_content {
					margin: 0 0 0 20px;
					width: calc(60% - 20px);
					.news_title {
						font-weight: bold;
						font-size: 20px;
					}
					.news_text {
						font-size: 14px;
						line-height: 1.5;
					}
					.news_time {
						color: #999;
						width: 100%;
						text-align: right;
					}
				}
			}
		}
		// list
		// animation
		.animation_box {
			transform: rotate(0deg) scale(1) skew(0deg, 0deg) translate3d(0px, 0px, 0px);
			z-index: initial;
		}
		.animation_box:hover {
			transform: rotate(0deg) scale(1) skew(0deg, 0deg) translate3d(0px, 0px, 0px);
			-webkit-perspective: 1000px;
			perspective: 1000px;
			transition: 0.3s;
		}
		.animation_box img {
			transform: rotate(0deg) scale(1) skew(0deg, 0deg) translate3d(0px, 0px, 0px);
			z-index: initial;
		}
		.animation_box img:hover {
			transform: rotate(0deg) scale(1) skew(0deg, 0deg) translate3d(0px, 0px, 0px);
			-webkit-perspective: 1000px;
			perspective: 1000px;
			transition: 0.3s;
		}
		// animation
		// 更多
		.news_more_view {
			.news_more_text {
			}
			.el-icon {
			}
		}
	}
	// 新闻资讯
	// 首页展示
	.homeList_view {

		.homeList_title {
		}
		// list
		// list
		// animation
		.animation_box {
			transform: rotate(0deg) scale(1) skew(0deg, 0deg) translate3d(0px, 0px, 0px);
			z-index: initial;
		}
		.animation_box:hover {
		}
		.animation_box img {
			transform: rotate(0deg) scale(1) skew(0deg, 0deg) translate3d(0px, 0px, 0px);
			z-index: initial;
		}
		.animation_box img:hover {
		}
		// animation
		// 更多
		.homeList_more_view {
			.homeList_more_text {
			}
		}
	}
	// 首页展示
</style>
<style>
.home_box {
    display: flex;
    flex-direction: column;
}

.homeList_view {
    order: 4;
}

.aboutUs_view {
    order: 2;
}

.recomList_view {
    order: 7;
}

.friendLink {
    order: 5;
}

.newsList_view {
    order: 3;
}

.systemInfo_view {
    order: 6;
}

.onlineMessage {
    order: 8;
}
.recomList_view {
    padding: 50px calc(50% - 600px);
    border-top: 3px dashed;
    position: relative;
}

.recomList_view img.recommend_img {
    width: 100%;
    height: 231px;
}

.recomList_view .recomList_title {
    background: url(http://clfile.zggen.cn/20250106/04f3ac7ad74746e7a5ddd05aafcb9694.webp);
    background-size: 100% 100%;
    color: var(--theme);
    font-size: 24px;
    margin-bottom: 30px;
    line-height: 44px;
    width: 350px;
    display: inline-block;
    text-align: center;
}

.recomList_view .recommend_list_one {
    display: flex;
    gap: 28px 35px;
    flex-wrap: wrap;
}

.recomList_view .recommend_content {
    background: rgba(248, 246, 240, 1);
    padding: 13px 9px;
    display: flex;
    flex-wrap: wrap;
}

.recomList_view .recommend_title {
    width: 0;
    overflow: hidden;
    white-space: nowrap;
    text-overflow: ellipsis;
    flex: 1;
}

.recomList_view .recommend_item {
    width: 212px;
}

.recomList_view .recommend_bottom {
    display: flex;
    justify-content: space-between;
    width: 100%;
}

.recomList_view .recommend_like {
    display: flex;
    align-items: center;
    color: var(--theme);
}

.recomList_view .recommend_collect {
    display: flex;
    align-items: center;
    color: rgba(255, 149, 49, 1);
}

.recomList_view .recommend_clickNum {
    display: flex;
    align-items: center;
    color: rgba(122, 196, 144, 1);
}

.recomList_view .recommend_price {
    line-height: 46px;
    background: var(--theme);
    color: #fff;
    width: 83px;
    text-align: center;
    position: relative;
    left: 9px;
    top: -13px;
}

.recomList_view .recommend_more_view {
    position: absolute;
    top: 54px;
    width: 139px;
    height: 37px;
    background: #E07D6C;
    display: flex;
    align-items: center;
    justify-content: center;
    color: #fff;
    border-radius: 20px;
    right: calc(50% - 600px);
}
.newsList_view {
    background-size: 100% 100%,100% 100%;
    background-position: 30% 0,30% 0;
    padding: 20px calc(50% - 600px) 50px;
    position: relative;
    border-top: 2px dashed;
}

.newsList_view .newtitle {
    font-size: 22px;
    color: var(--theme);
    margin-bottom: 70px;
    display: flex;
    justify-content: space-between;
    align-items: center;
}

.newsList_view .item0 img {
    object-fit: cover;
    position: absolute;
    left: 100px;
    top: 0;
    width: 420px;
    height: 420px;
    border-radius: 50%;
    opacity: 0.7;
}

.newsList_view .item {
    cursor: pointer;
    background: #fff;
    border: 1px solid #D7D7D7;
}

.newsList_view .list {
    display: grid;
    grid-template-columns: 470px 346px 346px;
    gap: 18px;
    color: #000;
}

.newsList_view .item0 .time {
    color: #000;
    white-space: nowrap;
    width: 120px;
    line-height: 30px;
    font-size: 14px;
    background: #fff;
}
.newsList_view .item .time {
    font-size: 14px;
    white-space: nowrap;
    padding: 0 18px;
    color: #000;
    border-bottom: 3px solid #D8D8D8;
}

.newsList_view .year {
    font-weight: 400;
    font-size: 12px;
    text-align: right;
    color: #999;
}

.newsList_view .item .title {
    font-size: 16px;
    white-space: nowrap;
    overflow: hidden;
    text-overflow: ellipsis;
    margin-top: 20px;
    padding: 0 18px;
}

.newsList_view .item .info {
    font-size: 14px;
    color: #999;
    width: 100%;
    margin: 20px 0;
    display: -webkit-box;
    overflow: hidden;
    text-overflow: ellipsis;
    -webkit-line-clamp: 2;
    -webkit-box-orient: vertical;
    padding: 0 18px;
}

.newsList_view .item .infobox {
    display: flex;
    flex-direction: column;
    width: 100%;
}

.newsList_view .item0 {
    position: relative;
    max-width: none;
    background: none;
    display: flex;
    column-gap: 20px;
    align-items: center;
    cursor: pointer;
    width: 471px;
    height: 92px;
    border: 1px solid #D7D7D7;
}

.newsList_view .item0 .info {
    margin: 20px 0;
    color: #999;
}

.newsList_view .item0 .title {
    font-size: 16px;
    line-height: 1.5em;
    color: #000;
    white-space: nowrap;
    overflow: hidden;
    text-overflow: ellipsis;
}

.newsList_view .to {
    font-size: 30px;
    line-height: 10px;
    color: #999;
}

.newsList_view .nmore {
    width: 150px;
    text-align: center;
    border: 1px solid var(--theme);
    line-height: 36px;
    color: #fff;
    background: var(--theme);
    font-size: 18px;
    border-radius: 20px;
}

.newsList_view .in {
    background: url(http://clfile.zggen.cn/20250106/04f3ac7ad74746e7a5ddd05aafcb9694.webp);
    background-size: 100% 100%;
    line-height: 44px;
    width: 350px;
    display: inline-block;
    text-align: center;
}

.newsList_view .imgbox {
    background: url(http://clfile.zggen.cn/20250106/358d2f563cfe4fc699ed9587d65db8e9.webp);
    background-size: 100% 100%;
    width: 92px;
    height: 100%;flex-shrink: 0;
}

.newsList_view .item0 .infobox {
    z-index: 1;
    flex: 1;
    width: 0;
}

.newsList_view .item img {
    object-fit: cover;
    border-radius: 0;
    width: 346px;
    height: 231px;
}

.newsList_view .list1 {
    display: flex;
    flex-direction: column;
    row-gap: 18px;
}

.newsList_view span.time_in {
    line-height: 30px;
    position: relative;
    display: inline-block;
}

.newsList_view span.time_in:after {
    height: 3px;
    background: var(--theme);
    position: absolute;
    content: '';
    bottom: -3px;
    left: 0;
    width: 100%;
}
</style>