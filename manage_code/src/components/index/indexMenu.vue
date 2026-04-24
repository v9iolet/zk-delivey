<template>
	<div class="menu_wrapper">
		<el-scrollbar wrap-class="scrollbar-wrapper" class="menu_scrollbar">
			<el-menu :default-openeds="[]" :unique-opened="true" :default-active="menuIndex" class="menu_view"
				:collapse="collapse">
				<el-menu-item class="first-item" index="/" @click="menuHandler('')">
					<i class="iconfont icon-zhuye2" v-if="collapse?false:true"></i>
					<template #title>
						<span>首页</span>
					</template>
				</el-menu-item>
                <template v-for=" (item,index) in menuList.backMenu">
                    <el-sub-menu   class="first-item" :index="item.menu">
                        <template #title>
                            <i class="iconfont" :class="item.fontClass" v-if="collapse?false:true"></i>
                            <span>{{ item.menu }}</span>
                        </template>
                        <el-menu-item class="second-item" v-for=" (child,sort) in item.child" :key="sort"
                            :index="getPath(child.classname||child.tableName,child.menuJump)"
                            @click="menuHandler(child.classname||child.tableName,child.menuJump)">{{ child.menu }}
                        </el-menu-item>
                    </el-sub-menu>
                </template>
			</el-menu>
		</el-scrollbar>
	</div>
</template>

<script setup>
	import menu from '@/utils/menu'
	import {
		ref,
		toRefs,
		getCurrentInstance,
		nextTick,
        watch
	} from 'vue';
	import { useStore } from 'vuex'
	const store = useStore()
	const context = getCurrentInstance()?.appContext.config.globalProperties;
	//props
	const props = defineProps({
		collapse: Boolean
	})
	const {
		collapse
	} = toRefs(props)
	//data
	const menuList = ref([])
	const role = ref('')
	//权限验证
	const btnAuth = (e,a)=>{
		return context?.$toolUtil.isAuth(e,a)
	}
	const init = () => {
		const menus = menu.list()
		if (menus) {
			menuList.value = menus
		}
		role.value = context?.$toolUtil.roleStorageGet('role')

		for (let i = 0; i < menuList.value.length; i++) {
			if (menuList.value[i].roleName == role.value) {
				menuList.value = menuList.value[i];
				break;
			}
		}
	}
    // 默认菜单index
    const menuIndex = ref('')
    watch(() => context.$router.currentRoute.value,(value, oldValue) => {
        menuIndex.value = decodeURIComponent(value.fullPath)
    },{
        immediate:true
    })
	const getPath = (name,menuJump) => {
        if(name == 'center'){
            return `/${role.value}Center`
        }else if(name == 'storeup'){
            return `/storeup?type=${menuJump}`
        }else if(name == 'exampaper' && menuJump == '12'){
            return '/exampaperlist'
        }else if(name == 'examrecord' && menuJump == '22'){
            return '/examfailrecord'
        }else{
            return `/${name}${menuJump?'?menuJump='+menuJump:''}`
        }
	}
    const menuHandler = (name,menuJump) => {
        let url = getPath(name,menuJump)
        context.$router.push(url)
    }
	init()
</script>

