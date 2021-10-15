import Vue from 'vue';
import Router from 'vue-router';
import Index from './components/sc/index.vue';
import Finance from './components/sc/finance.vue';
import Analysis from './components/sc/analysis.vue';
import Registe from './components/sc/registe.vue';
import Model from './components/sc/model.vue';
 import Home from './components/home.vue'


Vue.use(Router)

export default new Router({
  mode:'history',
  routes: [
    {path: '/',meta:{keepAlive:true},component:Index},
    {path:'/index',meta:{keepAlive:false},component:Index},
    {path:'/finance',meta:{keepAlive:true},component:Finance},
    {path:'/analysis',meta:{keepAlive:true},component:Analysis},
    {path:'/registe',meta:{keepAlive:false},component:Registe},
    {path:'/model',meta:{keepAlive:false},component:Model},
    {path:'/home',component:Home},
  ]
})
