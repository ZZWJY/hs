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
             <mt-navbar class="page-part" :selected.sync="selected">
                <mt-tab-item id="1">选项一</mt-tab-item>
                <mt-tab-item id="2">选项二</mt-tab-item>
                <mt-tab-item id="3">选项三</mt-tab-item>
                <mt-tab-item id="3">选项四</mt-tab-item>
            </mt-navbar>

<!-- tab-container -->
            <mt-tab-container :active.sync="selected">
            <mt-tab-container-item id="1">
                <mt-cell v-for="n in 10" :title="'内容 ' + n"></mt-cell>
            </mt-tab-container-item>
            <mt-tab-container-item id="2">
                <mt-cell v-for="n in 4" :title="'测试 ' + n"></mt-cell>
            </mt-tab-container-item>
            <mt-tab-container-item id="3">
                <mt-cell v-for="n in 6" :title="'选项 ' + n"></mt-cell>
            </mt-tab-container-item>
            </mt-tab-container>
        </div>
    </div>
</template>
<script>
export default {
    data(){
        return {
            selected:1
        }
    },
    created(){
        console.log(this.selected)
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
    font-size:10px;
    
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

