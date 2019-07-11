<template>
  <div>
    <mt-navbar v-model="selected">
      <mt-tab-item id="1">option A</mt-tab-item>
      <mt-tab-item id="2">option B</mt-tab-item>
      <mt-tab-item id="3">option C</mt-tab-item>
      <mt-tab-item id="4">option C</mt-tab-item>
      <mt-tab-item id="5">option C</mt-tab-item>
      <mt-tab-item id="6">option C</mt-tab-item>
    </mt-navbar>

    <mt-tab-container v-model="selected">
      <mt-tab-container-item id="1">
        <div>
          <div class="site">
            <h4>深圳金港城店</h4>
            <p>深圳市宝安区宝安大道4009-1号首层金港城沃尔玛正门进去左手边</p>
            <div>
              <span class="tag-item">回收</span>
              <span class="tag-item">以久换新</span>
            </div>
          </div>
          <div class="si-action">
            <a href="#" class="si-action-contact">
              <span>联系服务站</span>
            </a>
            <a href="#" class="si-action-contact">
              <span>查看地图</span>
            </a>
          </div>
        </div>
      </mt-tab-container-item>
      <mt-tab-container-item id="2"></mt-tab-container-item>
      <mt-tab-container-item id="3"></mt-tab-container-item>
      <mt-tab-container-item id="4"></mt-tab-container-item>
      <mt-tab-container-item id="5"></mt-tab-container-item>
      <mt-tab-container-item id="6"></mt-tab-container-item>
    </mt-tab-container>
  </div>
</template>
<script>
export default {
  data() {
    return {
      selected: ""
    };
  }
};
</script>
<style scoped>
.site {
  text-align: left;
  padding: 14px 16px;
  border-bottom: 1px solid #ddd;
}
.site > p {
  font-size: 12px;
  color: #666;
  margin-top: 4px;
  margin-right: 60px;
}
.site .tag-item {
  font-size: 12px;
  display: inline-block;
  height: 16px;
  line-height: 16px;
  background: linear-gradient(270deg, #ff6830, #ff4949);
  color: #fff;
  margin: 5px 5px;
  border-radius: 10px;
  padding: 2px 6px;
}
.si-action {
  text-align: left;
}
.si-action-contact {
  display: inline-block;
  width: 50%;
  text-decoration: none;
  text-align: center;
  color: #666;
  height: 40px;
  line-height: 40px;
  font-size: 18px;
}
</style>
