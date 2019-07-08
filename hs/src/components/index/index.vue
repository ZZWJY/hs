<template>
    <div class="index">
        <div class="header">
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

<!-- tab-container -->
            <mt-tab-container v-model="selected">
                <mt-tab-container-item id="1">
                    <recommend></recommend>
                </mt-tab-container-item>
                <mt-tab-container-item id="2">
                    222222
                </mt-tab-container-item>
                <mt-tab-container-item id="3">
                    444444
                </mt-tab-container-item>
                <mt-tab-container-item id="4">
                    5555
                </mt-tab-container-item>
            </mt-tab-container>
            </div>
        </div>
    </div>
</template>
<script>
import recommend from "./index/recommend"
export default {
    data(){
        return {
            selected:'1'
        }
    },
    created(){
        console.log(this.selected)
    },
    components:{
        'recommend':recommend
    }
}
</script>
<style>
.margin{
    margin:0 1rem
}
.header-search{
    display:flex;
    /* margin-top:1rem; */
    justify-content: space-between;
    line-height:3rem;
    
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