<style lang="scss" scoped>
	// 总盒子
	:deep(.menu_scrollbar) {

		// 菜单盒子-展开样式
		.menu_view {

			// 无二级菜单
			.el-menu-item {
				.iconfont {
				}
			}

			// 无二级悬浮
			.el-menu-item:hover {
			}

			// 无二级选中
			.el-menu-item.is-active {
			}

			// 有二级盒子
			.el-sub-menu {

				// 有二级item
				.el-sub-menu__title {
					.iconfont {
					}
					.el-sub-menu__icon-arrow{
					}
				}

				// 有二级item悬浮
				.el-sub-menu__title:hover {
				}
			}
			//二级选中
			.is-active {
				.el-sub-menu__title {
				}
			}
			// 二级盒子
			.el-menu--inline {
				// 二级菜单
				.second-item {
				}
				// 二级悬浮
				.second-item:hover {
				}
				// 二级选中
				.is-active.second-item {
				}
			}
		}
		// 菜单盒子-关闭样式
		.el-menu--collapse {
			padding: 0;
			background: none;
			height: 100%;

			// 无二级菜单
			.el-menu-item {
				border: none;
				padding: 0 10px;
				color: #ccc;
				background: none;
				line-height: 50px;
				height: 50px;
			}

			// 无二级悬浮
			.el-menu-item:hover {
				padding: 0 10px;
				color: #ccc;
				background: none;
				line-height: 50px;
				height: 50px;
			}

			// 无二级选中
			.el-menu-item.is-active {
				padding: 0 10px;
				color: #ccc;
				background: none;
				line-height: 50px;
				height: 50px;
			}

			// 有二级盒子
			.el-sub-menu {
				cursor: pointer;
				padding: 0 0;
				white-space: nowrap;
				background: none;
				position: relative;

				// 有二级item
				.el-sub-menu__title {
					border: none;
					padding: 0 10px;
					color: #ccc;
					background: none;
					line-height: 50px;
					height: 50px;
					.el-sub-menu__icon-arrow{
						margin: -3px 0 0 8px;
						color: inherit;
						vertical-align: middle;
						font-size: 12px;
						position: static;
					}
				}

				// 有二级item悬浮
				.el-sub-menu__title:hover {
					padding: 0 10px;
					color: #ccc;
					background: none;
					line-height: 50px;
					height: 50px;
				}
			}
			//二级选中
			.is-active {
				.el-sub-menu__title {
					padding: 0 10px;
					color: #ccc;
					background: none;
					line-height: 50px;
					height: 50px;
				}
			}
			// 二级盒子
			.el-menu--inline {
				border: none;
				padding: 0px;
				background: none;
				// 二级菜单
				.second-item {
					padding: 0 40px;
					color: #666;
					background: none;
					line-height: 50px;
					height: 50px;
				}
				// 二级悬浮
				.second-item:hover {
					padding: 0 40px;
					color: #f00;
					background: greenyellow;
					line-height: 50px;
					height: 50px;
				}
				// 二级选中
				.is-active.second-item {
					padding: 0 40px;
					color: #000;
					background: none;
					line-height: 50px;
					height: 50px;
				}
			}
		}
	}
</style>
<style lang="scss">
	.el-menu-item .el-menu-tooltip__trigger {
		padding: 0;
	}
	.el-popper{
		.el-menu--popup-container {
			.el-menu--popup{
				border: none;
				padding: 0px;
				background: none;
				// 二级菜单
				.second-item {
					padding: 0 40px;
					color: #666;
					background: none;
					line-height: 50px;
					height: 50px;
				}
				// 二级悬浮
				.second-item:hover {
					padding: 0 40px;
					color: #f00;
					background: greenyellow;
					line-height: 50px;
					height: 50px;
				}
				// 二级选中
				.is-active.second-item {
					padding: 0 40px;
					color: #000;
					background: none;
					line-height: 50px;
					height: 50px;
				}
			}
		}
	}
</style>
<style>
/* 菜单展开样式 */
/* 中间内容总盒子 */
.main-container{
    margin: 0px 0px 0px 230px;
    padding: 94px 0px 0px !important;
    background: rgba(228, 232, 235, 1);
    overflow: hidden;
}

