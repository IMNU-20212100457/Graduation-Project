import Vue from 'vue'
import VueRouter from 'vue-router'
import LoginView from '../views/ElementView/LoginView.vue'
import ForgetpasswordView from '../views/ElementView/ForgetpasswordView.vue'
import AdministratorsView from '../views/ElementView/AdministratorsView.vue'

Vue.use(VueRouter)

const routes = [
  {
    path: '/Login',
    name: 'Login',
    component: LoginView
  },
  {
    path: '/ForgetPassword',
    name: 'ForgetPassword',
    component: ForgetpasswordView
  },
  {
    path: '/Administrators',
    name: 'Administrators',
    component: AdministratorsView
  },
  {
    path: '/',
    redirect: 'Login',
  }
]

const router = new VueRouter({
  routes
})

export default router
