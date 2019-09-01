<template>
  <div>
    <div class="top">
      <router-link to="detail">
        <span class="back"><</span>
      </router-link>
      <span class="title">提交订单</span>
    </div>
    <img class="top-pic" src="http://127.0.0.1:3000/img/index/submit/submitBanner.png" alt />
    <div class="content">
      <div class="write-info">
        <p>填写用户信息</p>
        <span class="write">手机号</span>
        <input class="input" type="text" autofocus="autofocus" />
      </div>
      <div class="trade">
        <p>填写交易信息</p>
        <div>
          <span class="city-pic"></span>
          <span class="city">深圳市</span>
        </div>
      </div>
      <div class="market">选择门店</div>
      <div class="go-market">
        <p>请选择门店</p>
        <router-link class="router-a" to="/">
          <span class="tip-h">></span>
        </router-link>
      </div>
      <div>
        <p>订单信息</p>
        <td class="order-info"></td>
        <td>荣耀8X 6GB+128GB 幻影蓝</td>
        <td>
          <span class="td-style">￥1699</span>
        </td>
        <table>
          <tr class="table-style">
            <td class="order-detail old">旧机抵扣</td>
            <td class="old-style">苹果 iPhone 8 Plus</td>
            <td>
              <span class="td-style1">-￥2750</span>
            </td>
          </tr>
          <tr class="table-style">
            <td class="order-detail new">换新优惠</td>
            <td class="old-style">环保补贴</td>
            <td>
              <span class="td-style1">-￥150</span>
            </td>
          </tr>
          <tr class="table-style">
            <td class="order-detail add">旧机加价</td>
            <td class="old-style">旧机加价券</td>
            <td>
              <span class="td-style1">-￥55</span>
            </td>
          </tr>
        </table>
        <div class="old-style total">
          「0元换」额外赚
          <span class="total-num">￥1256</span>
        </div>
        <div class="tip">
          <ul class="tip-style">
            <li>
              提交订单等于同意
              <a class="router-a" href="javascript:;">《爱回收条款》</a>及
              <a class="router-a" href="javascript:;">《隐私政策》</a>
            </li>
            <li>预约日期内未到店的订单，将被自动取消</li>
            <li>实际回收价格以交易时的爱回收专业质检结果和报价为准</li>
            <li>补贴优惠适用于至少一部旧机回收金额超过50元</li>
          </ul>
        </div>
        <div class="footer">
          <div class="old-style footer-total">
            「0元换」额外赚
            <span class="footer-num">￥1256</span>
          </div>
          <div class="footer-sub">
            <router-link to="/order">提交订单</router-link>
          </div>
        </div>
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
.footer-total {
  width: 230px;
  margin-left: 20px;
}
.footer-num {
  color: #3eb052;
  font-weight: 600;
  font-size: 18px;
}
.footer-sub a {
  color: #ecd2a1;
  text-decoration: none;
}
.footer-sub {
  font-size: 16px;
  line-height: 31px;
  background: #33271f;
  width: 145px;
  font-weight: 600;
  text-align: center;
  line-height: 45px;
}
.footer {
  display: flex;
  justify-content: space-between;
  position: fixed;
  left: 0;
  bottom: 0;
  z-index: 10;
  background: #fff;
  align-content: center;
  width: 100%;
  line-height: 45px;
}
.tip-style li a {
  color: #4a90e2;
}
.tip-style li {
  padding: 2px 0;
}
.tip-style {
  list-style: none;
  padding-left: 0;
}
.tip {
  font-size: 12px;
  color: #666;
  list-style: none;
  margin-bottom: 60px;
}
.total-num {
  color: #3eb052;
  font-size: 24px;
  font-weight: 600;
  margin-right: 10px;
}
.total {
  display: flex;
  justify-content: flex-end;
  padding: 10px 0;
  margin: 5px 0;
  border-top: 1px solid #dedede;
  line-height: 31px;
}
.table-style {
  margin-top: 32px;
}
.td-style1 {
  font-size: 14px;
  margin-left: 100px;
  color: #f8943b;
}
.old-style {
  font-size: 14px;
}
.add {
  border: 1px solid #b18f56;
  color: #b18f56;
}
.new {
  border: 1px solid #009971;
  color: #009971;
}
.old {
  color: #f8943b;
  border: 1px solid #f8943b;
}
.order-detail {
  font-size: 10px;
  width: 50px;
  border-radius: 3px;
}
.td-style {
  margin-left: 65px;
}
.order-info {
  background: url("http://127.0.0.1:3000/img/index/submit/product.png");
  background-size: 100% 100%;
  width: 26px;
  height: 26px;
}
.tip-h {
  line-height: 47px;
  font-size: 18px;
  color: #666;
  margin-right: 10px;
  text-decoration: none;
}
.go-market {
  font-size: 14px;
  color: #999;
  display: flex;
  justify-content: space-between;
}
.market {
  background: url("http://127.0.0.1:3000/img/index/submit/market.png");
  background-size: 100%;
  font-size: 13px;
  margin-top: 10px;
  width: 72px;
  color: #fff;
  text-align: center;
}
.trade {
  display: flex;
  justify-content: space-between;
  border-bottom: 1px solid #dedede;
}
.city {
  line-height: 54px;
  font-size: 13px;
  padding-right: 5px;
}
.city-pic {
  background: url("http://127.0.0.1:3000/img/index/submit/map.png");
  background-size: 100%;
  width: 11px;
  height: 12px;
  position: absolute;
  top: 230px;
  right: 60px;
}
.input {
  border: none;
}
.write-info {
  margin-bottom: 20px;
}
.write {
  font-size: 14px;
  margin: 0 10px;
}
.content {
  padding: 0 10px;
  text-align: left;
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
  font-size: 18px;
}
.back {
  float: left;
  font-size: 22px;
  padding-left: 10px;
  font-size: 30px;
}
.top-pic {
  width: 100%;
  margin-top: 41px;
}
.router-a {
  text-decoration: none;
}
</style>
