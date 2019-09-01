<template>
  <div class="container">
    <div class="page-inquiry has-commit">
        <div class="header-container">
            <mt-header title="填写估价信息">
            <router-link to="/category" slot="left">
                <mt-button icon="back"></mt-button>
            </router-link>
            </mt-header>
            <div class="process-bar">
                <div class="procss"></div>
                <p class="tap">选择结果和实际相符，将以最快速度收款</p>
                <p class="step">
                    <span>11</span>/11
                </p>
            </div>
            <div class="current-device">
                <span>当前估价机型：</span>
                <span class="device-name">苹果 IPHONE 8 PLUS</span>
            </div>
        </div>
        <ul class="inquiry-container" >
            <li @click="clicks">
                <p class="radio-title"  >
                    <i class="icon-count">1</i>
                    <span class="title">使用情况</span>
                    <span class="result">正常进入桌面</span>
                    <i class="icon-change"></i>
                </p>
                <!-- 选项列表 -->
                <ul id="t1">
                    <li><i class="iconfont icon-wenti"></i>正常进入桌面</li>
                    <li><i class="iconfont icon-wenti"></i>全新包装未拆封</li>
                    <li class="li-span">
                        <span><i class="iconfont icon-wenti"></i>无法开机/无法进入桌面</span>
                        <span>因隐私安全，仅支持环保回收</span>
                    </li>
                </ul>
            </li>
            <li @click="clicks2">
                <p class="radio-title"  >
                    <i class="icon-count">2</i>
                    <span class="title">边框背板</span>
                    <span class="result">完美无任何瑕疵</span>
                    <i class="icon-change"></i>
                </p>
                <ul id="t2">
                    <li><i class="iconfont icon-wenti"></i>完美无任何瑕疵</li>
                    <li><i class="iconfont icon-wenti"></i>少量细微瑕疵/划痕</li>
                    <li><i class="iconfont icon-wenti"></i>明显划痕/磕碰/掉漆</li>
                    <li><i class="iconfont icon-wenti"></i>外壳裂痕/变形/刻字</li>
                    <li><i class="iconfont icon-wenti"></i>全新包装未拆封</li>
                </ul>
            </li>
            <li @click="clicks3">
                <p class="radio-title">
                    <i class="icon-count">3</i>
                    <span class="title">屏幕外观</span>
                    <span class="result">屏幕无任何划痕</span>
                    <i class="icon-change"></i>
                </p>
                <ul id="t3">
                    <li><i class="iconfont icon-wenti"></i>屏幕无任何划痕</li>
                    <li><i class="iconfont icon-wenti"></i>屏幕少量细微划痕</li>
                    <li><i class="iconfont icon-wenti"></i>明显划痕/缺角/碎裂</li>
                </ul>
            </li>
            <li @click="clicks4">
                <p class="radio-title">
                    <i class="icon-count">4</i>
                    <span class="title">屏幕显示</span>
                    <span class="result">显示完美几乎全新</span>
                    <i class="icon-change"></i>
                </p>
                <ul id="t4">
                    <li>显示完美几乎全新</li>
                    <li>显示细微色差/泛黄</li>
                    <li>明显色斑/漏液/老化</li>
                    <li>屏幕无法正常显示</li>
                </ul>
            </li>
            <li @click="clicks5">
                <p class="radio-title">
                    <i class="icon-count">5</i>
                    <span class="title">型号</span>
                    <span class="result">A1864-全网通</span>
                    <i class="icon-change"></i>
                </p>
                <ul id="t5">
                    <li>A1864-全网通</li>
                    <li>其他</li>
                </ul>
            </li>
            <li @click="clicks6">
                <p class="radio-title">
                    <i class="icon-count">6</i>
                    <span class="title">存储容量</span>
                    <span class="result">256G</span>
                    <i class="icon-change"></i>
                </p>
                <ul id="t6">
                    <li>256G</li>
                    <li>64G</li>
                </ul>
            </li>
            <li @click="clicks7">
                <p class="radio-title">
                    <i class="icon-count">7</i>
                    <span class="title">购买渠道</span>
                    <span class="result">大陆国行</span>
                    <i class="icon-change"></i>
                </p>
                <ul id="t7">
                    <li>大陆国行</li>
                    <li>国行官换机</li>
                    <li>香港行货</li>
                    <li>国行展示机</li>
                    <li>非国行港行-无锁</li>
                    <li>非国行港行-有锁</li>
                </ul>
            </li>
            <li @click="clicks8">
                <p class="radio-title">
                    <i class="icon-count">8</i>
                    <span class="title">机身颜色</span>
                    <span class="result">黑色</span>
                    <i class="icon-change"></i>
                </p>
                <ul id="t8">
                    <li>金色</li>
                    <li>白色</li>
                    <li>黑色</li>
                    <li>红色</li>
                </ul>
            </li>
            <li @click="clicks9">
                <p class="radio-title">
                    <i class="icon-count">9</i>
                    <span class="title">苹果保修期时长</span>
                    <span class="result">保修期剩余一个月以上</span>
                    <i class="icon-change"></i>
                </p>
                <ul id="t9">
                    <li>保修期剩余一个月以上</li>
                    <li>过保/保修期不足一个月</li>
                </ul>
            </li>
            <li @click="clicks10">
                <p class="radio-title">
                    <i class="icon-count">10</i>
                    <span class="title">苹果id账号是否可退出</span>
                    <span class="result">苹果 id账号可退出</span>
                    <i class="icon-change"></i>
                </p>
                <ul id="t10">
                    <li><i class="iconfont icon-wenti"></i>苹果 id账号可退出</li>
                    <li class="li-span">
                        <span><i class="iconfont icon-wenti"></i>苹果 id账号无法退出</span>
                        <span>因隐私安全，仅支持环保回收</span>
                    </li>
                </ul>
            </li>
            <li @click="clicks11">
                <p class="radio-title">
                    <i class="icon-count">11</i>
                    <span class="title">维修情况</span>
                    <span class="result">无维修情况</span>
                    <i class="icon-change"></i>
                </p>
                <ul id="t11">
                    <li>无维修情况</li>
                    <li>屏幕维修</li>
                    <li>主板维修</li>
                    <li>屏幕和主板均有维修</li>
                </ul>
            </li>
        </ul>
        <div class="commit-button">
            <router-link to="/trade">
                <span>马上评估</span>
            </router-link>
        </div>
    </div>
  </div>
