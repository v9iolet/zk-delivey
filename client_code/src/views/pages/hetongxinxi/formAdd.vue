<template>
	<div class="edit_view" :style='{}'>
        <div class="breadcrumb-wrapper" style="width: 100%;">
            <div class="bread_view">
                <el-breadcrumb separator="—" class="breadcrumb">
                    <el-breadcrumb-item class="first_breadcrumb" :to="{ path: '/' }">首页</el-breadcrumb-item>
                    <el-breadcrumb-item class="second_breadcrumb" v-for="(item,index) in breadList" :key="index">{{item.name}}</el-breadcrumb-item>
                </el-breadcrumb>
            </div>
        </div>
		<el-form ref="formRef" :model="form" class="add_form" label-width="120px" :rules="rules">
			<el-row>
				<el-col :span="24">
					<el-form-item label="合同编号" prop="hetongbianhao">
						<el-input class="list_inp" v-model="form.hetongbianhao" placeholder="请输入合同编号" readonly></el-input>
					</el-form-item>
				</el-col>
				<el-col :span="24">
					<el-form-item label="合同名称" prop="hetongmingcheng">
						<el-input class="list_inp"
                                  v-model="form.hetongmingcheng"
                                  placeholder="合同名称"
                                  type="text"
							      :readonly="!isAdd||disabledForm.hetongmingcheng?true:false" />
					</el-form-item>
				</el-col>

				<el-col :span="24">
					<el-form-item label="合同类型" prop="hetongleixing">
						<el-input class="list_inp"
                                  v-model="form.hetongleixing"
                                  placeholder="合同类型"
                                  type="text"
							      :readonly="!isAdd||disabledForm.hetongleixing?true:false" />
					</el-form-item>
				</el-col>

				<el-col :span="12">
					<el-form-item label="合同文件" prop="hetongwenjian">
						<uploads
							:disabled="!isAdd||disabledForm.hetongwenjian?true:false"
							type="file"
							action="file/upload" 
							tip="请上传合同文件" 
							:limit="1" 
							style="width: 100%;text-align: left;"
							:fileUrls="form.hetongwenjian?form.hetongwenjian:''" 
							@change="hetongwenjianUploadSuccess">
						</uploads>
					</el-form-item>
				</el-col>
				<el-col :span="24">
					<el-form-item label="签订时间" prop="qiandingshijian">
						<el-date-picker
							class="list_date"
							v-model="form.qiandingshijian"
							format="YYYY 年 MM 月 DD 日"
							value-format="YYYY-MM-DD"
							type="datetime"
							:readonly="!isAdd||disabledForm.qiandingshijian?true:false"
							placeholder="请选择签订时间"
							style="width: 100%;" />
					</el-form-item>
				</el-col>
				<el-col :span="24">
					<el-form-item label="终止时间" prop="zhongzhishijian">
						<el-date-picker
							class="list_date"
							v-model="form.zhongzhishijian"
							format="YYYY 年 MM 月 DD 日"
							value-format="YYYY-MM-DD"
							type="datetime"
							:readonly="!isAdd||disabledForm.zhongzhishijian?true:false"
							placeholder="请选择终止时间"
							style="width: 100%;" />
					</el-form-item>
				</el-col>
				<el-col :span="24">
					<el-form-item label="快递员账号" prop="kuaidiyuanzhanghao">
						<el-select
							class="list_sel"
							:disabled="!isAdd||disabledForm.kuaidiyuanzhanghao?true:false"
							v-model="form.kuaidiyuanzhanghao" 
							placeholder="请选择快递员账号"
							style="width:100%;"
							@change="kuaidiyuanzhanghaoChange">
							<el-option v-for="(item,index) in kuaidiyuanzhanghaoLists" :label="item" :value="item">
							</el-option>
						</el-select>
					</el-form-item>
				</el-col>
				<el-col :span="24">
					<el-form-item label="快递员姓名" prop="kuaidiyuanxingming">
						<el-input class="list_inp"
                                  v-model="form.kuaidiyuanxingming"
                                  placeholder="快递员姓名"
                                  type="text"
							      :readonly="!isAdd||disabledForm.kuaidiyuanxingming?true:false" />
					</el-form-item>
				</el-col>

				<el-col :span="24">
					<el-form-item label="确认时间" prop="querenshijian">
						<el-date-picker
							class="list_date"
							v-model="form.querenshijian"
							format="YYYY-MM-DD HH:mm:ss"
							value-format="YYYY-MM-DD HH:mm:ss"
							type="datetime"
							style="width:100%;"
							:readonly="!isAdd||disabledForm.querenshijian?true:false"
							placeholder="请选择确认时间" />
					</el-form-item>
				</el-col>
				<el-col :span="24">
					<el-form-item label="合同状态" prop="hetongzhuangtai">
						<el-select
							class="list_sel"
							:disabled="!isAdd||disabledForm.hetongzhuangtai?true:false"
							v-model="form.hetongzhuangtai" 
							placeholder="请选择合同状态"
							style="width:100%;"
							>
							<el-option v-for="(item,index) in hetongzhuangtaiLists" :label="item"
								:value="item"
								>
							</el-option>
						</el-select>
					</el-form-item>
				</el-col>
				<el-col :span="24">
					<el-form-item label="公司账号" prop="gongsizhanghao">
						<el-input class="list_inp"
                                  v-model="form.gongsizhanghao"
                                  placeholder="公司账号"
                                  type="text"
							      :readonly="!isAdd||disabledForm.gongsizhanghao?true:false" />
					</el-form-item>
				</el-col>

				<el-col :span="24">
					<el-form-item label="公司名称" prop="gongsimingcheng">
						<el-input class="list_inp"
                                  v-model="form.gongsimingcheng"
                                  placeholder="公司名称"
                                  type="text"
							      :readonly="!isAdd||disabledForm.gongsimingcheng?true:false" />
					</el-form-item>
				</el-col>

			</el-row>
			<div class="formModel_btn_box">
				<el-button class="formModel_cancel" @click="backClick">取消</el-button>
				<el-button class="formModel_confirm"
                           @click="save"
                           type="success"
				>
					保存
				</el-button>
			</div>
		</el-form>
	</div>
