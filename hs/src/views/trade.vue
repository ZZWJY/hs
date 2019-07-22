<template>
  <div>
    <!-- 头部 -->
    <div class="trade_header">
      <router-link to="/" slot="left">
        <i class="iconfont icon-fanhui"></i>
      </router-link>
      <div>
        <router-link to="#">
          <i class="iconfont icon-ditu"></i>
          <span>深圳市</span>
          <i class="iconfont icon-xiangxia"></i>
        </router-link>
      </div>
      <router-link to="/">
        <i class="iconfont icon-guanbi"></i>
      </router-link>
    </div>
    <div class="price-content">
      <div class="price-card">
        <!-- 标题 -->
        <p>苹果 iPhone 8 Plus</p>
        <!-- 跳转到回收站 -->
        <router-link to="shop">
          <span>
            <i class="iconfont icon-gouwuche1"></i>
            加入购物车
          </span>
        </router-link>
        <!-- 价格 -->
        <p class="price-number">
          <span>3730</span>
          <span>元</span>
          <i class="iconfont icon-wenti"></i>
        </p>
        <div class="price_bottom">
          <span>一周后再降</span>
          <span style="color:#ffe4bc">￥202</span>
          <span>现在下单，价格有效期为下单后</span>
          <span style="color:#ffe4bc">10天</span>
        </div>
      </div>
      <div class="data-clear">
        <span>旧机数据安全清除</span>
        <i class="iconfont icon-wenti"></i>
        <s>￥50</s>
      </div>
    </div>
    <!-- 依旧换新 -->
    <div class="ofnew-module">
      <!-- 依旧换新——头部 -->
      <div class="head">
        <i class="iconfont icon-genghuanshouji"></i>
        <span>以旧换新</span>
        <span>正品自营</span>
      </div>
      <!-- 价格等 -->
      <div class="product">
        <div class="img_box">
          <img src="http://127.0.0.1:3000/img/trade/trade_product.jpg" alt />
          <span>换新省￥150</span>
        </div>
        <div class="text_box">
          <h4>荣耀 8X</h4>
          <span>6GB 128GB 幻夜黑 全网通</span>
          <div class="price">
            <i>0元换</i>
            <span>
              额外赚:
              <span>￥2181</span>
            </span>
            <s>官网原价:￥1699</s>
          </div>
        </div>
      </div>
      <!-- 按钮 -->
      <div class="btn">
        <div>暂不换新</div>
        <div>立即换新</div>
      </div>
    </div>
  </div>
</template>
<style scoped>
.trade_header {
  width: 100%;
  text-align: left;
  background-color: #fff;
}
.mint-header {
  background-color: #fff;
  height: 44px;
  color: #333;
  font-size: 1.2rem;
}
.router-link-active {
  line-height: 40px;
  padding-left: 15px;
}
.trade_header > div {
  display: inline-block;
  width: 80%;
  text-align: center;
}
.price-card {
  width: 100%;
  height: 150px;
  color: #fff;
  background: url("http://127.0.0.1:3000/img/trade/trade_bg.png");
  background-size: 100%;
  text-align: left;
  box-sizing: border-box;
  position: relative;
  padding: 20px 0 0 14px;
}
.price-card > p {
  font-size: 20px;
  line-height: 20px;
}
.price-card > a > span {
  position: absolute;
  top: 18px;
  left: 275.5px;
  font-size: 12px;
  color: #333;
  height: 26px;
  line-height: 26px;
  background-color: #fff;
  border-top-left-radius: 12px;
  border-bottom-left-radius: 12px;
  padding: 0 10px;
}
.price-number {
  margin-top: 30px;
  color: #ffe4bc;
  font-size: 12px !important;
}
.price-number > span:first-child {
  display: inline-block;
  font-size: 40px;
  margin-right: 5px;
}
.price-number > .icon-wenti {
  font-size: 16px;
}
.price_bottom {
  position: absolute;
  bottom: 0;
  left: 0;
  width: 100%;
  height: 26px;
  line-height: 26px;
  background: #cb654f;
  padding-left: 14px;
}
.price_bottom > span {
  font-size: 12px;
}
.data-clear {
  width: 100%;
  height: 44px;
  color: #111;
  padding: 15px 14px;
  text-align: left;
}
.data-clear > span {
  font-size: 14px;
}
.data-clear > s {
  float: right;
  font-size: 12px;
  color: #999;
}
.ofnew-module {
  padding: 15px;
  text-align: left;
}
.ofnew-module > .head {
  width: 100%;
  text-align: left;
  box-sizing: border-box;
  margin-bottom: 8px;
}
.head > .icon-genghuanshouji {
  font-size: 20px;
  color: #f00;
  padding-right: 5px;
}
.head span {
  font-size: 14px;
  padding-right: 5px;
  color: #333;
}
.head span:last-child {
  font-size: 12px;
  background: url("http://127.0.0.1:3000/img/trade/trade_kuang.png") no-repeat;
  background-size: 100%;
  padding: 2px 8px;
}
.product {
  display: flex;
  background-color: #f8f8f8;
  padding: 5px;
}
.product>.img_box{
  position: relative;
}
.product > .img_box > img {
  width: 69px;
  height: 70px;
  margin-right: 15px;
}
.product > .img_box > span {
  font-size: 10px;
  color: #fff;
  text-align: center;
  position: absolute;
  left: 0;
  bottom: 5px;
  width: 69px;
  height: 15px;
  border-radius: 20px 20px 0 0;
  background-color: #f00;
}
.product > .text_box {
  font-size: 12px;
  color: #999;
  padding-top: 12px;
}
.product > .text_box > h4 {
  color: #111;
  font-size: 14px;
}
.product > .text_box > span {
  font-size: 12px;
  margin-top: 4px;
}
.product > .text_box > .price > i {
  font-size: 10px;
  color: #fff;
  line-height: 14px;
  display: inline-block;
  vertical-align: middle;
  text-align: center;
  margin-right: 2px;
  width: 34px;
  height: 14px;
  background: url("http://127.0.0.1:3000/img/trade/trade_price_bg.png")
    no-repeat;
  background-size: 100%;
}
.product > .text_box > .price span,
s {
  font-size: 12px;
}
.product > .text_box > .price > span {
  color: #333;
}
.product > .text_box > .price > span > span {
  font-size: 14px;
  color: #7ed321;
  margin-right: 2px;
}
.ofnew-module > .btn{
  text-align: right;
}
.ofnew-module > .btn > div {
  display: inline-block;
  color: #333;
  font-size: 14px;
  height: 32px;
  line-height: 20px;
  border-radius: 3px;
  border: 1px solid #e1e1e1;
  padding:5px;
  margin-right: 10px;
  margin-top: 10px;
  box-sizing: border-box;
}
.ofnew-module>.btn>div:last-child{
  background-image: linear-gradient(-90deg,#ffd629,#fff03b);
}
</style>
