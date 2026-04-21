<template>
	<div>
		<div class="center_view edit_form">
			<el-form class="userinfo_form" ref="userinfoFormRef" :model="form">
				<el-row>
					<el-col :span="24">
						<el-form-item label="营业执照" prop="yingyezhizhao">
							<uploads
								action="file/upload" 
								tip="请上传营业执照"
								style="width: 100%;text-align: left;"
								:fileUrls="user.yingyezhizhao?user.yingyezhizhao:''" 
								@change="wuliugongsiyingyezhizhaoUploadSuccess">
							</uploads>
						</el-form-item>
					</el-col>
					<el-col :span="24">
						<el-form-item label="公司账号" prop="gongsizhanghao">
							<el-input class="list_inp" v-model="user.gongsizhanghao" readonly placeholder="公司账号" clearable />
						</el-form-item>
					</el-col>
					<el-col :span="24">
						<el-form-item label="公司名称" prop="gongsimingcheng">
							<el-input class="list_inp" v-model="user.gongsimingcheng"  placeholder="公司名称" clearable />
						</el-form-item>
					</el-col>
					<el-col :span="24">
						<el-form-item label="联系方式" prop="lianxifangshi">
							<el-input class="list_inp" v-model="user.lianxifangshi"  placeholder="联系方式" clearable />
						</el-form-item>
					</el-col>
					<el-col :span="24">
						<el-form-item label="公司地址" prop="gongsidizhi">
							<el-input class="list_inp" v-model="user.gongsidizhi"  placeholder="公司地址" clearable />
						</el-form-item>
					</el-col>
					<el-col :span="24">
						<el-form-item label="公司人数" prop="gongsirenshu">
							<el-input class="list_inp" v-model="user.gongsirenshu"  placeholder="公司人数" clearable />
						</el-form-item>
					</el-col>
					<span class="formModel_btn_box">
						<el-button class='confirm_btn' type="primary" @click="onSubmit">保存</el-button>
					</span>
				</el-row>
			</el-form>
		</div>
	</div>
</template>

<script setup>
	import { isNumber,isIntNumer,isEmail,isMobile,isPhone,isURL,checkIdCard } from "@/utils/toolUtil";
	import {
		reactive,
		ref,
		getCurrentInstance
	} from 'vue'
	import { useStore } from 'vuex'
	const store = useStore()
	const context = getCurrentInstance()?.appContext.config.globalProperties;
	const tableName = ref('wuliugongsi')
	const user = ref({})
	const init = () => {
	}
	const wuliugongsiyingyezhizhaoUploadSuccess=(fileUrls)=> {
	    user.value.yingyezhizhao = fileUrls;
	}
	const onSubmit = () => {
		if(user.value.yingyezhizhao!=null){
			user.value.yingyezhizhao = user.value.yingyezhizhao.replace(new RegExp(context?.$config.url,"g"),"");
		}
		if((!user.value.gongsizhanghao)){
			context?.$toolUtil.message(`公司账号不能为空`,'error')
			return false
		}
		if((!user.value.mima)){
			context?.$toolUtil.message(`密码不能为空`,'error')
			return false
		}
		if((!user.value.gongsimingcheng)){
			context?.$toolUtil.message(`公司名称不能为空`,'error')
			return false
		}
		if((user.value.lianxifangshi)&&(!context?.$toolUtil.isMobile(user.value.lianxifangshi))){
			context?.$toolUtil.message(`联系方式应输入手机格式`,'error')
			return false
		}
		if((user.value.gongsirenshu)&&(!context?.$toolUtil.isIntNumer(user.value.gongsirenshu))){
			context?.$toolUtil.message(`公司人数应输入整数`,'error')
			return false
		}
		store.dispatch('user/update',user.value).then(res=>{
			if(res?.data&&res.data.code==0)context?.$toolUtil.message('修改成功','success')
		})

	}
	const getInfo = () => {
		context?.$http({
			url: `${tableName.value}/session`,
			method: 'get'
		}).then(res => {
			user.value = res.data.data
			init()
		})
	}
	getInfo()
</script>

<style lang="scss" scoped>
	// 表单
	.userinfo_form {
		// form item
		:deep(.el-form-item) {
			// 内容盒子
			.el-form-item__content{
			}
			// 输入框
			.list_inp {
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
		// 按钮盒子
		.formModel_btn_box {
			// 确定按钮
			.confirm_btn {
			}
			// 确定按钮-悬浮
			.confirm_btn:hover {
			}
		}
	}
</style>
