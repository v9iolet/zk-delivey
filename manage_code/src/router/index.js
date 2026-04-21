	import {
		createRouter,
		createWebHashHistory
	} from 'vue-router'
	import news from '@/views/news/list'
	import gangqianpeixun from '@/views/gangqianpeixun/list'
	import dingdanxiadan from '@/views/dingdanxiadan/list'
	import fuwuxiangmu from '@/views/fuwuxiangmu/list'
	import syslog from '@/views/syslog/list'
    import menu_manage from '@/views/menu_manage/list'
	import storeup from '@/views/storeup/list'
	import users from '@/views/users/list'
	import fuwuleixing from '@/views/fuwuleixing/list'
	import dingdanjiedan from '@/views/dingdanjiedan/list'
	import dingdanwancheng from '@/views/dingdanwancheng/list'
	import dingdanfenpei from '@/views/dingdanfenpei/list'
	import dingdanqianshou from '@/views/dingdanqianshou/list'
	import xinzixinxi from '@/views/xinzixinxi/list'
	import yonghu from '@/views/yonghu/list'
	import wuliugongsi from '@/views/wuliugongsi/list'
	import hetongxinxi from '@/views/hetongxinxi/list'
	import config from '@/views/config/list'
	import shensuxinxi from '@/views/shensuxinxi/list'
	import kuaidiyuan from '@/views/kuaidiyuan/list'
	import discussfuwuxiangmu from '@/views/discussfuwuxiangmu/list'
	import dingdanpeisong from '@/views/dingdanpeisong/list'
	import usersCenter from '@/views/users/center'
	import kuaidiyuanRegister from '@/views/kuaidiyuan/register'
	import kuaidiyuanCenter from '@/views/kuaidiyuan/center'
	import wuliugongsiRegister from '@/views/wuliugongsi/register'
	import wuliugongsiCenter from '@/views/wuliugongsi/center'

export const routes = [{
		path: '/login',
		name: 'login',
		component: () => import('../views/login.vue')
	},{
		path: '/',
		name: '首页',
		component: () => import('../views/index'),
		children: [{
			path: '/',
			name: '首页',
			component: () => import('../views/HomeView.vue'),
			meta: {
				affix: true
			}
		}, {
			path: '/updatepassword',
			name: '修改密码',
			component: () => import('../views/updatepassword.vue')
		}
		
		,{
			path: '/usersCenter',
			name: '管理员个人中心',
			component: usersCenter
		}
		,{
			path: '/kuaidiyuanCenter',
			name: '快递员个人中心',
			component: kuaidiyuanCenter
		}
		,{
			path: '/wuliugongsiCenter',
			name: '物流公司个人中心',
			component: wuliugongsiCenter
		}
		,{
			path: '/news',
			name: '系统公告',
			component: news
		}
		,{
			path: '/gangqianpeixun',
			name: '岗前培训',
			component: gangqianpeixun
		}
		,{
			path: '/dingdanxiadan',
			name: '订单下单',
			component: dingdanxiadan
		}
		,{
			path: '/fuwuxiangmu',
			name: '服务项目',
			component: fuwuxiangmu
		}
		,{
			path: '/syslog',
			name: '操作日志',
			component: syslog
		}
        ,{
            path: '/menu',
            name: '菜单权限管理',
            component: menu_manage
        }
		,{
			path: '/storeup',
			name: '我的收藏',
			component: storeup
		}
		,{
			path: '/users',
			name: '管理员',
			component: users
		}
		,{
			path: '/fuwuleixing',
			name: '服务类型',
			component: fuwuleixing
		}
		,{
			path: '/dingdanjiedan',
			name: '订单接单',
			component: dingdanjiedan
		}
		,{
			path: '/dingdanwancheng',
			name: '订单完成',
			component: dingdanwancheng
		}
		,{
			path: '/dingdanfenpei',
			name: '订单分配',
			component: dingdanfenpei
		}
		,{
			path: '/dingdanqianshou',
			name: '订单签收',
			component: dingdanqianshou
		}
		,{
			path: '/xinzixinxi',
			name: '薪资信息',
			component: xinzixinxi
		}
		,{
			path: '/yonghu',
			name: '用户',
			component: yonghu
		}
		,{
			path: '/wuliugongsi',
			name: '物流公司',
			component: wuliugongsi
		}
		,{
			path: '/hetongxinxi',
			name: '合同信息',
			component: hetongxinxi
		}
		,{
			path: '/config',
			name: '轮播图',
			component: config
		}
		,{
			path: '/shensuxinxi',
			name: '申诉信息',
			component: shensuxinxi
		}
		,{
			path: '/kuaidiyuan',
			name: '快递员',
			component: kuaidiyuan
		}
		,{
			path: '/discussfuwuxiangmu',
			name: '服务项目评论-评论',
			component: discussfuwuxiangmu
		}
		,{
			path: '/dingdanpeisong',
			name: '订单配送',
			component: dingdanpeisong
		}
		]
	},
	{
		path: '/kuaidiyuanRegister',
		name: '快递员注册',
		component: kuaidiyuanRegister
	},
	{
		path: '/wuliugongsiRegister',
		name: '物流公司注册',
		component: wuliugongsiRegister
	},
]

const router = createRouter({
	history: createWebHashHistory(process.env.BASE_URL),
	routes
})

export default router
