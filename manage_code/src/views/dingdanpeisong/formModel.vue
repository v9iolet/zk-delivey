<template>
	<div>
		<el-dialog modal-class="edit_form_modal" class="edit_form" v-model="formVisible" :title="formTitle" width="50%" destroy-on-close :fullscreen='false'>
			<el-form class="formModel_form" ref="formRef" :model="form" :rules="rules">
				<el-row >
					<el-col :span="24">
						<el-form-item prop="fengmian"
									  label="封面"
						>
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
							<el-input class="list_inp" v-model="form.fuwumingcheng" placeholder="服务名称"
                                type="text"
								:readonly="!isAdd||disabledForm.fuwumingcheng?true:false" />
						</el-form-item>
					</el-col>

					<el-col :span="24">
						<el-form-item label="服务类型" prop="fuwuleixing">
							<el-input class="list_inp" v-model="form.fuwuleixing" placeholder="服务类型"
                                type="text"
								:readonly="!isAdd||disabledForm.fuwuleixing?true:false" />
						</el-form-item>
					</el-col>

					<el-col :span="24">
						<el-form-item label="服务价格" prop="fuwujiage">
							<el-input class="list_inp" v-model.number="form.fuwujiage" placeholder="服务价格"
                                type="number"
                                @mousewheel.native.prevent
								:readonly="!isAdd||disabledForm.fuwujiage?true:false" />
						</el-form-item>
					</el-col>

					<el-col :span="24">
						<el-form-item label="公司账号" prop="gongsizhanghao">
							<el-input class="list_inp" v-model="form.gongsizhanghao" placeholder="公司账号"
                                type="text"
								:readonly="!isAdd||disabledForm.gongsizhanghao?true:false" />
						</el-form-item>
					</el-col>

					<el-col :span="24">
						<el-form-item label="公司名称" prop="gongsimingcheng">
							<el-input class="list_inp" v-model="form.gongsimingcheng" placeholder="公司名称"
                                type="text"
								:readonly="!isAdd||disabledForm.gongsimingcheng?true:false" />
						</el-form-item>
					</el-col>

					<el-col :span="24">
						<el-form-item label="联系方式" prop="lianxifangshi">
							<el-input class="list_inp" v-model="form.lianxifangshi" placeholder="联系方式"
                                type="text"
								:readonly="!isAdd||disabledForm.lianxifangshi?true:false" />
						</el-form-item>
					</el-col>

					<el-col :span="24">
						<el-form-item label="订单编号" prop="dingdanbianhao">
							<el-input class="list_inp" v-model="form.dingdanbianhao" placeholder="订单编号"
                                type="text"
								:readonly="!isAdd||disabledForm.dingdanbianhao?true:false" />
						</el-form-item>
					</el-col>

					<el-col :span="24">
						<el-form-item label="下单账号" prop="xiadanzhanghao">
							<el-input class="list_inp" v-model="form.xiadanzhanghao" placeholder="下单账号"
                                type="text"
								:readonly="!isAdd||disabledForm.xiadanzhanghao?true:false" />
						</el-form-item>
					</el-col>

					<el-col :span="24">
						<el-form-item label="下单人" prop="xiadanren">
							<el-input class="list_inp" v-model="form.xiadanren" placeholder="下单人"
                                type="text"
								:readonly="!isAdd||disabledForm.xiadanren?true:false" />
						</el-form-item>
					</el-col>

					<el-col :span="24">
						<el-form-item label="联系电话" prop="lianxidianhua">
							<el-input class="list_inp" v-model="form.lianxidianhua" placeholder="联系电话"
                                type="text"
								:readonly="!isAdd||disabledForm.lianxidianhua?true:false" />
						</el-form-item>
					</el-col>

					<el-col :span="24">
						<el-form-item label="货物名称" prop="huowumingcheng">
							<el-input class="list_inp" v-model="form.huowumingcheng" placeholder="货物名称"
                                type="text"
								:readonly="!isAdd||disabledForm.huowumingcheng?true:false" />
						</el-form-item>
					</el-col>

					<el-col :span="24">
						<el-form-item label="发货地址" prop="fahuodizhi">
							<el-input class="list_inp" v-model="form.fahuodizhi" placeholder="发货地址"
                                type="text"
								:readonly="!isAdd||disabledForm.fahuodizhi?true:false" />
						</el-form-item>
					</el-col>

					<el-col :span="24">
						<el-form-item label="收货地址" prop="shouhuodizhi">
							<el-input class="list_inp" v-model="form.shouhuodizhi" placeholder="收货地址"
                                type="text"
								:readonly="!isAdd||disabledForm.shouhuodizhi?true:false" />
						</el-form-item>
					</el-col>

					<el-col :span="24">
						<el-form-item label="收件人姓名" prop="shoujianrenxingming">
							<el-input class="list_inp" v-model="form.shoujianrenxingming" placeholder="收件人姓名"
                                type="text"
								:readonly="!isAdd||disabledForm.shoujianrenxingming?true:false" />
						</el-form-item>
					</el-col>

					<el-col :span="24">
						<el-form-item label="手机号码" prop="shoujihaoma">
							<el-input class="list_inp" v-model="form.shoujihaoma" placeholder="手机号码"
                                type="text"
								:readonly="!isAdd||disabledForm.shoujihaoma?true:false" />
						</el-form-item>
					</el-col>

					<el-col :span="24">
						<el-form-item label="配送时间" prop="peisongshijian">
							<el-date-picker
								class="list_date"
								v-model="form.peisongshijian"
								format="YYYY-MM-DD HH:mm:ss"
								value-format="YYYY-MM-DD HH:mm:ss"
								type="datetime"
								:readonly="!isAdd||disabledForm.peisongshijian?true:false"
								placeholder="请选择配送时间" />
						</el-form-item>
					</el-col>
					<el-col :span="24">
						<el-form-item label="快递员账号" prop="kuaidiyuanzhanghao">
							<el-input class="list_inp" v-model="form.kuaidiyuanzhanghao" placeholder="快递员账号"
                                type="text"
								:readonly="!isAdd||disabledForm.kuaidiyuanzhanghao?true:false" />
						</el-form-item>
					</el-col>

					<el-col :span="24">
						<el-form-item label="快递员姓名" prop="kuaidiyuanxingming">
							<el-input class="list_inp" v-model="form.kuaidiyuanxingming" placeholder="快递员姓名"
                                type="text"
								:readonly="!isAdd||disabledForm.kuaidiyuanxingming?true:false" />
						</el-form-item>
					</el-col>

					<el-col :span="24">
						<el-form-item label="当前位置" prop="dangqianweizhi">
							<el-input class="list_inp" v-model="form.dangqianweizhi" placeholder="当前位置"
                                type="text"
								:readonly="!isAdd||disabledForm.dangqianweizhi?true:false" />
						</el-form-item>
					</el-col>

					<el-col :span="24">
						<el-form-item label="订单状态" prop="dingdanzhuangtai">
							<el-select
								class="list_sel"
								:disabled="!isAdd||disabledForm.dingdanzhuangtai?true:false"
								v-model="form.dingdanzhuangtai" 
								placeholder="请选择订单状态"
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
			</el-form>
			<template #footer v-if="isAdd||type=='logistics'||type=='reply'">
				<span class="formModel_btn_box">
					<el-button class="cancel_btn" @click="closeClick">取消</el-button>
					<el-button class="confirm_btn" type="primary" @click="save"
						>
						提交
					</el-button>
				</span>
			</template>
		</el-dialog>
	</div>
