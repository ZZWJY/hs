<template>
  <div>
    <h4 style="margin:10px 0">爱回收 0元换新机</h4>
    <mt-swipe :auto="4000">
      <mt-swipe-item v-for="(item,i) of data" :key="i">
        <img :src="item.img_url" alt />
      </mt-swipe-item>
      <!-- <mt-swipe-item>
        <img src="http://127.0.0.1:3000/img/index/newphone/20.jpg" alt />
      </mt-swipe-item>
      <mt-swipe-item>
        <img src="http://127.0.0.1:3000/img/index/newphone/8x.jpg" alt />
      </mt-swipe-item>-->
    </mt-swipe>
    <div class="sell_header">
      <img src="http://127.0.0.1:3000/img/index/newphone/sell.jpg" alt />
    </div>
    <div class="sell_product">
      <div class="sell_img_left">
        <img src="http://127.0.0.1:3000/img/index/newphone/sell1.jpg" alt />
        <div class="sell_tip">
          <p>换新再省</p>
          <p>
            <i>￥</i>
            <span>300</span>
          </p>
        </div>
      </div>
      <div class="sell_text_right">
        <p>
          <span>荣耀20 8GB 256GB 幻夜黑 全网通</span>
          <span>荣耀官方合作 同步首销</span>
        </p>
      </div>
    </div>
  </div>
</template>
<script>
export default {
  data() {
    return {
      data: {}
    };
  },
  components: {},
  created() {
    this.axios.get("index/newphone").then(result => {
      this.data = result.data.data;
      console.log(this.data);
    });
  }
};
</script>
<style scope>
.mint-swipe,
.mint-swipe-item img {
  height: 208px !important;
}
.sell_header img {
  width: 375px;
  height: 37.5px;
  margin: 5px 0;
}
.sell_img_left {
  text-align: center;
  position: absolute;
  top: 1.15rem;
  left: 0.938rem;
}
.sell_img_left img {
  width: 7.5rem;
}
.sell_product {
  width: 100%;
  height: 9.375rem;
  position: relative;
  margin: 0.625rem 0;
  box-sizing: border-box;
}
/* .sell_product::after{
  content: "";
  display: block;
   clear: both;
    overflow: hidden;
    visibility: hidden;
} */
.sell_tip {
  position: absolute;
  background: linear-gradient(90deg, #ff4949, #ff6830);
  top: 0rem;
  border-radius: 0 1rem;
  padding: 0.313rem;
}
.sell_tip p {
  margin: 0;
  font: 0.625rem 黑体;
  color: #fff;
  text-align: center;
}
.sell_tip p span {
  font-size: 0.875rem;
  font-weight: 700;
}
.sell_text_right{
  position: absolute;
  top: 0rem;
  left: 8.5rem;
  width:12.813rem;
}
</style>