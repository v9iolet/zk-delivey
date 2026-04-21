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
				<el-col :span="12">
					<el-form-item label="封面" prop="fengmian">
						<uploads
							:disabled="!isAdd||disabledForm.fengmian?true:false"
							action="file/upload" 
							tip="请上传封面"
							style="width: 100%;text-align: left;"
							:fileUrls="form.fengmian?form.fengmian:''" 
							@change="fengmianUploadSuccess">
						</uploads>
					</el-form-item>
				</el-col>
				<el-col :span="24">
					<el-form-item label="服务名称" prop="fuwumingcheng">
						<el-input class="list_inp"
                                  v-model="form.fuwumingcheng"
                                  placeholder="服务名称"
                                  type="text"
							      :readonly="!isAdd||disabledForm.fuwumingcheng?true:false" />
					</el-form-item>
				</el-col>

				<el-col :span="24">
					<el-form-item label="服务类型" prop="fuwuleixing">
						<el-input class="list_inp"
                                  v-model="form.fuwuleixing"
                                  placeholder="服务类型"
                                  type="text"
							      :readonly="!isAdd||disabledForm.fuwuleixing?true:false" />
					</el-form-item>
				</el-col>

				<el-col :span="24">
					<el-form-item label="服务价格" prop="fuwujiage">
						<el-input class="list_inp"
                                  v-model.number="form.fuwujiage"
                                  placeholder="服务价格"
                                  type="number"
							      :readonly="!isAdd||disabledForm.fuwujiage?true:false" />
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

				<el-col :span="24">
					<el-form-item label="联系方式" prop="lianxifangshi">
						<el-input class="list_inp"
                                  v-model="form.lianxifangshi"
                                  placeholder="联系方式"
                                  type="text"
							      :readonly="!isAdd||disabledForm.lianxifangshi?true:false" />
					</el-form-item>
				</el-col>

				<el-col :span="24">
					<el-form-item label="订单编号" prop="dingdanbianhao">
						<el-input class="list_inp"
                                  v-model="form.dingdanbianhao"
                                  placeholder="订单编号"
                                  type="text"
							      :readonly="!isAdd||disabledForm.dingdanbianhao?true:false" />
					</el-form-item>
				</el-col>

				<el-col :span="24">
					<el-form-item label="下单账号" prop="xiadanzhanghao">
						<el-input class="list_inp"
                                  v-model="form.xiadanzhanghao"
                                  placeholder="下单账号"
                                  type="text"
							      :readonly="!isAdd||disabledForm.xiadanzhanghao?true:false" />
					</el-form-item>
				</el-col>

				<el-col :span="24">
					<el-form-item label="下单人" prop="xiadanren">
						<el-input class="list_inp"
                                  v-model="form.xiadanren"
                                  placeholder="下单人"
                                  type="text"
							      :readonly="!isAdd||disabledForm.xiadanren?true:false" />
					</el-form-item>
				</el-col>

				<el-col :span="24">
					<el-form-item label="联系电话" prop="lianxidianhua">
						<el-input class="list_inp"
                                  v-model="form.lianxidianhua"
                                  placeholder="联系电话"
                                  type="text"
							      :readonly="!isAdd||disabledForm.lianxidianhua?true:false" />
					</el-form-item>
				</el-col>

				<el-col :span="24">
					<el-form-item label="货物名称" prop="huowumingcheng">
						<el-input class="list_inp"
                                  v-model="form.huowumingcheng"
                                  placeholder="货物名称"
                                  type="text"
							      :readonly="!isAdd||disabledForm.huowumingcheng?true:false" />
					</el-form-item>
				</el-col>

				<el-col :span="24">
					<el-form-item label="发货地址" prop="fahuodizhi">
						<el-input class="list_inp"
                                  v-model="form.fahuodizhi"
                                  placeholder="发货地址"
                                  type="text"
							      :readonly="!isAdd||disabledForm.fahuodizhi?true:false" />
					</el-form-item>
				</el-col>

				<el-col :span="24">
					<el-form-item label="收货地址" prop="shouhuodizhi">
						<el-input class="list_inp"
                                  v-model="form.shouhuodizhi"
                                  placeholder="收货地址"
                                  type="text"
							      :readonly="!isAdd||disabledForm.shouhuodizhi?true:false" />
					</el-form-item>
				</el-col>

				<el-col :span="24">
					<el-form-item label="收件人姓名" prop="shoujianrenxingming">
						<el-input class="list_inp"
                                  v-model="form.shoujianrenxingming"
                                  placeholder="收件人姓名"
                                  type="text"
							      :readonly="!isAdd||disabledForm.shoujianrenxingming?true:false" />
					</el-form-item>
				</el-col>

				<el-col :span="24">
					<el-form-item label="手机号码" prop="shoujihaoma">
						<el-input class="list_inp"
                                  v-model="form.shoujihaoma"
                                  placeholder="手机号码"
                                  type="text"
							      :readonly="!isAdd||disabledForm.shoujihaoma?true:false" />
					</el-form-item>
				</el-col>

				<el-col :span="24">
					<el-form-item label="分配时间" prop="fenpeishijian">
						<el-date-picker
							class="list_date"
							v-model="form.fenpeishijian"
							format="YYYY-MM-DD HH:mm:ss"
							value-format="YYYY-MM-DD HH:mm:ss"
							type="datetime"
							style="width:100%;"
							:readonly="!isAdd||disabledForm.fenpeishijian?true:false"
							placeholder="请选择分配时间" />
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
					<el-form-item label="订单状态" prop="dingdanzhuangtai">
						<el-select
							class="list_sel"
							:disabled="!isAdd||disabledForm.dingdanzhuangtai?true:false"
							v-model="form.dingdanzhuangtai" 
							placeholder="请选择订单状态"
							style="width:100%;"
							>
							<el-option v-for="(item,index) in dingdanzhuangtaiLists" :label="item"
								:value="item"
								>
							</el-option>
						</el-select>
					</el-form-item>
				</el-col>
				<el-col :span="24">
					<el-form-item label="货物描述" prop="huowumiaoshu">
						<el-input v-model="form.huowumiaoshu" placeholder="货物描述" type="textarea"
						:readonly="!isAdd||disabledForm.huowumiaoshu?true:false"
						/>
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
	const tableName = 'dingdanfenpei'
	const formName = '订单分配'
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
		fengmian: '',
		fuwumingcheng: '',
		fuwuleixing: '',
		fuwujiage: 0,
		gongsizhanghao: '',
		gongsimingcheng: '',
		lianxifangshi: '',
		dingdanbianhao: '',
		xiadanzhanghao: '',
		xiadanren: '',
		lianxidianhua: '',
		huowumingcheng: '',
		fahuodizhi: '',
		shouhuodizhi: '',
		huowumiaoshu: '',
		shoujianrenxingming: '',
		shoujihaoma: '',
		fenpeishijian: '',
		kuaidiyuanzhanghao: '',
		kuaidiyuanxingming: '',
		dingdanzhuangtai: '未配送',
	})
	const formRef = ref(null)
	const id = ref(0)
	const type = ref('')
	const disabledForm = ref({
		fengmian : false,
		fuwumingcheng : false,
		fuwuleixing : false,
		fuwujiage : false,
		gongsizhanghao : false,
		gongsimingcheng : false,
		lianxifangshi : false,
		dingdanbianhao : false,
		xiadanzhanghao : false,
		xiadanren : false,
		lianxidianhua : false,
		huowumingcheng : false,
		fahuodizhi : false,
		shouhuodizhi : false,
		huowumiaoshu : false,
		shoujianrenxingming : false,
		shoujihaoma : false,
		fenpeishijian : false,
		kuaidiyuanzhanghao : false,
		kuaidiyuanxingming : false,
		dingdanzhuangtai : false,
	})
	const isAdd = ref(false)
	//表单验证
	const rules = ref({
		fengmian: [
			{required: true,message: '请输入',trigger: 'blur'}, 
		],
		fuwumingcheng: [
			{required: true,message: '请输入',trigger: 'blur'}, 
		],
		fuwuleixing: [
		],
		fuwujiage: [
			{ validator: context.$toolUtil.validator.number, trigger: 'blur' },
		],
		gongsizhanghao: [
		],
		gongsimingcheng: [
		],
		lianxifangshi: [
		],
		dingdanbianhao: [
		],
		xiadanzhanghao: [
		],
		xiadanren: [
		],
		lianxidianhua: [
			{ validator: context.$toolUtil.validator.mobile, trigger: 'blur' },
		],
		huowumingcheng: [
		],
		fahuodizhi: [
		],
		shouhuodizhi: [
		],
		huowumiaoshu: [
		],
		shoujianrenxingming: [
		],
		shoujihaoma: [
		],
		fenpeishijian: [
		],
		kuaidiyuanzhanghao: [
		],
		kuaidiyuanxingming: [
		],
		dingdanzhuangtai: [
		],
	})
	//封面上传回调
	const fengmianUploadSuccess=(e)=>{
		form.value.fengmian = e
	}
	//快递员账号列表
	const kuaidiyuanzhanghaoLists = ref([])
	//订单状态列表
	const dingdanzhuangtaiLists = ref([])
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
			form.value.fenpeishijian = context?.$toolUtil.getCurDateTime()
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
				if(x=='fengmian'){
					form.value.fengmian = row[x];
					disabledForm.value.fengmian = true;
					continue;
				}
				if(x=='fuwumingcheng'){
					form.value.fuwumingcheng = row[x];
					disabledForm.value.fuwumingcheng = true;
					continue;
				}
				if(x=='fuwuleixing'){
					form.value.fuwuleixing = row[x];
					disabledForm.value.fuwuleixing = true;
					continue;
				}
				if(x=='fuwujiage'){
					form.value.fuwujiage = row[x];
					disabledForm.value.fuwujiage = true;
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
				if(x=='lianxifangshi'){
					form.value.lianxifangshi = row[x];
					disabledForm.value.lianxifangshi = true;
					continue;
				}
				if(x=='dingdanbianhao'){
					form.value.dingdanbianhao = row[x];
					disabledForm.value.dingdanbianhao = true;
					continue;
				}
				if(x=='xiadanzhanghao'){
					form.value.xiadanzhanghao = row[x];
					disabledForm.value.xiadanzhanghao = true;
					continue;
				}
				if(x=='xiadanren'){
					form.value.xiadanren = row[x];
					disabledForm.value.xiadanren = true;
					continue;
				}
				if(x=='lianxidianhua'){
					form.value.lianxidianhua = row[x];
					disabledForm.value.lianxidianhua = true;
					continue;
				}
				if(x=='huowumingcheng'){
					form.value.huowumingcheng = row[x];
					disabledForm.value.huowumingcheng = true;
					continue;
				}
				if(x=='fahuodizhi'){
					form.value.fahuodizhi = row[x];
					disabledForm.value.fahuodizhi = true;
					continue;
				}
				if(x=='shouhuodizhi'){
					form.value.shouhuodizhi = row[x];
					disabledForm.value.shouhuodizhi = true;
					continue;
				}
				if(x=='huowumiaoshu'){
					form.value.huowumiaoshu = row[x];
					disabledForm.value.huowumiaoshu = true;
					continue;
				}
				if(x=='shoujianrenxingming'){
					form.value.shoujianrenxingming = row[x];
					disabledForm.value.shoujianrenxingming = true;
					continue;
				}
				if(x=='shoujihaoma'){
					form.value.shoujihaoma = row[x];
					disabledForm.value.shoujihaoma = true;
					continue;
				}
				if(x=='fenpeishijian'){
					form.value.fenpeishijian = row[x];
					disabledForm.value.fenpeishijian = true;
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
				if(x=='dingdanzhuangtai'){
					form.value.dingdanzhuangtai = row[x];
					disabledForm.value.dingdanzhuangtai = true;
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
			form.value.dingdanzhuangtai='未配送'
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
			if(json.hasOwnProperty('lianxifangshi') && context?.$toolUtil.storageGet("frontRole")!="管理员"){
				form.value.lianxifangshi = json.lianxifangshi
				disabledForm.value.lianxifangshi = true;
			}
			if(context?.$toolUtil.storageGet("frontRole")!="管理员") {
				disabledForm.value.dingdanzhuangtai = true;
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
		dingdanzhuangtaiLists.value = "已配送,未配送".split(',')
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
		if(form.value.fengmian!=null) {
			form.value.fengmian = form.value.fengmian.replace(new RegExp(context?.$config.url,"g"),"");
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
				// 长文本
				.el-textarea__inner {
				}
				//图片上传样式
				.el-upload-list  {
					//提示语
					.el-upload__tip {
					}
					//外部盒子
					.el-upload--picture-card {
						//图标
						.el-icon{
						}
					}
					.el-upload-list__item {
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




.edit_view .add_form .el-form-item .el-form-item__content .el-textarea{border: 1px solid rgba(226, 227, 229, 1);}
.edit_view .add_form .el-form-item .el-form-item__content .el-textarea .el-textarea__inner{
    width: 100%;
    min-height: 150px;
    padding: 12px;
    border: 1px solid rgba(255, 255, 255, 1);
    border-radius: 0px;
    color: #666;
    font-size: 16px;
}


.edit_view .add_form .el-form-item .el-form-item__content .el-upload--picture-card{
    background-color: rgb(255, 255, 255);
    width: 100px;
    height: 90px;
    line-height: 100px;
    text-align: center;
    
    border-radius: 0px;
    cursor: pointer;
}

.edit_view .add_form .el-form-item .el-form-item__content .el-upload--picture-card .el-icon{
    font-size: 32px;
    color: #999;
}

.edit_view .add_form .el-form-item .el-form-item__content .img-uploader .el-upload__tip{
    font-size: 15px;
    color: #666;
    margin: 0;
}



</style>