</template>
<script>
export default {
  data() {
    return {

    };
  },
  methods:{
    clicks(){
        // var ul=document.querySelector("li ul");
            if(t1.style.height==""){
                t1.style.height=200+"px";
            }else{
                t1.style.height="";
            }  
        
    },
    clicks2(){
        if(t2.style.height==""){
            t2.style.height=320+"px";
        }else{
            t2.style.height="";
        }  
    },
    clicks3(){
        if(t3.style.height==""){
            t3.style.height=200+"px";
        }else{
            t3.style.height="";
        }  
    },
    clicks4(){
        if(t4.style.height==""){
            t4.style.height=250+"px";
        }else{
            t4.style.height="";
        }  
    },
    clicks5(){
        if(t5.style.height==""){
            t5.style.height=140+"px";
        }else{
            t5.style.height="";
        }  
    },
    clicks6(){
        if(t6.style.height==""){
            t6.style.height=140+"px";
        }else{
            t6.style.height="";
        }  
    },
    clicks7(){
        if(t7.style.height==""){
            t7.style.height=370+"px";
        }else{
            t7.style.height="";
        }  
    },
    clicks8(){
        if(t8.style.height==""){
            t8.style.height=250+"px";
        }else{
            t8.style.height="";
        }  
    },
    clicks9(){
        if(t9.style.height==""){
            t9.style.height=140+"px";
        }else{
            t9.style.height="";
        }  
    },
    clicks10(){
        if(t10.style.height==""){
            t10.style.height=140+"px";
        }else{
            t10.style.height="";
        }  
    },
    clicks11(){
        if(t11.style.height==""){
            t11.style.height=250+"px";
        }else{
            t11.style.height="";
        }  
    },
  }
};
</script>
<style scoped>
    .container{
        text-align:left !important
    }
    li p{
	    padding-left: 20px;
	    cursor: pointer;
    }
    li ul{
        /*display: none; */
        height:0;
        overflow:hidden;
        transition: all .5s linear;
    }
    li ul li{
        margin-bottom: 12px;
        height: 48px;
        line-height: 48px;
        font-size:14px;
        color:#000;
        position: relative;
        border: 1px solid #e1e1e1;
        border-radius: 8px;
        padding-left: 40px;
        background-color: #f9faff;
        border-color: #f9faff;
    }
    li ul li span{
        font-size:10px;
        color:#666;   
    }
    .li-span{
        display:flex;
        flex-direction: column;
        line-height: 20px;;
    }
    li span:first-child{
        font-size:14px;
        color:#000;
    }
    .container{
        height:667px;
        width:375px;
    }
    .page-inquiry{
        position: relative;
        background-color: #f9faff;
        font-size:12px;
        margin:0 auto;
        height:100%;
        /* padding-bottom:70px; */
        padding:113px 14px 0px;
        max-width:750px;
        min-width:320px;
    }
    .has-commit{
        padding-bottom:70px;
    }
    .header-container{
        position: absolute;
        top:0;
        left:0;
        width:100%;
        z-index:2;
        /* position: fixed; */
    }
    .mint-header{
        font-size:17px;
        background-color: #fff;
        color:#000;
    }
    .process-bar{
        position: relative;
        height:28px;
        background-color: #f0f0f0;
        line-height: 28px;
    }
    .procss{
        position: absolute;
        left:0;top:0;
        height:100%;
        width:100%;
        background: linear-gradient(to right,#fffa8f 0%,#ffd33f 100%);
    }
    .tap{
        font-size:0.7rem;
        margin-left:0.9rem;
        position: relative;
        float:left;
        z-index:2;
    }
    .step{
        position: relative;
        color:#666;
        font-size:14px;
        float: right;
        padding-right:10px;
    }
    .step>span{
        font-size:14px;
        color:red;
    }
    .current-device{
        color:#666;
        padding:15px 14px 10px;
        line-height: 1rem;

    }
    .current-device span{
        font-size:0.7rem;
    }
    .device-name{
        font-weight: 900;
        color:#000;
    }
    .page-inquiry .inquiry-container{
        height: 100%;
        overflow-x:hidden;
        overflow-y:scroll;
        background-color: #fff;
        border-radius: 4px;
    }
    .radio-title{
        height:46px;
        display: flex;
        align-items: center;
        padding-left:11px;
    }
    .icon-count{
        width:22px;height:32px;
        background-size:100%;
        font-weight: 700;
        padding-top:8px;/*先用数字表示*/
    }
    .title{
        color:#111;
        font-size:16px;
        font-weight: 700;
        margin:0 6px;
    }
    .result{
        color:#999;
        font-size:0.7rem;
        margin-left:30px;
        margin-right:8px;
        text-align: right;
        white-space: nowrap;
        overflow: hidden;
        text-overflow: ellipsis;
        flex-grow: 1;
        flex-shrink: 1;
        flex-basis: 0%;
    }
    .icon-change{
        height:100%;
        width:52px;
        background-image: url("http://127.0.0.1:3000/img/use/xiugai.png");
        background-size: 3.3rem 1.3rem;
        background-position: 100%;
        background-repeat: no-repeat;
    }
    .commit-button{
        position: absolute;
        left:0;
        bottom:0;
        width:100%;
        height:50px;
        background-color: #f9e72c;
        text-align: center;
        padding:19px 0;
    }
    .commit-button span{
        color:#111;
        font-size:16px;
        line-height:22px;
    }
</style>

