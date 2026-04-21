const config = {
    get() {
        return {
            url : process.env.VUE_APP_BASE_API_URL + process.env.VUE_APP_BASE_API + '/',
            name: process.env.VUE_APP_BASE_API,
			menuList:[
				{
					name: '新闻资讯管理',
					icon: '',
					child:[

						{
							name:'系统公告',
                            url:'/index/newsList'

						},
					]
				},
				{
					name: '服务项目管理',
					icon: '',
					child:[

						{
							name:'服务项目',
                            url:'/index/fuwuxiangmuList'

						},
					]
				},
			]
        }
    },
    getProjectName(){
        return {
            projectName: `基于springboot的湛科校园包裹代取服务平台`
        } 
    }
}
export default config
