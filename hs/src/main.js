import Vue from 'vue'
import App from './App.vue'
import router from './router'
import Vuex from "vuex"

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
//将MINT-ui注册vue
//引入axios文件
import axios from "./axios"
Vue.use(axios)
//创建vuex实例
Vue.use(MINTUI)
import "./assets/Myfont/iconfont.css"
Vue.config.productionTip = false

new Vue({
  router,
  store,
  render: h => h(App)
}).$mount('#app')
