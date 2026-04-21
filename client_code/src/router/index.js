import { createRouter, createWebHashHistory } from 'vue-router'
import index from '../views'
import home from '../views/pages/home.vue'
import login from '../views/pages/login.vue'
import yonghuList from '@/views/pages/yonghu/list'
import yonghuDetail from '@/views/pages/yonghu/formModel'
import yonghuAdd from '@/views/pages/yonghu/formAdd'
import yonghuRegister from '@/views/pages/yonghu/register'
import yonghuCenter from '@/views/pages/yonghu/center'
import kuaidiyuanList from '@/views/pages/kuaidiyuan/list'
import kuaidiyuanDetail from '@/views/pages/kuaidiyuan/formModel'
import kuaidiyuanAdd from '@/views/pages/kuaidiyuan/formAdd'
import wuliugongsiList from '@/views/pages/wuliugongsi/list'
import wuliugongsiDetail from '@/views/pages/wuliugongsi/formModel'
import wuliugongsiAdd from '@/views/pages/wuliugongsi/formAdd'
import fuwuleixingList from '@/views/pages/fuwuleixing/list'
import fuwuleixingDetail from '@/views/pages/fuwuleixing/formModel'
import fuwuleixingAdd from '@/views/pages/fuwuleixing/formAdd'
import fuwuxiangmuList from '@/views/pages/fuwuxiangmu/list'
import fuwuxiangmuDetail from '@/views/pages/fuwuxiangmu/formModel'
import fuwuxiangmuAdd from '@/views/pages/fuwuxiangmu/formAdd'
import storeupList from '@/views/pages/storeup/list'
import dingdanxiadanList from '@/views/pages/dingdanxiadan/list'
import dingdanxiadanDetail from '@/views/pages/dingdanxiadan/formModel'
import dingdanxiadanAdd from '@/views/pages/dingdanxiadan/formAdd'
import dingdanjiedanList from '@/views/pages/dingdanjiedan/list'
import dingdanjiedanDetail from '@/views/pages/dingdanjiedan/formModel'
import dingdanjiedanAdd from '@/views/pages/dingdanjiedan/formAdd'
import dingdanfenpeiList from '@/views/pages/dingdanfenpei/list'
import dingdanfenpeiDetail from '@/views/pages/dingdanfenpei/formModel'
import dingdanfenpeiAdd from '@/views/pages/dingdanfenpei/formAdd'
import dingdanpeisongList from '@/views/pages/dingdanpeisong/list'
import dingdanpeisongDetail from '@/views/pages/dingdanpeisong/formModel'
import dingdanpeisongAdd from '@/views/pages/dingdanpeisong/formAdd'
import dingdanwanchengList from '@/views/pages/dingdanwancheng/list'
import dingdanwanchengDetail from '@/views/pages/dingdanwancheng/formModel'
import dingdanwanchengAdd from '@/views/pages/dingdanwancheng/formAdd'
import dingdanqianshouList from '@/views/pages/dingdanqianshou/list'
import dingdanqianshouDetail from '@/views/pages/dingdanqianshou/formModel'
import dingdanqianshouAdd from '@/views/pages/dingdanqianshou/formAdd'
import shensuxinxiList from '@/views/pages/shensuxinxi/list'
import shensuxinxiDetail from '@/views/pages/shensuxinxi/formModel'
import shensuxinxiAdd from '@/views/pages/shensuxinxi/formAdd'
import xinzixinxiList from '@/views/pages/xinzixinxi/list'
import xinzixinxiDetail from '@/views/pages/xinzixinxi/formModel'
import xinzixinxiAdd from '@/views/pages/xinzixinxi/formAdd'
import hetongxinxiList from '@/views/pages/hetongxinxi/list'
import hetongxinxiDetail from '@/views/pages/hetongxinxi/formModel'
import hetongxinxiAdd from '@/views/pages/hetongxinxi/formAdd'
import newsList from '@/views/pages/news/list'
import syslogList from '@/views/pages/syslog/list'
import syslogDetail from '@/views/pages/syslog/formModel'
import syslogAdd from '@/views/pages/syslog/formAdd'
import gangqianpeixunList from '@/views/pages/gangqianpeixun/list'
import gangqianpeixunDetail from '@/views/pages/gangqianpeixun/formModel'
import gangqianpeixunAdd from '@/views/pages/gangqianpeixun/formAdd'

