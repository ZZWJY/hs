//  将引入axios库单独保存在一个文件中
//  减少main。js的代码量
//1 引入vue实例
import Vue from "vue" 
//2 引入axios实例
import axios from "axios" 
import qs from "qs"
 const Axios=axios.create({
//3 发送请求时保存session信息
// axios.defaults.withCredentials=true
    baseURL:"http://127.0.0.1:3000/",
    withCredentials:true
//4 设置发送请求基础路径
// axios.defaults.baseURL="http://127.0.0.1:3000/"
   
 })
   Axios.interceptors.request.use(
   
//      config=>{
//         //请求拦截器
//         //axios默认post请求参数为查询字符串
//         //如果是post请求，利用qs模块将查询字符串转化为对象
//         if(config.method==="post"){
//             config.data=qs.stringify(config.data)
//         }
//         return config
//     },err=>{
     
//     }
    config=>{
      console.log("进入拦截器")
      if(sessionStorage.getItem("token")){
        config.headers.token=sessionStorage.getItem("token")
      }
      if(localStorage.getItem("token")){
        config.headers.token=localStorage.getItem("token")
      }
      return config
      },error=>{
        return Promise.reject(error)
      }
    
  )
  function alert1(msg){
    var div=document.createElement("div"); 
    var str=`width:150px;height:40px;position:absolute;top:50%;left:30%;background:#00000070;display:block;line-height:40px;color:#fff;
         font-size:14px;transformm:translate(50px 12px);border-radius:10px;padding:0 10px`;
    div.style.cssText=str;
    div.innerHTML=msg+"请重新登录"
    document.body.appendChild(div);
    setTimeout(function(){
      document.body.removeChild(div)
    },3000)
  }
  Axios.interceptors.response.use(res=>{
    if(res.data.status==403){
      alert1(res.data.msg+",请重新登录")
      window.location.href="http://127.0.0.1:8080/#/login?type=1"
      localStorage.removeItem("token")
      localStorage.removeItem("name")
      sessionStorage.removeItem("token")
      sessionStorage.removeItem("name")
      // Store.commit("setlogin",false)
      // Store.commit("setUname","")
    }
    return res
  })
//5 将axios注册实例

export default {
    install: function(Vue, Option){
      Vue.prototype.axios=Axios;
    }
  }


//6 将main.js引入aioxs