import toolUtil from '@/utils/toolUtil.js'
import config from '@/utils/config.js'
import http from '@/utils/http.js'
import default_avatar from "@/assets/img/avatar.png"
import router from '@/router/index'

export default {
    namespaced: true,
    state:{
        session:{},
        username:'管理员',
        avatar:''
    },
    getters:{
        session(state){
            if(!state.session.id){
                return toolUtil.roleStorageGet('back_session')?JSON.parse(toolUtil.roleStorageGet('back_session')):{}
            }
            return state.session
        },
        avatar(state){
            let key;
            if(toolUtil.roleStorageGet('sessionTable') == 'yonghu'){
                key = 'touxiang'
            }
            if(toolUtil.roleStorageGet('sessionTable') == 'kuaidiyuan'){
                key = 'touxiang'
            }
            if(toolUtil.roleStorageGet('sessionTable') == 'wuliugongsi'){
                key = 'yingyezhizhao'
            }
            let avatar = state.session[key]
            state.avatar = avatar
            return avatar?config.get().url+avatar:default_avatar
        },
    },
    actions:{
        async getSession({commit}){
            let sessionTable = toolUtil.roleStorageGet('sessionTable')
            if(!sessionTable){
                router.push('/login')
                return
            }
            let res = await http.get(`${sessionTable}/session`)
            if(res.data.code==0){
                localStorage.setItem(toolUtil.roleKey('admin_userid'),res.data.data.id)
                commit('set_session',res.data.data)
            }
            return res
        },
        async update({commit},data){
            let res = await http.post(`${toolUtil.roleStorageGet('sessionTable')}/update`,data)
            if(res.data.code==0){
                commit('assign_session',data)
            }
            return res
        },
        async loginOut({commit},data){
            commit('loginOut')
        }
    },
    mutations:{
        set_session(state,data){
            state.session = data
            toolUtil.roleStorageSet('back_session',JSON.stringify(state.session))
        },
        assign_session(state,data){
            Object.assign(state.session,JSON.parse(JSON.stringify(data)))
            toolUtil.roleStorageSet('back_session',JSON.stringify(state.session))
        },
        loginOut(state,data){
            state.session={},
            state.username='管理员',
            state.avatar=''
        }
    }
}