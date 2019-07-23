<template>
  <div>
    <!-- 头部 -->
    <div class="trade_header">
      <div class="headers">
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
    </div>
    <div class="price-content">
      <div class="price-card">
        <!-- 标题 -->
        <p>苹果 iPhone 8 Plus</p>
        <!-- 跳转到回收站 -->
        <span @touchstart="addShop">
          <i class="iconfont icon-gouwuche1"></i>
          加入购物车
        </span>
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
    <!-- 以旧换新 -->
    <div class="ofnew-module">
      <!-- 以旧换新——头部 -->
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
    <!-- 面板切换 -->
    <div>
      <!-- 导航头部 -->
      <div class="tabs">
        <span class="active" @touchstart="ontabs($event)" data-number=1>
          去门店
          <span>马上换钱</span>
        </span>
        <span @touchstart="ontabs($event)" data-number=2>约上门</span>
        <span @touchstart="ontabs($event)" data-number=3>寄快递</span>
      </div>
      <!-- 面板1  去门店 -->
      <div class="tabs_item1" v-show="number==1">
        <p>前往附近门店体验一对一回收服务，成交后可当场获得回收款；前往自助回收机，体验智能自助回收。</p>
        <mt-field label="手机号" placeholder="请输入手机号" v-model="phone" class="phone"></mt-field>
        <p>选择门店</p>
        <router-link to="/">
          <div>深圳益田假日酒店</div>
          <div>选择其他门店&gt;</div>
        </router-link>
      </div>
      <!-- 面板2  约上门 -->
      <div class="tabs_item2" v-show="number==2">
        <p>爱回收专业工程师将免费上门进行旧机检测，成交后可当场获得回收款。</p>
        <mt-field label="手机号" placeholder="请输入手机号" v-model="phone" class="phone"></mt-field>
        <p>上门信息</p>
        <mt-field placeholder="搜索您的小区、大厦、街道名称" v-model="phone" class="phone"></mt-field>
        <mt-field placeholder="填写楼牌号/门号" v-model="phone" class="phone"></mt-field>
      </div>
      <!-- 面板3  寄快递 -->
      <div class="tabs_item3" v-show="number==3">
        <div>
          快递方式
          <router-link to="#">运费说明</router-link>
        </div>
        <!-- 顺丰上门 -->
        <div class="inps">
          <div>
          <input type="checkbox" checked>
          </div>
          <span>
          <span>顺丰上门收件</span>
          <span>顺丰快递将免费上门收取旧机，运费请查看“运费说明”。</span>
          </span>
        </div>
        <div class="inps_item">
          <mt-field label="联系人" placeholder="请输入联系人姓名" v-model="phone" class="phone"></mt-field>
          <mt-field label="手机号" placeholder="请输入手机号" v-model="phone" class="phone"></mt-field>
        </div>
        <!-- 速递 -->
        <div class="inps">
          <div>
          <input type="checkbox">
          </div>
          <span>
          <span>速递易快递柜</span>
          <span>前往快递柜，凭订单详情中的寄件码寄出旧机。</span>
          </span>
        </div>
      </div>
    </div>
    <!-- 用户协议 -->
    <div>
      <div class="name_deal">
        提交订单等于同意
        <span>"用户协议"</span>
        及
        <span>"隐私政策"</span>
      </div>
    </div>
    <!-- 底部 -->
    <div class="order-bars">
      <div class="order-bar">
        <router-link to="/">
          <i class="iconfont icon-gouwuche1"></i>
        </router-link>
        <span class="order_title">
          回收金额:
          <span class="order_price">￥1699</span>
        </span>
        <span class="order_btn">立即回收</span>
      </div>
    </div>
  </div>