</template>
<script setup>
	import {
		ref,
		getCurrentInstance,
		watch,
		onUnmounted,
		onMounted,
		nextTick,
		computed
	} from 'vue';
	import {
		useRoute,
		useRouter
	} from 'vue-router';
    import moment from "moment";
	const context = getCurrentInstance()?.appContext.config.globalProperties;
	const route = useRoute()
	const router = useRouter()
	//基础信息
	const tableName = 'hetongxinxi'
	const formName = '合同信息'
	//基础信息
	const breadList = ref([{
		name: formName
	}])
	//获取唯一标识
	const getUUID =()=> {
      return new Date().getTime();
    }
	//form表单
	const form = ref({
		hetongbianhao: getUUID(),
		hetongmingcheng: '',
		hetongleixing: '',
		hetongwenjian: '',
		qiandingshijian: '',
		zhongzhishijian: '',
		kuaidiyuanzhanghao: '',
		kuaidiyuanxingming: '',
		querenshijian: '',
		hetongzhuangtai: '',
		gongsizhanghao: '',
		gongsimingcheng: '',
	})
	const formRef = ref(null)
	const id = ref(0)
	const type = ref('')
	const disabledForm = ref({
		hetongbianhao : false,
		hetongmingcheng : false,
		hetongleixing : false,
		hetongwenjian : false,
		qiandingshijian : false,
		zhongzhishijian : false,
		kuaidiyuanzhanghao : false,
		kuaidiyuanxingming : false,
		querenshijian : false,
		hetongzhuangtai : false,
		gongsizhanghao : false,
		gongsimingcheng : false,
	})
	const isAdd = ref(false)
	//表单验证
	const rules = ref({
		hetongbianhao: [
		],
		hetongmingcheng: [
		],
		hetongleixing: [
		],
		hetongwenjian: [
		],
		qiandingshijian: [
		],
		zhongzhishijian: [
		],
		kuaidiyuanzhanghao: [
		],
		kuaidiyuanxingming: [
		],
		querenshijian: [
		],
		hetongzhuangtai: [
		],
		gongsizhanghao: [
		],
		gongsimingcheng: [
		],
	})
	//合同文件上传回调
	const hetongwenjianUploadSuccess=(e)=>{
		form.value.hetongwenjian = e
	}
	//快递员账号列表
	const kuaidiyuanzhanghaoLists = ref([])
	//合同状态列表
	const hetongzhuangtaiLists = ref([])
	//methods

	//methods
	//获取info
	const getInfo = ()=>{
		context?.$http({
			url: `${tableName}/info/${id.value}`,
			method: 'get'
		}).then(res => {
			let reg=new RegExp('../../../file','g')
			form.value = res.data.data
		})
	}
	const crossRow = ref('')
	const crossTable = ref('')
	const crossTips = ref('')
	const crossColumnName = ref('')
	const crossColumnValue = ref('')
	//初始化
	const init = (formId=null,formType='add',formNames='',row=null,table=null,statusColumnName=null,tips=null,statusColumnValue=null) => {
			form.value.querenshijian = context?.$toolUtil.getCurDateTime()
		if(formId){
			id.value = formId
			type.value = formType
		}
		if(formType == 'add'){
			isAdd.value = true
		}else if(formType == 'info'){
			isAdd.value = false
			getInfo()
		}else if(formType == 'edit'){
			isAdd.value = true
			getInfo()
		}
		else if(formType == 'cross'){
			isAdd.value = true
			// getInfo()
			for(let x in row){
				if(x=='hetongbianhao'){
					form.value.hetongbianhao = row[x];
					disabledForm.value.hetongbianhao = true;
					continue;
				}
				if(x=='hetongmingcheng'){
					form.value.hetongmingcheng = row[x];
					disabledForm.value.hetongmingcheng = true;
					continue;
				}
				if(x=='hetongleixing'){
					form.value.hetongleixing = row[x];
					disabledForm.value.hetongleixing = true;
					continue;
				}
				if(x=='hetongwenjian'){
					form.value.hetongwenjian = row[x];
					disabledForm.value.hetongwenjian = true;
					continue;
				}
				if(x=='qiandingshijian'){
					form.value.qiandingshijian = row[x];
					disabledForm.value.qiandingshijian = true;
					continue;
				}
				if(x=='zhongzhishijian'){
					form.value.zhongzhishijian = row[x];
					disabledForm.value.zhongzhishijian = true;
					continue;
				}
				if(x=='kuaidiyuanzhanghao'){
					form.value.kuaidiyuanzhanghao = row[x];
					disabledForm.value.kuaidiyuanzhanghao = true;
					continue;
				}
				if(x=='kuaidiyuanxingming'){
					form.value.kuaidiyuanxingming = row[x];
					disabledForm.value.kuaidiyuanxingming = true;
					continue;
				}
				if(x=='querenshijian'){
					form.value.querenshijian = row[x];
					disabledForm.value.querenshijian = true;
					continue;
				}
				if(x=='hetongzhuangtai'){
					form.value.hetongzhuangtai = row[x];
					disabledForm.value.hetongzhuangtai = true;
					continue;
				}
				if(x=='gongsizhanghao'){
					form.value.gongsizhanghao = row[x];
					disabledForm.value.gongsizhanghao = true;
					continue;
				}
				if(x=='gongsimingcheng'){
					form.value.gongsimingcheng = row[x];
					disabledForm.value.gongsimingcheng = true;
					continue;
				}
			}
			if(row){
				crossRow.value = row
			}
			if(table){
				crossTable.value = table
			}
			if(tips){
				crossTips.value = tips
			}
			if(statusColumnName){
				crossColumnName.value = statusColumnName
			}
			if(statusColumnValue){
				crossColumnValue.value = statusColumnValue
			}
		}
		context?.$http({
			url: `${context?.$toolUtil.storageGet('frontSessionTable')}/session`,
			method: 'get'
		}).then(res => {
			var json = res.data.data
			if(json.hasOwnProperty('gongsizhanghao') && context?.$toolUtil.storageGet("frontRole")!="管理员"){
				form.value.gongsizhanghao = json.gongsizhanghao
				disabledForm.value.gongsizhanghao = true;
			}
			if(json.hasOwnProperty('gongsimingcheng') && context?.$toolUtil.storageGet("frontRole")!="管理员"){
				form.value.gongsimingcheng = json.gongsimingcheng
				disabledForm.value.gongsimingcheng = true;
			}
            if (localStorage.getItem('autoSave')) {
                localStorage.removeItem('autoSave')
                save()
            }
		})
		context?.$http({
			url: `option/kuaidiyuan/kuaidiyuanzhanghao`,
			method: 'get'
		}).then(res=>{
			kuaidiyuanzhanghaoLists.value = res.data.data
		})
		//由上级字段带出不可改
		disabledForm.value.kuaidiyuanxingming = true;
		hetongzhuangtaiLists.value = "生效中,终止".split(',')
	}
	//初始化
	//取消
	const backClick = () => {
		history.back()
	}
	//快递员账号回调
	const kuaidiyuanzhanghaoChange=()=>{
		context?.$http({
			url: `follow/kuaidiyuan/kuaidiyuanzhanghao?columnValue=` + form.value.kuaidiyuanzhanghao,
			method: 'get'
		}).then(res=>{
			//带出快递员姓名字段
			if(res.data.data.kuaidiyuanxingming){
				form.value.kuaidiyuanxingming = res.data.data.kuaidiyuanxingming
			}
		})
	}
	//提交
	const save=()=>{
		if(form.value.hetongwenjian!=null) {
			form.value.hetongwenjian = form.value.hetongwenjian.replace(new RegExp(context?.$config.url,"g"),"");
		}
		var table = crossTable.value
		var objcross = JSON.parse(JSON.stringify(crossRow.value))
		let crossUserId = ''
		let crossRefId = ''
		let crossOptNum = ''
		if(type.value == 'cross'){
			if(crossColumnName.value!=''){
				if(!crossColumnName.value.startsWith('[')){
					for(let o in objcross){
						if(o == crossColumnName.value){
							objcross[o] = crossColumnValue.value
						}
					}
					//修改跨表数据
					changeCrossData(objcross)
				}else{
					crossUserId = context?.$toolUtil.storageGet('userid')
					crossRefId = objcross['id']
					crossOptNum = crossColumnName.value.replace(/\[/,"").replace(/\]/,"")
				}
			}
		}
		formRef.value.validate((valid)=>{
			if(valid){
				if(crossUserId&&crossRefId){
					form.value.crossuserid = crossUserId
					form.value.crossrefid = crossRefId
					let params = {
						page: 1,
						limit: 1000, 
						crossuserid:form.value.crossuserid,
						crossrefid:form.value.crossrefid,
					}
					context?.$http({
						url: `${tableName}/page`,
						method: 'get', 
						params: params 
					}).then(res=>{
						if(res.data.data.total>=crossOptNum){
							context?.$toolUtil.message(`${crossTips.value}`,'error')
							return false
						}else{
							context?.$http({
								url: `${tableName}/${!form.value.id ? "save" : "update"}`,
								method: 'post', 
								data: form.value 
							}).then(res=>{
                                context?.$toolUtil.message(`操作成功`,'success')
                                history.back()
							})
						}
					})
				}else{
					context?.$http({
						url: `${tableName}/${!form.value.id ? "save" : "update"}`,
						method: 'post', 
						data: form.value 
					}).then(res=>{
                        context?.$toolUtil.message(`操作成功`,'success')
                        history.back()
					})
				}
			}
		})
	}
	//修改跨表数据
	const changeCrossData=(row)=>{
        if(type.value == 'cross'){
            context?.$http({
                url: `${crossTable.value}/update`,
                method: 'post',
                data: row
            }).then(res=>{})
        }
	}
	onMounted(()=>{
		type.value = route.query.type?route.query.type:'add'
		let row = null
		let table = null
		let statusColumnName = null
		let tips = null
		let statusColumnValue = null
		if(type.value == 'cross'){
			row = context?.$toolUtil.storageGet('crossObj')?JSON.parse(context?.$toolUtil.storageGet('crossObj')):{}
			table = context?.$toolUtil.storageGet('crossTable')
			statusColumnName = context?.$toolUtil.storageGet('crossStatusColumnName')
			tips = context?.$toolUtil.storageGet('crossTips')
			statusColumnValue = context?.$toolUtil.storageGet('crossStatusColumnValue')
		}
		init(route.query.id?route.query.id:null, type.value,'', row, table, statusColumnName, tips, statusColumnValue)
	})
    onUnmounted(()=>{
        Object.keys(localStorage).map(item=>{
            if(item.startsWith('cross')){
                localStorage.removeItem(item)
            }
        })
    })
