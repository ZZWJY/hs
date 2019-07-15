<template>
  <div>
    <mt-header title="门店详情">
      <router-link to="/" slot="left">
        <mt-button icon="back"></mt-button>
      </router-link>
    </mt-header>
    <div class="detail">
        <div class="title">
            <img class="shop-img" src=" " alt="">
            <h3 class="title-text">深圳益田假日店</h3>
        </div>
        <div class="address">
            <span class="address-text">
                深圳市南山区世界之窗地铁站C3出口益田假日广场B2层（麦当劳楼梯下方）
            </span>
            <a href="#">查看地图</a>
        </div>
        <div class="contact">
            <a href="#">02180111030 转分机号 1025</a>
        </div>
        <div class="hours-itme">
                工作日 10:00到22:00 节假日 10:00到22:00
        </div>
    </div>
    <div class="service">
        <h3 class="service-title">本站服务</h3>
        <div class="service-item">
            <h4 class="item-title">旧机回收</h4>
            <div class="item-desc">手机 笔记本 平板 摄影摄像 智能数码</div>
            <a class="item-btn" href="#">去回收</a>
            <span></span>
        </div>
        <div class="service-item">
            <h4 class="item-title">以旧换新</h4>
            <div class="item-desc">旧机抵扣 购买新机平均6折起</div>
            <a class="item-btn" href="#">去换新</a>
            <span></span>
        </div>
    </div>
  </div>
</template>
<script>
export default {
  data() {
    return {};
  }
};
</script>
<style scoped>
    .mint-header{
        font-size:17px;
        background-color: #fff;
        color:#000;
    }
    .detail{
        padding:0 1rem;
        height:273px;
    }
    .title{
        position: relative;
        padding:1rem 0;
        height:112px;
        padding-left:88px;
    }
    .shop-img{
        width:80px;height:80px;
        position: absolute;
        left:0;
    }
    .title-text{
       font-size:0.9rem; 
       text-align: left;
    }
    .address{
        position: relative;
        left:0;
        padding:12px 70px 14px 0;
        border-top:1px solid #e9e9e9;
        line-height: 6px;   
        height:70px;
    }
    .address-text{
        text-align: left;
        float: left;
        font-size:0.9rem;
        color:#333;
        line-height: 1.4rem;
    }
    .address>a{
        position: absolute;
        right:0;
        top:18px;
        font-size:0.9rem;
        color:#418be1;
    }
    .contact{
        border-top:1px solid #e9e9e9;
        /* height: 18px; */
    }
    .contact>a{
        float:left;
        font-size:0.9rem;
        color: #418be1;
         padding:14px 0;
    }
    .hours-itme{
        float:left;
        text-align: left;
        padding:14px 0;
        border-top:1px solid #e9e9e9;
        width:100%;
        font-size:0.9rem;
    }
    .service{
        height:165px;
    }
    .service-title{
        font-size:0.9rem;
        color:#666;
        padding:0 14px;
        text-align: left;
        font-weight: 400;
        border:3px solid #f9faff;
        background: #f9faff;
        line-height:28px;
        height:32px;
    }
    .service-item{
        position: relative;
        padding:12px 60px 12px 24px;
        margin:0 14px;

    }
    .item-title{
        font-size:0.95rem;
        font-weight: 400;
        text-align: left;
    }
    .item-desc{
        font-size:0.9rem;
        color:#999;
    }
    .item-btn{
        font-size:0.8rem;
        position: absolute;
        right:0;
        top:35%;
        padding:4px 8px;
        border:1px solid #ff4a49;
        color:#ff4a49;
        border-radius:4px;
    }
</style>
