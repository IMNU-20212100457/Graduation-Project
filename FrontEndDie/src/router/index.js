import Vue from 'vue'
import VueRouter from 'vue-router'
import LoginView from '../views/ElementView/LoginView.vue'
import ForgetpasswordView from '../views/ElementView/ForgetpasswordView.vue'
import AdministratorsView from '../views/ElementView/AdministratorsView.vue'
import PrincipalView from '../views/ElementView/PrincipalView.vue'
import GradedirectorView from '../views/ElementView/GradedirectorView.vue'
import ClassteacherView from '../views/ElementView/ClassteacherView.vue'
import LecturerView from '../views/ElementView/LecturerView.vue'
import StudentView from '../views/ElementView/StudentView.vue'
import AdministratorsPersonalCenterView from '../views/ElementView/AdministratorsPersonalCenterView.vue'


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
    component: AdministratorsView,
  },
  {
    path: '/Administrators/PersonalCenter',
    name: 'PersonalCenter',
    component:AdministratorsPersonalCenterView,
  },
  {
    path: '/Principal',
    name: 'Principal',
    component: PrincipalView
  },
  {
    path: '/GradeDirector',
    name: 'GradeDirector',
    component: GradedirectorView
  },
  {
    path: '/ClassTeacher',
    name: 'ClassTeacher',
    component: ClassteacherView
  },
  {
    path: '/Lecturer',
    name: 'Lecturer',
    component: LecturerView
  },
  {
    path: '/Student',
    name: 'Student',
    component: StudentView
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
