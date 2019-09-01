<template>
  <div>
    <div class="top">
      <router-link to="/">
        <span class="back"><</span>
      </router-link>
      <span class="title">下单成功</span>
    </div>
    <div class="main">
      <span class="bgimg"></span>
      <span class="main-title">订单提交成功</span>
    </div>
    <p class="main-font">您已预约门店交易</p>
    <p class="main-font" id="time"></p>
    <p class="main-font">届时门店工程师将联系您，请保持手机畅通</p>
    <div class="address">
      <p class="main-font address-font">深圳益田假日店</p>
      <p class="main-font address-w">深圳市南山区世界之窗地铁站C3出口益田假日广场B2层（麦当劳楼梯下方）</p>
      <router-link to="/">
        <span class="main-img"></span>
      </router-link>
    </div>
    <div class="tips">
      <p class="main-font">注意事项：</p>
      <p class="main-font">交易时需要出事身份证件，满18岁方可交易。</p>
    </div>
    <div class="foot">
      <router-link to="/">
        <span class="foot1">返回首页</span>
      </router-link>
      <router-link to="/">
        <span class="foot2">查看订单</span>
      </router-link>
    </div>
  </div>
</template>
<script>
export default {
  data() {
    return {};
  },
  methods: {},
  mounted() {
    var time = document.getElementById("time");
    var myDate = new Date();
    var myTime = myDate.toLocaleString();
    time.innerHTML = myTime;
  }
};
</script>
<style scoped>
.foot1 {
  float: left;
  width: 50%;
  background: #fff;
  line-height: 48px;
  color: #33271f;
}
.foot2 {
  float: right;
  width: 50%;
  line-height: 48px;
  color: #ecd2a1;
  background: #33271f;
}
.foot {
  font-size: 16px;
  position: fixed;
  left: 0;
  bottom: 0;
  height: 48px;
  width: 100%;
}
.tips {
  text-align: left;
  padding: 10px;
}
.main-img {
  background: url("http://127.0.0.1:3000/img/index/submit/phone.png");
  background-size: 100%;
  position: absolute;
  top: 40px;
  right: 40px;
  height: 27px;
  width: 23px;
}
.address-w {
  width: 80%;
  border-right: 1px solid #e1e1e1;
}
.address-font {
  font-weight: bold;
}
.address {
  text-align: left;
  padding: 20px 10px;
  margin-top: 30px;
  border-top: 1px solid #e1e1e1;
  position: relative;
}
.main-font {
  font-size: 14px;
  margin: 0;
}
.main-title {
  font-size: 16px;
  font-weight: bold;
  display: flex;
  margin-left: 3px;
}
.bgimg {
  background: url("http://127.0.0.1:3000/img/index/submit/submit.png");
  background-size: 100%;
  display: flex;
  width: 20px;
  height: 20px;
  margin-left: -20px;
}
.main {
  margin-top: 42px;
  padding: 40px 0 20px 20px;
  display: flex;
  justify-content: center;
}
.top {
  z-index: 1;
  position: fixed;
  top: 0;
  left: 0;
  background: #fff;
  line-height: 41px;
  width: 100%;
}
.title {
  font-size: 20px;
}
.back {
  float: left;
  font-size: 22px;
  padding-left: 10px;
  font-size: 30px;
}
</style>


