<template>
  <div class="shop">
    <mt-header title="回收车" class="header">
      <router-link to="/" slot="left">
        <mt-button icon="back"></mt-button>
      </router-link>
    </mt-header>
    <ul class="tips">
      <li>
        <i></i>
        <span>保障隐私安全</span>
      </li>
      <li>
        <i></i>
        <span>专享上门服务</span>
      </li>
      <li>
        <i></i>
        <span>成交立即打款</span>
      </li>
    </ul>
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
.shop {
  background-color: #faf9ff;
}
.mint-header {
  background-color: #fff;
  height: 44px;
  color: #333;
  font-size: 1.2rem;
}
.tips {
  height: 42px;
}
.tips > li {
  width: 33%;
  line-height: 42px;
  display: inline-block;
}
.tips > li > i {
  display: inline-block;
  width: 5px;
  height: 5px;
  border: 1px solid #999;
  border-radius: 50%;
  margin-right: 4px;
  margin-bottom: 1px;
}
.tips > li >span{
    font-size: 12px;
}
</style>