</template>
<script setup>
	import {
		reactive,
		ref,
		getCurrentInstance,
		nextTick,
		computed,
		defineEmits
	} from 'vue'
    import {
        useStore
    } from 'vuex';
    const store = useStore()
    const user = computed(()=>store.getters['user/session'])
	const context = getCurrentInstance()?.appContext.config.globalProperties;	
	const emit = defineEmits(['formModelChange'])
	//基础信息
	const tableName = 'dingdanpeisong'
	const formName = '订单配送'
	//基础信息
	//form表单
	const form = ref({})
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
        peisongshijian : false,
        kuaidiyuanzhanghao : false,
        kuaidiyuanxingming : false,
        dangqianweizhi : false,
        dingdanzhuangtai : false,
	})
	const formVisible = ref(false)
	const isAdd = ref(false)
	const formTitle = ref('')
    
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
		peisongshijian: [
		],
		kuaidiyuanzhanghao: [
		],
		kuaidiyuanxingming: [
		],
		dangqianweizhi: [
		],
		dingdanzhuangtai: [
		],
	})
	//表单验证
	
	const formRef = ref(null)
	const id = ref(0)
	const type = ref('')
	//封面上传回调
	const fengmianUploadSuccess=(e)=>{
		form.value.fengmian = e
	}
	//订单状态列表
	const dingdanzhuangtaiLists = ref([])

	//获取唯一标识
	const getUUID =()=> {
      return new Date().getTime();
    }
	//重置
	const resetForm = () => {
		form.value = {
			fengmian: '',
			fuwumingcheng: '',
			fuwuleixing: '',
			fuwujiage: '',
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
			peisongshijian: '',
			kuaidiyuanzhanghao: '',
			kuaidiyuanxingming: '',
			dangqianweizhi: '',
			dingdanzhuangtai: '未送达',
		}
	}
	//获取info
	const getInfo = ()=>{
		context?.$http({
			url: `${tableName}/info/${id.value}`,
			method: 'get'
		}).then(res => {
			let reg=new RegExp('../../../file','g')
			form.value = res.data.data
			formVisible.value = true
		})
	}
	const crossRow = ref('')
	const crossTable = ref('')
	const crossTips = ref('')
	const crossColumnName = ref('')
	const crossColumnValue = ref('')
	//初始化
	const init=(formId=null,formType='add',formNames='',row=null,table=null,statusColumnName=null,tips=null,statusColumnValue=null)=>{
		resetForm()
			form.value.peisongshijian = context?.$toolUtil.getCurDateTime()
		if(formId){
			id.value = formId
			type.value = formType
		}
		if(formType == 'add'){
			isAdd.value = true
			formTitle.value = '新增' + formName
			formVisible.value = true
		}else if(formType == 'info'){
			isAdd.value = false
			formTitle.value = '查看' + formName
			getInfo()
		}else if(formType == 'edit'){
			isAdd.value = true
			formTitle.value = '修改' + formName
			getInfo()
		}
		else if(formType == 'cross'){
			isAdd.value = true
			formTitle.value = formNames
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
				if(x=='peisongshijian'){
					form.value.peisongshijian = row[x];
					disabledForm.value.peisongshijian = true;
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
				if(x=='dangqianweizhi'){
					form.value.dangqianweizhi = row[x];
					disabledForm.value.dangqianweizhi = true;
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
			form.value.dingdanzhuangtai='未送达'
			formVisible.value = true
		}

		context?.$http({
			url: `${context?.$toolUtil.storageGet('sessionTable')}/session`,
			method: 'get'
		}).then(res => {
			var json = res.data.data
			if(json.hasOwnProperty('gongsizhanghao')&& context?.$toolUtil.storageGet("role")!="管理员"){
				form.value.gongsizhanghao = json.gongsizhanghao
				disabledForm.value.gongsizhanghao = true;
			}
			if(json.hasOwnProperty('gongsimingcheng')&& context?.$toolUtil.storageGet("role")!="管理员"){
				form.value.gongsimingcheng = json.gongsimingcheng
				disabledForm.value.gongsimingcheng = true;
			}
			if(json.hasOwnProperty('lianxifangshi')&& context?.$toolUtil.storageGet("role")!="管理员"){
				form.value.lianxifangshi = json.lianxifangshi
				disabledForm.value.lianxifangshi = true;
			}
			if(context?.$toolUtil.storageGet("role")!="管理员" && !context?.$toolUtil.storageGet("isAdmin")) {
				disabledForm.value.dingdanzhuangtai = true;
			}
		})
		dingdanzhuangtaiLists.value = "已送达,未送达".split(',')
	}
	//初始化
	//声明父级调用
	defineExpose({
		init
	})
	//关闭
	const closeClick = () => {
		formVisible.value = false
	}
	//富文本
	const editorChange = (e,name) =>{
		form.value[name] = e
	}
	//提交
	const save= async ()=>{
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
					crossUserId = user.value.id
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
							}).then(async res=>{
								emit('formModelChange')
								context?.$toolUtil.message(`操作成功`,'success')
                                formVisible.value = false
							})
						}
					})
				}else{
					context?.$http({
						url: `${tableName}/${!form.value.id ? "save" : "update"}`,
						method: 'post', 
						data: form.value 
					}).then(async (res)=>{
						emit('formModelChange')
						context?.$toolUtil.message(`操作成功`,'success')
                        formVisible.value = false
					})
				}
			}else{
                context.$message.error('请完善信息')
            }
		})
	}
	//修改跨表数据
	const changeCrossData = async (row)=>{
        if(type.value == 'cross'){
            await context?.$http({
                url: `${crossTable.value}/update`,
                method: 'post',
                data: row
            }).then(res=>{})
        }
	}
</script>
<style lang="scss" scoped>
	// 表单
	.formModel_form{
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
		.cancel_btn {
		}
		.cancel_btn:hover {
		}
		
		.confirm_btn {
		}
		.confirm_btn:hover {
		}
	}
</style>