/* 总盒子 */
.menu_wrapper{
    width: 230px;
    background: #444444;
    height: 100%;
    overflow: hidden;
    position: fixed;
    top: 0px;
    left: 0px;
    border-width: 0px;
    border-style: solid;
    border-color: rgb(255, 255, 255);
    padding: 40px 30px;
    transition: all 0.3s ease-in-out 0s;
    background: url(http://clfile.zggen.cn/20241029/c33d8462921745b2aefe62fe015df53b.png);
}
/* 菜单盒子 */
.menu_wrapper .menu_view{
    height: 100%;
    background: none;
    color: rgb(255, 255, 255);
    padding: 20px 0px 100px;
    border: 0px;
    transition: all 0s ease 0s;
}

/* 一级菜单 */
/* 盒子 */
.menu_wrapper .menu_view li.el-sub-menu{
    padding: 0px;
    cursor: pointer;
    position: relative;
    white-space: nowrap;
    background: none;
    color: rgb(51, 51, 51);
}

/* item */
.menu_wrapper .menu_view .first-item.el-sub-menu .el-sub-menu__title{
    height: 48px;
    padding: 0px 10px 0px 12px;
    color: #000000;
    background-image: url(http://clfile.zggen.cn/20241029/e961b47652a548029c3314e6461e1dc5.png)!important;
    line-height: 50px;
    border-width: 0;
    border-style: solid;
    border-color: var(--theme);
    font-weight: 600;
    margin: 0px;
    transition: all 0s ease 0s;
    background-size: 100% 100%;
}
/* 悬浮*/
.menu_wrapper .menu_view li.el-sub-menu .el-sub-menu__title:hover{
    background-color: unset;
}
/* 选中 */
.menu_wrapper .menu_view li.el-sub-menu .el-sub-menu__title.is-active{
    background: #4f403d;
}
/* 箭头*/
.menu_wrapper .menu_view li.el-sub-menu .el-sub-menu__title .el-sub-menu__icon-arrow{
    position: absolute;
    margin: -6px 0px 0px 8px;
    font-size: 12px;
    vertical-align: middle;
    color: inherit;
    right: 10px;
    display: block;
    display: none;
}
.menu_wrapper .menu_view .el-menu-item{
    width: 100%;
    height: 48px;
    padding: 0px 0px 0px 12px!important;
    color: #000000;
    line-height: 50px;
    border-width: 0px;
    border-style: solid;
    border-color: rgb(255, 156, 5);
    font-weight: 600;
    margin: 0px;
    transition: all 0s ease 0s;
    align-items: center;
    display: flex;
}
.menu_wrapper .menu_view .el-menu-item:hover{
    background-color: unset;
}
.menu_wrapper .menu_view .first-item.el-menu-item.is-active{
    /* background: var(--theme); */
}

/* 二级菜单 */
/* 盒子 */
.menu_wrapper .menu_view .el-menu--inline{
    border: none;
    padding: 0px;
    background: none;
    width: auto;
    margin: 0px;
    box-sizing: border-box;
}
/* item */
.menu_wrapper .menu_view .el-menu--inline .second-item{
    height: 40px;
    line-height: 40px;
    padding: 0px 20px 0px 45px;
    color: #7C7C7C;
    background: none;
    border-width: 0px;
    border-style: solid;
    border-color: rgb(251, 190, 98);
    display: block;
    margin: 0;
    box-shadow: none;
    font-weight: 600;
}
/* 悬浮 */
.menu_wrapper .menu_view .el-menu .second-item:hover{
    color: var(--theme);
}
/* 选中 */
.menu_wrapper .menu_view .el-menu--inline .second-item.is-active{
    display: inline-block;
    width: 100%;
    min-width: auto;
    color: var(--theme);
    border-radius: 10px;
}

.menu_wrapper .menu_view .el-sub-menu.is-active .el-sub-menu__title {
    /* background: var(--theme)!important; */
}

.menu_wrapper .first-item .el-menu--inline {
    background: #04112E;
    padding: 12px;
}

.menu_wrapper .menu_view .el-sub-menu.is-opened .el-sub-menu__title {
    background-color: #04112E!important;
}

.menu_wrapper .first-item i:first-child {
    font-size: 18px!important;
    margin-right: 8px;
    line-height: 18px!important;
    background: none;
    color: #fff;
    border-radius: 50%;
    padding: 4px;
    width: auto;
}

.first-item {
    margin-bottom: 30px!important;
    display: block;
}

.el-menu-item.first-item {
    background-image: url(http://clfile.zggen.cn/20241029/e961b47652a548029c3314e6461e1dc5.png)!important;
    background-size: 99% 100%!important;
}

.menu_wrapper .menu_view .el-menu--inline .second-item:before {
    width: 5px;
    height: 5px;
    background: #7C7C7C;
    content: '';
    position: absolute;
    left: 0;
    top: 45%;
    border-radius: 50%;
}

.menu_wrapper .menu_view .el-menu--inline .second-item.is-active:before {
    background: var(--theme);
}
</style>