const routes = [{
		path: '/',
		redirect: '/index/home'
	},
	{
		path: '/index',
		component: index,
		children: [{
			path: 'home',
			component: home
		}
		, {
			path: 'yonghuList',
			component: yonghuList
		}, {
			path: 'yonghuDetail',
			component: yonghuDetail
		}, {
			path: 'yonghuAdd',
			component: yonghuAdd
		}
		, {
			path: 'yonghuCenter',
			component: yonghuCenter
		}
		, {
			path: 'kuaidiyuanList',
			component: kuaidiyuanList
		}, {
			path: 'kuaidiyuanDetail',
			component: kuaidiyuanDetail
		}, {
			path: 'kuaidiyuanAdd',
			component: kuaidiyuanAdd
		}
		, {
			path: 'wuliugongsiList',
			component: wuliugongsiList
		}, {
			path: 'wuliugongsiDetail',
			component: wuliugongsiDetail
		}, {
			path: 'wuliugongsiAdd',
			component: wuliugongsiAdd
		}
		, {
			path: 'fuwuleixingList',
			component: fuwuleixingList
		}, {
			path: 'fuwuleixingDetail',
			component: fuwuleixingDetail
		}, {
			path: 'fuwuleixingAdd',
			component: fuwuleixingAdd
		}
		, {
			path: 'fuwuxiangmuList',
			component: fuwuxiangmuList
		}, {
			path: 'fuwuxiangmuDetail',
			component: fuwuxiangmuDetail
		}, {
			path: 'fuwuxiangmuAdd',
			component: fuwuxiangmuAdd
		}
        , {
            path: 'storeupList',
            component: storeupList
        }
		, {
			path: 'dingdanxiadanList',
			component: dingdanxiadanList
		}, {
			path: 'dingdanxiadanDetail',
			component: dingdanxiadanDetail
		}, {
			path: 'dingdanxiadanAdd',
			component: dingdanxiadanAdd
		}
		, {
			path: 'dingdanjiedanList',
			component: dingdanjiedanList
		}, {
			path: 'dingdanjiedanDetail',
			component: dingdanjiedanDetail
		}, {
			path: 'dingdanjiedanAdd',
			component: dingdanjiedanAdd
		}
		, {
			path: 'dingdanfenpeiList',
			component: dingdanfenpeiList
		}, {
			path: 'dingdanfenpeiDetail',
			component: dingdanfenpeiDetail
		}, {
			path: 'dingdanfenpeiAdd',
			component: dingdanfenpeiAdd
		}
		, {
			path: 'dingdanpeisongList',
			component: dingdanpeisongList
		}, {
			path: 'dingdanpeisongDetail',
			component: dingdanpeisongDetail
		}, {
			path: 'dingdanpeisongAdd',
			component: dingdanpeisongAdd
		}
		, {
			path: 'dingdanwanchengList',
			component: dingdanwanchengList
		}, {
			path: 'dingdanwanchengDetail',
			component: dingdanwanchengDetail
		}, {
			path: 'dingdanwanchengAdd',
			component: dingdanwanchengAdd
		}
		, {
			path: 'dingdanqianshouList',
			component: dingdanqianshouList
		}, {
			path: 'dingdanqianshouDetail',
			component: dingdanqianshouDetail
		}, {
			path: 'dingdanqianshouAdd',
			component: dingdanqianshouAdd
		}
		, {
			path: 'shensuxinxiList',
			component: shensuxinxiList
		}, {
			path: 'shensuxinxiDetail',
			component: shensuxinxiDetail
		}, {
			path: 'shensuxinxiAdd',
			component: shensuxinxiAdd
		}
		, {
			path: 'xinzixinxiList',
			component: xinzixinxiList
		}, {
			path: 'xinzixinxiDetail',
			component: xinzixinxiDetail
		}, {
			path: 'xinzixinxiAdd',
			component: xinzixinxiAdd
		}
		, {
			path: 'hetongxinxiList',
			component: hetongxinxiList
		}, {
			path: 'hetongxinxiDetail',
			component: hetongxinxiDetail
		}, {
			path: 'hetongxinxiAdd',
			component: hetongxinxiAdd
		}
		, {
			path: 'newsList',
			component: newsList
		}
		, {
			path: 'syslogList',
			component: syslogList
		}, {
			path: 'syslogDetail',
			component: syslogDetail
		}, {
			path: 'syslogAdd',
			component: syslogAdd
		}
		, {
			path: 'gangqianpeixunList',
			component: gangqianpeixunList
		}, {
			path: 'gangqianpeixunDetail',
			component: gangqianpeixunDetail
		}, {
			path: 'gangqianpeixunAdd',
			component: gangqianpeixunAdd
		}
		]
	},
	{
		path: '/login',
		component: login
	}
	,{
		path: '/yonghuRegister',
		component: yonghuRegister
	}
]

const router = createRouter({
  history: createWebHashHistory(process.env.BASE_URL),
  routes
})

export default router
