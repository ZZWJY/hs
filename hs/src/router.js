import Vue from 'vue'
import Router from 'vue-router'
import Index from "./views/Index"
import index from "./components/index/index"
import NewPhone from "./components/index/NewPhone"
import Serve from "./components/index/Serve"
import Me from "./components/index/Me"
import login from "./views/Login"
import recommend from "./components/index/index/recommend"
import ipad from "./components/index/index/ipad"
import notebook from "./components/index/index/notebook"
import phone from "./components/index/index/phone"
import love from "./components/index/love"
import shop from "./components/index/shop"

Vue.use(Router)

export default new Router({
  routes: [
    {
      path:"/",
      redirect:"/index/index/recommend"
    },
    {
      path:"/index",
      redirect:"/index/index/recommend"
    },
    {path:"/login",component:login},
    {path:"/love",component:love},
    {path:"/shop",component:shop},
    {
      path:"/index",component:Index,
        children:[
          {path:"index",component:index,
            children:[
              {path:"recommend",component:recommend},
              {path:"ipad",component:ipad},
              {path:"notebook",component:notebook},
              {path:"phone",component:phone}
            ]
          },
          {path:"me",component:Me},
          {path:"newPhone",component:NewPhone},
          {path:"serve",component:Serve},
        ]
    }
  ]
})
