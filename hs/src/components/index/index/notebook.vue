<template>
    <div class="index-phone">
        <router-link to="#">
        <div class="navgator">
            <div class="navgator-four">
                <img src="http://127.0.0.1:3000/img/index/notebook/iPhone.png" alt="">
                <span>苹果</span>
            </div>
            <div class="navgator-four">
                <img src="http://127.0.0.1:3000/img/index/notebook/Lenovo.png" alt="">
                <span>联想</span>
            </div>
            <div class="navgator-four">
                <img src="http://127.0.0.1:3000/img/index/notebook/ASUS.png" alt="">
                <span>华硕</span>
            </div>
            <div class="navgator-four">
                <img src="http://127.0.0.1:3000/img/index/notebook/DELL.png" alt="">
                <span>戴尔</span>
            </div>
        </div>
        <div class="navgator">
            <div class="navgator-four">
                <img src="http://127.0.0.1:3000/img/index/notebook/ThinkPad.png" alt="">
                <span>ThinkPad</span>
            </div>
            <div class="navgator-four">
                <img src="http://127.0.0.1:3000/img/index/notebook/MI.png" alt="">
                <span>小米</span>
            </div>
            <div class="navgator-four">
                <img src="http://127.0.0.1:3000/img/index/notebook/hp.png" alt="">
                <span>惠普</span>
            </div>
            <div class="navgator-four">
                <img src="http://127.0.0.1:3000/img/index/notebook/something.png" alt="">
                <span>更多</span>
            </div>
        </div>
        </router-link>
        <!-- 免费评估 -->
        <router-link to="#" class="assess">
            <img src="http://127.0.0.1:3000/img/index/notebook/mianfeigujia.png" alt="">
        </router-link>
        <router-link to="#" class="assess">
            <img src="http://127.0.0.1:3000/img/index/notebook/toutiao.png" alt="">
        </router-link>
        <router-link to="#" class="assess">
            <img src="http://127.0.0.1:3000/img/index/notebook/touxbanner.jpg" alt="">
        </router-link>
        <router-link to="" class="assess">
            <img src="http://127.0.0.1:3000/img/index/notebook/jiqiao.jpg" alt="">
        </router-link>
        <router-link to="" class="assess">
            <img src="http://127.0.0.1:3000/img/index/notebook/ceping.jpg" alt="">
        </router-link>
    </div>
</template>
<script>
    export default {
        data(){
            return{
                
            }
        }
    }
</script>
<style scoped>
    .index-phone{
        width:100%;
    }
    .navgator{
        display:flex;
        margin:0 14px 10px;
        
    }
    .navgator-four{
        display:flex;
        flex-direction: column;
        align-items: center;
        width:100%;
    }
    .navgator-four img{
        width:100%;
    }
    .navgator-four span{
        color:#666;
        font-size:0.8rem;

    }
    a{
        text-decoration: none;
    }
    .assess img{
        width:100%;
    }
</style>