</template>
<script>
export default {
  data() {
    return {
      phone: "",
      pickerVisible:"",
      number:1
    };
  },
  methods: {
    ontabs(e) {
      var tabs=document.getElementsByClassName("tabs")[0].children;
      for(var item of tabs){
        item.classList.remove("active")
      }
      e.target.classList.add("active")
      this.number=e.target.dataset.number;
    },
    addShop() {
      this.$toast("已加入购物车");
    }
  }
};
</script>
<style scoped>
.trade_header {
  width: 100%;
  position: fixed;
  top: 0;
  left: 0;
  background-color: #fff;
  z-index: 999;
}
.headers {
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
.headers > div {
  display: inline-block;
  width: 80%;
  text-align: center;
}
.price-content {
  margin-top: 40px;
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
.price-card > span {
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
.product > .img_box {
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
.ofnew-module > .btn {
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
  padding: 5px;
  margin-right: 10px;
  margin-top: 10px;
  box-sizing: border-box;
}
.ofnew-module > .btn > div:last-child {
  background-image: linear-gradient(-90deg, #ffd629, #fff03b);
}
.tabs {
  display: flex;
}
.tabs > span {
  font-size: 14px;
  color: #666;
  width: 125px;
  height: 45px;
  line-height: 25px;
  padding-top: 14px;
  text-decoration: none;
  text-align: center;
  box-sizing: border-box;
  position: relative;
}
.tabs > span > span {
  white-space: nowrap;
  overflow: hidden;
  text-overflow: ellipsis;
  font-size: 10px;
  height: 14px;
  line-height: 14px;
  padding: 0 5px;
  border-bottom-right-radius: 7px;
  border-top-left-radius: 7px;
  border-top-right-radius: 7px;
  color: #fff;
  background: linear-gradient(
    -90deg,
    rgba(255, 104, 48, 0.55),
    rgba(255, 73, 73, 0.55)
  );
  position: absolute;
  left: 70%;
  top: 10px;
}
.active {
  font-size: 16px !important;
  color: #000 !important;
  border-bottom: 3px solid #0f0;
}
.tabs_item1 > p,
.tabs_item2 > p {
  padding: 12px 14px;
  background: #f9faff;
  font-size: 14px;
  text-align: left;
}
.mint-cell {
  border: 1px solid #e1e1e1;
  width: 90%;
  margin: 0 auto;
}
.tabs_item1 > .router-link-active{
  display: inline-block;
  width: 100%;
  height: 88px;
  background: url("http://127.0.0.1:3000/img/trade/trade_map.png") no-repeat;
  background-size: 100%;
  text-align: left;
}
.tabs_item1 > a > div {
  height: 20px;
  line-height: 20px;
  color: #999;
  font-size: 12px;
  box-sizing: border-box;
}
.tabs_item1 > a > div:first-child {
  font-size: 14px;
  font-weight: 700;
  color: #000;
  margin-top: 15px;
}
.name_deal {
  text-align: left;
  margin: 5px 0 0 15px;
  font-size: 12px;
  color: #999;
  margin-bottom: 80px;
}
.name_deal > span {
  font-size: 12px;
  color: #4a90e2;
}
.order-bars {
  width: 100%;
  position: fixed;
  bottom: 0;
  left: 0;
  background-color: #fff;
}
.order-bar {
  width: 100%;
  height: 50px;
  line-height: 50px;
  text-align: right;
  position: relative;
}
.order-bar i {
  font-size: 30px;
  position: absolute;
  bottom: 2px;
  left: 5px;
}
.order_btn {
  display: inline-block;
  font-size: 16px;
  font-weight: 700;
  width: 120px;
  text-align: center;
  color: #000;
  background: #f9e72c;
  margin-left: 15px;
}
.order_title {
  font-size: 14px;
}
.order_price {
  font-size: 14px;
  color: #fc6c40;
}
.tabs_item3{
  text-align: left;
  padding: 20px 14px 10px;
}
.tabs_item3>div{
  color: #666;
  font-size: 14px;
}
.tabs_item3>div>a{
  float: right;
  font-size: 14px;
  color: #4a90e2;
}
.inps{
  display: flex;
  width:100%;
  margin-top: 20px;
  background-color: #f5f5f5;
  padding:20px;
}
.inps>div{
  padding:20px;
  display: inline-block;
}
.inps>span{
  display: inline-block;
  color:#111;
  font-size: 16px;
}
.inps>span>span:last-child{
  display: block;
  margin-top:3px;
  font-size: 14px;
  color:#999;
}
.inps_item .mint-cell {
  margin:10px 0;
  width: 100%;
}
</style>
