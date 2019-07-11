<template>
  <div>
    <div class="serve">服务站</div>
    <div class="kong"></div>
    <i class="serve_btn iconfont icon-right" @click="btns"></i>
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
        <!-- 1 -->
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
        <!-- 1 -->
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
        <!-- 1 -->
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
        <!-- 1 -->
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
        <!-- 1 -->
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
        <!-- 1 -->
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
  z-index: 999;
}
.kong {
  width: 100%;
  height: 50px;
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
.iconfont {
  font-size: 22px;
  height: 46px;
  line-height: 46px;
}
</style>
