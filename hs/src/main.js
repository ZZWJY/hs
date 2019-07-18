import Vue from 'vue'
import App from './App.vue'
import router from './router'
import Vuex from "vuex"
import vuesocketio from "vue-socket.io"

//注册vuex
Vue.use(Vuex)
//原因：引入有顺序
//第三方的组件库在下面引入
//完整引入MINT-ui
import MINTUI from 'mint-ui'
//单独引入mint-ui的样式
import "./assets/Indexfont/iconfont.css"
import "./assets/MyFont/iconfont.css"
import "./assets/newphonefont/iconfont.css"
//引入图标
import 'mint-ui/lib/style.css'
import myevent from "./event"
//将MINT-ui注册vue
//引入axios文件
import axios from "./axios"
Vue.use(axios)
//({connection:"http://127.0.0.1:2900",})
Vue.use(new vuesocketio({
  connection:"http://127.0.0.1:2900",
  debug:false
}))
//创建vuex实例
var store=new Vuex.Store({
  //定义全局修改的数据
  state:{
    serveinfo:{}
  },
  Mutations:{
    reserve(state,obj){
      state.serveinfo=obj
    }
  },
  getters:{
    getServeingo(state){
      return state.serveinfo
    }
  }
})
Vue.use(MINTUI)
Vue.use(myevent)
Vue.config.productionTip = false

new Vue({
  router,
  store,
  myevent,
  render: h => h(App)
}).$mount('#app')
