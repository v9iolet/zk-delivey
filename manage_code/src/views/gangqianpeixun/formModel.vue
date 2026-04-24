<template>
	<div>
		<el-dialog modal-class="edit_form_modal" class="edit_form" v-model="formVisible" :title="formTitle" width="50%" destroy-on-close :fullscreen='false'>
			<el-form class="formModel_form" ref="formRef" :model="form" :rules="rules">
				<el-row >
					<el-col :span="24">
						<el-form-item label="培训主题" prop="peixunzhuti">
							<el-input class="list_inp" v-model="form.peixunzhuti" placeholder="培训主题"
                                type="text"
								:readonly="!isAdd||disabledForm.peixunzhuti?true:false" />
						</el-form-item>
					</el-col>

					<el-col :span="24">
						<el-form-item label="培训时间" prop="peixunshijian">
							<el-input class="list_inp" v-model="form.peixunshijian" placeholder="培训时间"
                                type="text"
								:readonly="!isAdd||disabledForm.peixunshijian?true:false" />
						</el-form-item>
					</el-col>

					<el-col :span="24">
						<el-form-item label="培训视频" prop="peixunshipin">
							<uploads
								:disabled="!isAdd||disabledForm.peixunshipin?true:false"
								type="file"
								action="file/upload" 
								tip="请上传培训视频" 
								:limit="1" 
								style="width: 100%;text-align: left;"
								:fileUrls="form.peixunshipin?form.peixunshipin:''" 
								@change="peixunshipinUploadSuccess">
							</uploads>
						</el-form-item>
					</el-col>
					<el-col :span="24">
						<el-form-item label="培训材料" prop="peixuncailiao">
							<uploads
								:disabled="!isAdd||disabledForm.peixuncailiao?true:false"
								type="file"
								action="file/upload" 
								tip="请上传培训材料" 
								:limit="1" 
								style="width: 100%;text-align: left;"
								:fileUrls="form.peixuncailiao?form.peixuncailiao:''" 
								@change="peixuncailiaoUploadSuccess">
							</uploads>
						</el-form-item>
					</el-col>
					<el-col :span="24">
						<el-form-item label="培训内容" prop="peixunneirong">
							<el-input v-model="form.peixunneirong" placeholder="培训内容" type="textarea"
							:readonly="!isAdd||disabledForm.peixunneirong?true:false"
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
	const tableName = 'gangqianpeixun'
	const formName = '岗前培训'
	//基础信息
	//form表单
	const form = ref({})
	const disabledForm = ref({
        peixunzhuti : false,
        peixunshijian : false,
        peixunshipin : false,
        peixuncailiao : false,
        peixunneirong : false,
	})
	const formVisible = ref(false)
	const isAdd = ref(false)
	const formTitle = ref('')
    
	const rules = ref({
		peixunzhuti: [
			{required: true,message: '请输入',trigger: 'blur'}, 
		],
		peixunshijian: [
			{required: true,message: '请输入',trigger: 'blur'}, 
		],
		peixunshipin: [
		],
		peixuncailiao: [
		],
		peixunneirong: [
		],
	})
	//表单验证
	
	const formRef = ref(null)
	const id = ref(0)
	const type = ref('')
	//培训视频上传回调
	const peixunshipinUploadSuccess=(e)=>{
		form.value.peixunshipin = e
	}
	//培训材料上传回调
	const peixuncailiaoUploadSuccess=(e)=>{
		form.value.peixuncailiao = e
	}

	//获取唯一标识
	const getUUID =()=> {
      return new Date().getTime();
    }
	//重置
	const resetForm = () => {
		form.value = {
			peixunzhuti: '',
			peixunshijian: '',
			peixunshipin: '',
			peixuncailiao: '',
			peixunneirong: '',
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
				if(x=='peixunzhuti'){
					form.value.peixunzhuti = row[x];
					disabledForm.value.peixunzhuti = true;
					continue;
				}
				if(x=='peixunshijian'){
					form.value.peixunshijian = row[x];
					disabledForm.value.peixunshijian = true;
					continue;
				}
				if(x=='peixunshipin'){
					form.value.peixunshipin = row[x];
					disabledForm.value.peixunshipin = true;
					continue;
				}
				if(x=='peixuncailiao'){
					form.value.peixuncailiao = row[x];
					disabledForm.value.peixuncailiao = true;
					continue;
				}
				if(x=='peixunneirong'){
					form.value.peixunneirong = row[x];
					disabledForm.value.peixunneirong = true;
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
			formVisible.value = true
		}

		context?.$http({
			url: `${context?.$toolUtil.roleStorageGet('sessionTable')}/session`,
			method: 'get'
		}).then(res => {
			var json = res.data.data
		})
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
		if(form.value.peixunshipin!=null) {
			form.value.peixunshipin = form.value.peixunshipin.replace(new RegExp(context?.$config.url,"g"),"");
		}
		if(form.value.peixuncailiao!=null) {
			form.value.peixuncailiao = form.value.peixuncailiao.replace(new RegExp(context?.$config.url,"g"),"");
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
				// 长文本
				.el-textarea__inner {
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