</script>
<style lang="scss" scoped>
	// 面包屑盒子
	.bread_view {
		:deep(.breadcrumb) {
			.el-breadcrumb__separator {
			}
			.first_breadcrumb {
				.el-breadcrumb__inner {
				}
			}
			.second_breadcrumb {
				.el-breadcrumb__inner {
				}
			}
		}
	}
	// 表单
	.add_form{
		// form item
		:deep(.el-form-item) {
			//label
			.el-form-item__label {
			}
			// 内容盒子
			.el-form-item__content {
				// 输入框
				.list_inp {

				}
				//日期选择器
				.list_date {
				}
				// 下拉框
				.list_sel {
					//去掉默认样式
					.select-trigger{
						height: 100%;
						.el-input{
							height: 100%;
						}
					}
				}
				//文件上传样式
				.upload-demo {
					width: 100%;
					//外部盒子
					.el-upload-dragger {
					}
					//图标
					.el-icon--upload {
					}
					//提示文字
					.el-upload__text {
						em {
						}
					}
					//提示文字
					.el-upload__tip {
					}
				}
			}
		}
	}
	// 按钮盒子
	.formModel_btn_box {
		.formModel_cancel {
		}
		.formModel_cancel:hover {
		}
		
		.formModel_confirm {
		}
		.formModel_confirm:hover {
		}
	}
