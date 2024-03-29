import Vue from 'vue'
import Router from 'vue-router'

import Index from "./views/Index"
import index from "./components/index/index"
import NewPhone from "./components/index/NewPhone"
import Serve from "./components/index/Serve"
import Me from "./components/index/Me"

Vue.use(Router)

export default new Router({
  routes: [
    {
      path: '/',
      name: 'index',
      component: Index
    },
   
    {
      path:"/index",component:Index,
      children:[
        {path:"index",component:index},
        {path:"me",component:Me},
        {path:"newPhone",component:NewPhone},
        {path:"serve",component:Serve},
      ]
    }
  ]
})
