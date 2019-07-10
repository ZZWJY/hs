<template>
    <div class="index">
        <div class="header">
            <div class="header-full"> 
                <div class="header-search margin">
                    <router-link to="/">
                        <span class="search-left">深圳市</span>
                        <i class="iconfont icon-xiangxia"></i>
                    </router-link> 
                    <p class="search">
                        <i class="iconfont icon-simui-search"></i>
                        <input type="text" placeholder="检索您要卖的品牌、机器型号">
                    </p>
                    <div class="search-rigth">
                        <i class="iconfont icon-cart-circle"></i>
                    </div>
                </div>
                <div>
                    <mt-navbar v-model="selected">
                        <mt-tab-item id="1">推荐</mt-tab-item>
                        <mt-tab-item id="2">卖手机</mt-tab-item>
                        <mt-tab-item id="3">卖笔记</mt-tab-item>
                        <mt-tab-item id="4">卖平板</mt-tab-item>
                    </mt-navbar>
                </div>
            </div>   
            <div id='content-top'>
                <mt-tab-container v-model="selected" >
                    <mt-tab-container-item id="1">
                        <recommend></recommend>
                    </mt-tab-container-item>
                    <mt-tab-container-item id="2">
                        <phone></phone>
                    </mt-tab-container-item>
                    <mt-tab-container-item id="3">
                        <notebook></notebook>
                    </mt-tab-container-item>
                    <mt-tab-container-item id="4">
                        <ipad></ipad>
                    </mt-tab-container-item>
                </mt-tab-container>  
            </div> 
        </div>
    </div>
</template>
<script>
import recommend from "./index/recommend"
import phone from "./index/phone"
import notebook from "./index/notebook"
import ipad from "./index/ipad"
export default {
    data(){
        return {
            selected:'1'
        }
    },
    created(){
       
    },
    components:{
        'recommend':recommend,
        "phone":phone,
        "notebook":notebook,
        "ipad":ipad
    }
}
</script>
<style>
.margin{
    margin:0 1rem
}
#content-top{
    padding-top:6.7rem;
    padding-bottom:4rem;
}
.header-full .mint-navbar .mint-tab-item.is-selected{
    border-bottom:3px solid #ff0;
    color:black;
    font-weight:700
}
.header .mint-navbar .mint-tab-item{
    padding:1rem;
}
.header-search{
    display:flex;
    /* margin-top:1rem; */
    justify-content: space-between;
    line-height:3rem;
    
    
}
.header-full{
    
    background:#fff;
    width:100%;
     position:fixed;
    top:0;
    left:0;
    z-index:99 

}
.search-left{
    margin-right:.3rem;
    font-weight:600px;
    
}
.header-search .icon-xiangxia{
    font-size:.5rem;
    
}
.search{
    position:relative;
    margin:0 .6rem;
}
.search input{
    padding-left:1.5rem;
    height:2rem;
    border-radius:1.5rem;
    border:1px solid transparent;
    box-shadow:0 0 60px 1px #eee;
    outline:0;
    font-size:14px;
    width:200px;
    color:#999;
    
}
.search i{
    position:absolute;
    top:0rem;
    left:.2rem;
    font-weight:800;
    font-size:1.3rem; 
}
.search-rigth .icon-cart-circle{
    font-size:1.3rem;
}
</style>

