<template>
  <div>
    <h4 style="margin:10px 0">爱回收 0元换新机</h4>
    <mt-swipe :auto="4000">
      <mt-swipe-item v-for="(item,i) of data" :key="i">
        <img :src="item.img_url" alt />
      </mt-swipe-item>
    </mt-swipe>
    <div class="sell">
      <div class="sell_header">
        <img src="http://127.0.0.1:3000/img/index/newphone/sell.jpg" alt />
      </div>
      <!-- 荣耀20 -->
      <div class="sell_product">
        <div class="sell_img_left">
          <img src="http://127.0.0.1:3000/img/index/newphone/sell1.jpg" alt />
          <div class="sell_tip">
            <p>换新再省</p>
            <p>
              <span>￥</span>
              <span>300</span>
            </p>
          </div>
        </div>
        <div class="sell_text_right">
          <p class="text">
            <span class="title">荣耀20 8GB 256GB 幻夜黑 全网通</span>
            <span>荣耀官方合作 同步首销</span>
          </p>
          <p class="price">
            官方指导价
            <span>￥</span>
            <span>2999</span>
          </p>
          <div class="btns">
            <p>立即换新</p>
          </div>
        </div>
      </div>
      <!-- 荣耀20 -->
      <div class="sell_product">
        <div class="sell_img_left">
          <img src="http://127.0.0.1:3000/img/index/newphone/sell1.jpg" alt />
          <div class="sell_tip">
            <p>换新再省</p>
            <p>
              <span>￥</span>
              <span>300</span>
            </p>
          </div>
        </div>
        <div class="sell_text_right">
          <p class="text">
            <span class="title">荣耀20 8GB 256GB 幻夜黑 全网通</span>
            <span>荣耀官方合作 同步首销</span>
          </p>
          <p class="price">
            官方指导价
            <span>￥</span>
            <span>2999</span>
          </p>
          <div class="btns">
            <p>立即换新</p>
          </div>
        </div>
      </div>
      <!-- 荣耀20 -->
      <div class="sell_product">
        <div class="sell_img_left">
          <img src="http://127.0.0.1:3000/img/index/newphone/sell1.jpg" alt />
          <div class="sell_tip">
            <p>换新再省</p>
            <p>
              <span>￥</span>
              <span>300</span>
            </p>
          </div>
        </div>
        <div class="sell_text_right">
          <p class="text">
            <span class="title">荣耀20 8GB 256GB 幻夜黑 全网通</span>
            <span>荣耀官方合作 同步首销</span>
          </p>
          <p class="price">
            官方指导价
            <span>￥</span>
            <span>2999</span>
          </p>
          <div class="btns">
            <p>立即换新</p>
          </div>
        </div>
      </div>
      <!-- 荣耀20 -->
      <div class="sell_product">
        <div class="sell_img_left">
          <img src="http://127.0.0.1:3000/img/index/newphone/sell1.jpg" alt />
          <div class="sell_tip">
            <p>换新再省</p>
            <p>
              <span>￥</span>
              <span>300</span>
            </p>
          </div>
        </div>
        <div class="sell_text_right">
          <p class="text">
            <span class="title">荣耀20 8GB 256GB 幻夜黑 全网通</span>
            <span>荣耀官方合作 同步首销</span>
          </p>
          <p class="price">
            官方指导价
            <span>￥</span>
            <span>2999</span>
          </p>
          <div class="btns">
            <p>立即换新</p>
          </div>
        </div>
      </div>
      <!-- 荣耀20 -->
      <div class="sell_product">
        <div class="sell_img_left">
          <img src="http://127.0.0.1:3000/img/index/newphone/sell1.jpg" alt />
          <div class="sell_tip">
            <p>换新再省</p>
            <p>
              <span>￥</span>
              <span>300</span>
            </p>
          </div>
        </div>
        <div class="sell_text_right">
          <p class="text">
            <span class="title">荣耀20 8GB 256GB 幻夜黑 全网通</span>
            <span>荣耀官方合作 同步首销</span>
          </p>
          <p class="price">
            官方指导价
            <span>￥</span>
            <span>2999</span>
          </p>
          <div class="btns">
            <p>立即换新</p>
          </div>
        </div>
      </div>
      <!-- 荣耀20 -->
      <div class="sell_product">
        <div class="sell_img_left">
          <img src="http://127.0.0.1:3000/img/index/newphone/sell1.jpg" alt />
          <div class="sell_tip">
            <p>换新再省</p>
            <p>
              <span>￥</span>
              <span>300</span>
            </p>
          </div>
        </div>
        <div class="sell_text_right">
          <p class="text">
            <span class="title">荣耀20 8GB 256GB 幻夜黑 全网通</span>
            <span>荣耀官方合作 同步首销</span>
          </p>
          <p class="price">
            官方指导价
            <span>￥</span>
            <span>2999</span>
          </p>
          <div class="btns">
            <p>立即换新</p>
          </div>
        </div>
      </div>
    </div>
    <div class="sell_header">
      <img src="http://127.0.0.1:3000/img/index/newphone/sell.jpg" alt />
    </div>
    <div class="miui">
      <div>
        <div class="miui_product">
          <div class="sell_img_left">
            <img src="http://127.0.0.1:3000/img/index/newphone/sell1.jpg" alt />
            <div class="sell_tip">
              <p>换新再省</p>
              <p>
                <span>￥</span>
                <span>300</span>
              </p>
            </div>
          </div>
          <div class="sell_text_right">
            <p class="text">
              <span class="title">荣耀20 8GB 256GB 幻夜黑 全网通</span>
              <span>荣耀官方合作 同步首销</span>
            </p>
            <p class="price">
              官方指导价
              <span>￥</span>
              <span>2999</span>
            </p>
            <div class="btns">
              <p>立即换新</p>
            </div>
          </div>
        </div>
        <div class="miui_product">
          <div class="sell_img_left">
            <img src="http://127.0.0.1:3000/img/index/newphone/sell1.jpg" alt />
            <div class="sell_tip">
              <p>换新再省</p>
              <p>
                <span>￥</span>
                <span>300</span>
              </p>
            </div>
          </div>
          <div class="sell_text_right">
            <p class="text">
              <span class="title">荣耀20 8GB 256GB 幻夜黑 全网通</span>
              <span>荣耀官方合作 同步首销</span>
            </p>
            <p class="price">
              官方指导价
              <span>￥</span>
              <span>2999</span>
              <del>官方指导价：￥
                <span>2999</span>
              </del>
            </p>
            <div class="btns">
              <p>立即换新</p>
            </div>
          </div>
        </div>
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
body {
  max-width: 46.875rem;
  background-color: #f5f5f5;
}
p {
  margin: 0;
}
.mint-swipe,
.mint-swipe-item img {
  width: 100%;
  height: 208px !important;
}
.sell_product {
  display: flex;
  background-color: #fff;
  position: relative;
  padding: 1rem 0;
  margin: 0.625rem 0;
}
.sell_header img {
  width: 100%;
  margin: 5px 0;
}
.sell_img_left {
  text-align: center;
  width: 120px;
}
.sell_img_left img {
  width: 100%;
  margin-left: 1.5rem;
}
.sell_tip {
  width: 60px;
  background: linear-gradient(90deg, #ff4949, #ff6830);
  border-radius: 0 1rem;
  padding: 0.313rem;
  box-sizing: border-box;
  position: absolute;
  top: 1rem;
  left: 1.5rem;
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
.sell_text_right {
  width: 12.813rem;
  text-align: left;
  margin-left: 2rem;
  padding-top: 0.5rem;
}
.sell_text_right > .text span {
  display: block;
  overflow: hidden;
  white-space: nowrap;
  text-overflow: ellipsis;
  font-weight: 700;
}
.sell_text_right > .text span:last-child {
  font-size: 0.875rem;
}
.sell_text_right > .price {
  font-size: 0.75rem;
  margin: 0.5rem 0;
}
.sell_text_right > .price > :last-child {
  font-weight: 700;
  font-size: 1rem;
}
.sell_text_right > .btns {
  width: 6.25rem;
  border-radius: 2rem;
  background-color: #0f0;
  text-align: center;
  font-size: 0.875rem;
  padding: 0.313rem 0;
  margin-top: 0.75rem;
}
.miui {
  width: 100%;
  display: flex;
  box-sizing: border-box;
}
.miui > div {
  width: 100%;
  display: flex;
  justify-content: space-between;
  box-sizing: border-box;
}
.miui_product {
  width: 182px;
  position: relative;
  text-align: center;
  background-color: #fff;
  padding: 0.75rem 0;
}
.miui_product .sell_text_right {
  width: 95%;
  margin-left: 0.5rem;
}
.miui_product>.sell_img_left{
  width: 100%;
  text-align: center;
}
.miui_product>.sell_img_left img{
    width: 120px;
    margin:0;
}

</style>