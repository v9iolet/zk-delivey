<template>
	<div>
		<el-dialog modal-class="edit_form_modal" class="edit_form" v-model="formVisible" :title="formTitle" width="50%" destroy-on-close :fullscreen='false'>
			<el-form class="formModel_form" ref="formRef" :model="form" :rules="rules">
				<el-row >
					<el-col :span="24">
						<el-form-item label="年月份" prop="nianyuefen">
							<el-input class="list_inp" v-model="form.nianyuefen" placeholder="年月份"
                                type="text"
								:readonly="!isAdd||disabledForm.nianyuefen?true:false" />
						</el-form-item>
					</el-col>

					<el-col :span="24">
						<el-form-item label="底薪" prop="dixin">
							<el-input class="list_inp" v-model.number="form.dixin" placeholder="底薪"
                                type="number"
                                @mousewheel.native.prevent
								:readonly="!isAdd||disabledForm.dixin?true:false" />
						</el-form-item>
					</el-col>

					<el-col :span="24">
						<el-form-item label="绩效" prop="jixiao">
							<el-input class="list_inp" v-model.number="form.jixiao" placeholder="绩效"
                                type="number"
                                @mousewheel.native.prevent
								:readonly="!isAdd||disabledForm.jixiao?true:false" />
						</el-form-item>
					</el-col>

					<el-col :span="24">
						<el-form-item label="奖金" prop="jiangjin">
							<el-input class="list_inp" v-model.number="form.jiangjin" placeholder="奖金"
                                type="number"
                                @mousewheel.native.prevent
								:readonly="!isAdd||disabledForm.jiangjin?true:false" />
						</el-form-item>
					</el-col>

					<el-col :span="24">
						<el-form-item label="全勤奖" prop="quanqinjiang">
							<el-input class="list_inp" v-model.number="form.quanqinjiang" placeholder="全勤奖"
                                type="number"
                                @mousewheel.native.prevent
								:readonly="!isAdd||disabledForm.quanqinjiang?true:false" />
						</el-form-item>
					</el-col>

					<el-col :span="24">
						<el-form-item label="五险一金" prop="wuxianyijin">
							<el-input class="list_inp" v-model.number="form.wuxianyijin" placeholder="五险一金"
                                type="number"
                                @mousewheel.native.prevent
								:readonly="!isAdd||disabledForm.wuxianyijin?true:false" />
						</el-form-item>
					</el-col>

					<el-col :span="24">
						<el-form-item label="扣款" prop="koukuan">
							<el-input class="list_inp" v-model.number="form.koukuan" placeholder="扣款"
                                type="number"
                                @mousewheel.native.prevent
								:readonly="!isAdd||disabledForm.koukuan?true:false" />
						</el-form-item>
					</el-col>

					<el-col :span="24">
						<el-form-item label="实发工资" prop="shifagongzi">
							<el-input class="list_inp" v-model="shifagongzi" :readonly="true" placeholder="实发工资" />
						</el-form-item>
					</el-col>
					<el-col :span="24">
						<el-form-item label="工资备注" prop="gongzibeizhu">
							<el-input class="list_inp" v-model="form.gongzibeizhu" placeholder="工资备注"
                                type="text"
								:readonly="!isAdd||disabledForm.gongzibeizhu?true:false" />
						</el-form-item>
					</el-col>

					<el-col :span="24">
						<el-form-item label="快递员账号" prop="kuaidiyuanzhanghao">
							<el-select
								class="list_sel"
								:disabled="!isAdd||disabledForm.kuaidiyuanzhanghao?true:false"
								v-model="form.kuaidiyuanzhanghao" 
								placeholder="请选择快递员账号"
								@change="kuaidiyuanzhanghaoChange">
								<el-option v-for="(item,index) in kuaidiyuanzhanghaoLists" :label="item" :value="item">
								</el-option>
							</el-select>
						</el-form-item>
					</el-col>
					<el-col :span="24">
						<el-form-item label="快递员姓名姓名" prop="kuaidiyuanxingmingxingming">
							<el-input class="list_inp" v-model="form.kuaidiyuanxingmingxingming" placeholder="快递员姓名姓名"
                                type="text"
								:readonly="!isAdd||disabledForm.kuaidiyuanxingmingxingming?true:false" />
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
	const tableName = 'xinzixinxi'
	const formName = '薪资信息'
	//基础信息
	//form表单
	const form = ref({})
	const disabledForm = ref({
        nianyuefen : false,
        dixin : false,
        jixiao : false,
        jiangjin : false,
        quanqinjiang : false,
        wuxianyijin : false,
        koukuan : false,
        shifagongzi : false,
        gongzibeizhu : false,
        kuaidiyuanzhanghao : false,
        kuaidiyuanxingmingxingming : false,
        gongsizhanghao : false,
        gongsimingcheng : false,
	})
	const formVisible = ref(false)
	const isAdd = ref(false)
	const formTitle = ref('')
    
	const rules = ref({
		nianyuefen: [
			{required: true,message: '请输入',trigger: 'blur'}, 
		],
		dixin: [
			{required: true,message: '请输入',trigger: 'blur'}, 
			{ validator: context.$toolUtil.validator.number, trigger: 'blur' },
		],
		jixiao: [
			{required: true,message: '请输入',trigger: 'blur'}, 
			{ validator: context.$toolUtil.validator.number, trigger: 'blur' },
		],
		jiangjin: [
			{required: true,message: '请输入',trigger: 'blur'}, 
			{ validator: context.$toolUtil.validator.number, trigger: 'blur' },
		],
		quanqinjiang: [
			{required: true,message: '请输入',trigger: 'blur'}, 
			{ validator: context.$toolUtil.validator.number, trigger: 'blur' },
		],
		wuxianyijin: [
			{required: true,message: '请输入',trigger: 'blur'}, 
			{ validator: context.$toolUtil.validator.number, trigger: 'blur' },
		],
		koukuan: [
			{required: true,message: '请输入',trigger: 'blur'}, 
			{ validator: context.$toolUtil.validator.number, trigger: 'blur' },
		],
		shifagongzi: [
			{ validator: context.$toolUtil.validator.number, trigger: 'blur' },
		],
		gongzibeizhu: [
		],
		kuaidiyuanzhanghao: [
		],
		kuaidiyuanxingmingxingming: [
		],
		gongsizhanghao: [
		],
		gongsimingcheng: [
		],
	})
	//表单验证
	
	const formRef = ref(null)
	const id = ref(0)
	const type = ref('')
	//快递员账号列表
	const kuaidiyuanzhanghaoLists = ref([])
	const shifagongzi =computed(()=>{
		let c = form.value
        let a = Number(c.dixin)+Number(c.jixiao)+Number(c.jiangjin)+Number(c.quanqinjiang)-Number(c.wuxianyijin)-Number(c.koukuan)
        form.value.shifagongzi = Number(a)?Number(parseFloat(a).toFixed(2)) : 0
        return Number(a)?Number(parseFloat(a).toFixed(2)) : 0
	})

	//获取唯一标识
	const getUUID =()=> {
      return new Date().getTime();
    }
	//重置
	const resetForm = () => {
		form.value = {
			nianyuefen: '',
			dixin: '2500',
			jixiao: '',
			jiangjin: '',
			quanqinjiang: '',
			wuxianyijin: '',
			koukuan: '',
			shifagongzi: '',
			gongzibeizhu: '',
			kuaidiyuanzhanghao: '',
			kuaidiyuanxingmingxingming: '',
			gongsizhanghao: '',
			gongsimingcheng: '',
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
				if(x=='nianyuefen'){
					form.value.nianyuefen = row[x];
					disabledForm.value.nianyuefen = true;
					continue;
				}
				if(x=='dixin'){
					form.value.dixin = row[x];
					disabledForm.value.dixin = true;
					continue;
				}
				if(x=='jixiao'){
					form.value.jixiao = row[x];
					disabledForm.value.jixiao = true;
					continue;
				}
				if(x=='jiangjin'){
					form.value.jiangjin = row[x];
					disabledForm.value.jiangjin = true;
					continue;
				}
				if(x=='quanqinjiang'){
					form.value.quanqinjiang = row[x];
					disabledForm.value.quanqinjiang = true;
					continue;
				}
				if(x=='wuxianyijin'){
					form.value.wuxianyijin = row[x];
					disabledForm.value.wuxianyijin = true;
					continue;
				}
				if(x=='koukuan'){
					form.value.koukuan = row[x];
					disabledForm.value.koukuan = true;
					continue;
				}
				if(x=='shifagongzi'){
					form.value.shifagongzi = row[x];
					disabledForm.value.shifagongzi = true;
					continue;
				}
				if(x=='gongzibeizhu'){
					form.value.gongzibeizhu = row[x];
					disabledForm.value.gongzibeizhu = true;
					continue;
				}
				if(x=='kuaidiyuanzhanghao'){
					form.value.kuaidiyuanzhanghao = row[x];
					disabledForm.value.kuaidiyuanzhanghao = true;
					continue;
				}
				if(x=='kuaidiyuanxingmingxingming'){
					form.value.kuaidiyuanxingmingxingming = row[x];
					disabledForm.value.kuaidiyuanxingmingxingming = true;
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
			form.value.dixin='2500'
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
		})
		context?.$http({
			url: `option/kuaidiyuan/kuaidiyuanzhanghao`,
			method: 'get'
		}).then(res=>{
			kuaidiyuanzhanghaoLists.value = res.data.data
		})
		//由上级字段带出不可改
		disabledForm.value.kuaidiyuanxingmingxingming = true;
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
	const kuaidiyuanzhanghaoChange=()=>{
		context?.$http({
			url: `follow/kuaidiyuan/kuaidiyuanzhanghao?columnValue=` + form.value.kuaidiyuanzhanghao,
			method: 'get'
		}).then(res=>{
			if(res.data.data.kuaidiyuanxingmingxingming){
				form.value.kuaidiyuanxingmingxingming = res.data.data.kuaidiyuanxingmingxingming
			}
		})
	}
	//富文本
	const editorChange = (e,name) =>{
		form.value[name] = e
	}
	//提交
	const save= async ()=>{
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
