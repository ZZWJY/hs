<template>
    <div class="index-phone">
        <router-link to="#">
        <div class="navgator">
            <div class="navgator-four">
                <img src="http://127.0.0.1:3000/img/index/iPad/iPhone.png" alt="">
                <span>苹果</span>
            </div>
            <div class="navgator-four">
                <img src="http://127.0.0.1:3000/img/index/iPad/MI.png" alt="">
                <span>小米</span>
            </div>
            <div class="navgator-four">
                <img src="http://127.0.0.1:3000/img/index/iPad/HUAWEI.png" alt="">
                <span>华为</span>
            </div>
            <div class="navgator-four">
                <img src="http://127.0.0.1:3000/img/index/iPad/SAMSUNG.png" alt="">
                <span>三星</span>
            </div>
        </div>
        <div class="navgator">
            <div class="navgator-four">
                <img src="http://127.0.0.1:3000/img/index/iPad/honor.png" alt="">
                <span>荣耀</span>
            </div>
            <div class="navgator-four">
                <img src="http://127.0.0.1:3000/img/index/iPad/Lenovo.png" alt="">
                <span>联想</span>
            </div>
            <div class="navgator-four">
                <img src="http://127.0.0.1:3000/img/index/iPad/Nokia.png" alt="">
                <span>诺基亚</span>
            </div>
            <div class="navgator-four">
                <img src="http://127.0.0.1:3000/img/index/iPad/more.png" alt="">
                <span>更多</span>
            </div>
        </div>
        </router-link>
        <!-- 免费评估 -->
        <router-link to="#" class="assess">
            <img src="http://127.0.0.1:3000/img/index/iPad/mianfeigujia.png" alt="">
        </router-link>
        <router-link to="/comeback" class="assess">
            <img src="http://127.0.0.1:3000/img/index/iPad/toutiao.png" alt="">
        </router-link>
        <router-link to="/comeback1" class="assess">
            <img src="http://127.0.0.1:3000/img/index/iPad/iPadBanner.jpg" alt="">
        </router-link>
        <router-link to="/comeback1" class="assess">
            <img src="http://127.0.0.1:3000/img/index/iPad/bannerTop_second.jpg" alt="">
        </router-link>
        <router-link to="/comeback1" class="assess">
            <img src="http://127.0.0.1:3000/img/index/iPad/bannerTop_first.jpg" alt="">
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


