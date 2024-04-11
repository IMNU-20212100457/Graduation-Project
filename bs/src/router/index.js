import Vue from 'vue'

import Router from 'vue-router'
Vue.use(Router)

import index from '../view/index.vue'
import home from '../view/home.vue'
export default new Router({
    routes :[
        {
            path:'/',
            component:index,
            
        },
        {
            path:'/home',
            component:home
        }
    ]
})