</style>
<style>
.edit_view {
    margin: 20px auto;
    width: 1200px;
    position: relative;
    background: rgb(255, 255, 255);
    font-size:16px;
    color:#666;
}
.edit_view .add_form{
    width: 100%;
    padding: 30px 150px 30px 30px;
    border:1px solid #eee;
}
.edit_view .add_form .el-form-item{
    margin: 0px 0px 20px;
    display: flex;
}
.edit_view .add_form .el-form-item .el-form-item__label{
    width: 250px;
    background: none;
    text-align: right;
    display: block;
    font-size: 16px;
    color: rgb(51, 51, 51);
    font-weight: 500;
}
.edit_view .add_form .el-form-item .el-form-item__content{
    display: flex;
    justify-content: flex-start;
    align-items: center;
    flex-wrap: wrap;
    width: calc(100% - 120px);
}
.edit_view .add_form .el-form-item .el-form-item__content .list_inp{
    height: 36px;
    line-height: 36px;
    border: 1px solid rgba(226, 227, 229, 1);
    padding: 0px 10px;
    width: 100%;
    box-sizing: border-box;
    background: rgb(255, 255, 255);
    font-size: 16px;
}

.edit_view .add_form .el-form-item .el-form-item__content .list_sel{
    line-height: 36px;
    
    box-sizing: border-box;
    width: calc(100% - 120px);
    padding: 0px 10px;
    border-radius: 0px;
    background: rgb(255, 255, 255);
    font-size: 16px;
}

.edit_view .add_form .el-form-item .el-form-item__content .list_date{
    line-height: 36px;
    border: 1px solid rgba(226, 227, 229, 1);
    box-sizing: border-box;
    width: 100%;
    border-radius: 0px;
    background: rgb(255, 255, 255);
    font-size: 16px;
}






.edit_view .add_form .el-form-item .el-form-item__content .el-upload--text .el-upload-dragger{
    background-color: rgb(255, 255, 255);
    
    border-radius: 0px;
    box-sizing: border-box;
    width: 360px;
    height: 180px;
    text-align: center;
    cursor: pointer;
    overflow: hidden;
}

.edit_view .add_form .el-form-item .el-form-item__content .el-upload--text .el-upload-dragger .el-icon--upload{
    font-size: 67px;
    color: var(--theme);
    line-height: 50px;
}

.edit_view .add_form .el-form-item .el-form-item__content .upload-demo .el-upload__tip{
    font-size: 15px;
    color: #666;
    margin: 0px 0 0;
    line-height:1;
}

.edit_view .add_form .el-form-item .el-form-item__content .el-upload--text .el-upload-dragger em{
    color: var(--theme);
    font-size: 15px;
}


</style>