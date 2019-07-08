<template>
    <div class="recom">
        <div class="banner">
            <img src="http://127.0.0.1:3000/img/index/refer/referbanner.jpg" alt="">
        </div>
        <div class="bg-z">
            <div class="coupon-container margin">
                <div class="left">
                    <div class="gjia">
                        <img src="http://127.0.0.1:3000/img/index/refer/xianshi.png" alt="">
                    </div>
                    <div style="margin-top:2rem" class="coupon-content"> 
                        <sup>￥</sup>
                       <span style="font-size:24px;">60</span> 
                    </div>                     
                </div>
                <div class="right">
                    <p style="color:#68acfe">选择机型查看优惠</p>
                    <p>最高加价：<sup style="color:#fc6232">￥</sup><span>60</span></p>
                </div>
            </div>
        </div>
        <div class="count-down">dsaasdas</div>
       
    </div>
</template>
<script>
export default {
    
}
</script>
<style scoped>
    .margin{
        margin:0 1rem
    }
  .recom{
      margin-top:.5rem;
  } 
  .recom  .banner>img{
      width:100%;
      
  }
  .banner{
      margin:0;
      padding:0;
  }
  .bg-z{
      width:100%;
      height:4rem;
      background:rgb(141, 75, 211);
      margin-top:-3px;
  }
  .coupon-container{
      height:5.5rem;
      background:#fff;
      box-shadow:0 0 60px 1px #eee;
      display:flex;
      border-bottom:1px solid #e6e6e6;
  }
  .coupon-container .left{
      background:url("http://127.0.0.1:3000/img/index/refer/jiajia.png")  no-repeat;
      background-position:58% 80%;
      background-size:5rem 4rem;
      width:235px;
      height:100%;
      color:#f00;
      position:relative
  }
  .coupon-content{
      position:absolute;
      top:-8px;
      left:64px;
      
  }
  .gjia{
      position:absolute;
      top:0px;
      left:0px;
  }
  .gjia img{
      width:60px;
  }
  .count-down{
      margin-top:20px;
  }
  .coupon-container .right{
      margin-top:1rem;
      width:100%;
      text-align:left;
  }
  .coupon-container .right span{
      font-size:24px;
      color:#fc6232;
      font-style:italic
  }
</style>