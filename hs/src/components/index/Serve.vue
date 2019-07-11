<template>
  <div>
    <div class="serve">服务站</div>
    <div class="kong"></div>
    <i class="serve_btn iconfont icon-xialazhankaixiajiantouxiangxiaxianxing" @click="btns"></i>
    <div class="all_pranucts">
      <div class="all_pranuct">全部商品</div>
      <div class="pranuct_list">
        <div class="list_btn">龙华区</div>
        <div class="list_btn">龙华区</div>
        <div class="list_btn">龙华区</div>
        <div class="list_btn">龙华区</div>
        <div class="list_btn">龙华区</div>
        <div class="list_btn">龙华区</div>
        <div class="list_btn">龙华区</div>
      </div>
    </div>
    <mt-navbar v-model="selected">
      <mt-tab-item id="1" class="is-selected">附近(36)</mt-tab-item>
      <mt-tab-item id="2">罗湖区(4)</mt-tab-item>
      <mt-tab-item id="3">罗湖区(4)</mt-tab-item>
      <mt-tab-item id="4">罗湖区(4)</mt-tab-item>
      <mt-tab-item id="5">罗湖区(4)</mt-tab-item>
    </mt-navbar>
    <!-- tab-container -->
    <mt-tab-container v-model="selected">
      <mt-tab-container-item id="1" style="display:block">
        <div>
          <!-- 1 -->
          <div class="serve_list">
            <div class="site">
              <h4>
                深圳金港城店
                <i class="iconfont icon-right"></i>
              </h4>
              <p>深圳市宝安区宝安大道4009-1号首层金港城沃尔玛正门进去左手边</p>
              <div>
                <span class="tag-item">回收</span>
                <span class="tag-item">以久换新</span>
              </div>
            </div>
            <div class="si-action">
              <a href="#" class="si-action-contact">
                <i class="iconfont icon-dianhua"></i>
                <span>联系服务站</span>
              </a>
              <a href="#" class="si-action-contact">
                <i class="iconfont icon-ditu"></i>
                <span>查看地图</span>
              </a>
            </div>
          </div>
          <!-- 2 -->
          <div class="serve_list">
            <div class="site">
              <h4>
                深圳金港城店
                <i class="iconfont icon-right"></i>
              </h4>
              <p>深圳市宝安区宝安大道4009-1号首层金港城沃尔玛正门进去左手边</p>
              <div>
                <span class="tag-item">回收</span>
                <span class="tag-item">以久换新</span>
              </div>
            </div>
            <div class="si-action">
              <a href="#" class="si-action-contact">
                <i class="iconfont icon-dianhua"></i>
                <span>联系服务站</span>
              </a>
              <a href="#" class="si-action-contact">
                <i class="iconfont icon-ditu"></i>
                <span>查看地图</span>
              </a>
            </div>
          </div>
        </div>
      </mt-tab-container-item>
      <mt-tab-container-item id="2"></mt-tab-container-item>
      <mt-tab-container-item id="3"></mt-tab-container-item>
    </mt-tab-container>
  </div>
</template>
<script>
export default {
  data() {
    return {
      selected: ""
    };
  },
  methods: {
    btns() {
      alert(1);
    }
  }
};
</script>
<style scoped>
.serve {
  width: 100%;
  height: 44px;
  font-size: 16px;
  background-color: #fff;
  line-height: 44px;
  margin-bottom: 10px;
  position: fixed;
  border-bottom: 1px solid #e9e9e9;
  z-index: 999;
}
.kong {
  width: 100%;
  height: 44px;
}
.mint-navbar {
  position: relative;
}
.all_pranucts {
  width: 100%;
  height: 500px;
  position: absolute;
  top: 50px;
  left: 0px;
  z-index: 100;
  background-color: rgba(0, 0, 0, 0.5);
  display: none;
  box-sizing: border-box;
}
.serve_btn {
  width: 50px;
  height: 46px;
  float: right;
  background-color: #fff;
  box-shadow: -0.04rem 0 0.04rem 0 #f3f3f3;
}
.pranuct_list {
  background-color: #fff;
  padding: 14px 0 0 10px;
  padding-bottom: 10px;
}
.all_pranuct {
  width: 100%;
  height: 46px;
  line-height: 46px;
  text-align: left;
  border-bottom: 1px solid #e9e9e9;
  font-size: 20px;
  padding-left: 20px;
  background-color: #fff;
}
.list_btn {
  display: inline-block;
  width: 80px;
  height: 32px;
  line-height: 30px;
  border: 1px solid #ccc;
  border-radius: 2px;
  margin: 0 9px 9px 0;
  text-align: center;
}
.active {
  display: block;
}
.hide {
  display: none;
}
.icon-xialazhankaixiajiantouxiangxiaxianxing{
  font-size: 16px;
  height: 46px;
  line-height: 46px;
  font-weight: bold;
}
.serve_list{
  background-color: #fff;
  box-sizing: border-box;
  margin-top:8px;
}
.site {
  text-align: left;
  padding: 14px 16px;
  border-bottom: 1px solid #ddd;
  position: relative;
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
  font-size: 13px;
}
.icon-right {
  position: absolute;
  top: 13px;
  left: 92%;
  font-size: 16px;
}
.icon-dianhua .icon-ditu{
  height: 40px;
  line-height: 40px;
}
</style>
