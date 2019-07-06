//  将引入axios库单独保存在一个文件中
//  减少main。js的代码量
//1 引入vue实例
import Vue from "vue" 
//2 引入axios实例
import axios from "axios" 
//3 发送请求时保存session信息
axios.defaults.withCredentials=true
//4 设置发送请求基础路径
axios.defaults.baseURL="http://127.0.0.1:3000/"
//5 将axios注册实例
Vue.prototype.axios=axios
//6 将main.js引入aioxs