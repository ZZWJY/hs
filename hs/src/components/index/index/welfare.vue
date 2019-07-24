<template>
  <div class="welfare">
    <!-- 799新人礼包 -->
    <div>
      <img class="welfare_img" src="http://127.0.0.1:3000/img/index/welfare/welfare1.png" alt />
    </div>
    <!-- 一键领取 -->
    <div>
      <img
        @touchstart.prevent="sellshow()"
        class="welfare_btn"
        src="http://127.0.0.1:3000/img/index/welfare/welfare2.png"
        alt
      />
      <div class="sell_show">
        <div class="show_item">
          <div>
            <p>领取成功！优惠券已放至账户：</p>
            <span>{{uname}}</span>
            <router-link to="javascriopt:;" class="show_btn">立即回收</router-link>
          </div>
          <i @touchstart.prevent="sellhide()"></i>
        </div>
      </div>
    </div>
    <!-- 领取后七日有效 -->
    <div>
      <img class="welfare_img" src="http://127.0.0.1:3000/img/index/welfare/welfare3.png" alt />
    </div>
    <!-- 回收加价卷 -->
    <div>
      <img class="welfare_rell" src="http://127.0.0.1:3000/img/index/welfare/welfare4.png" alt />
    </div>
    <!-- 免费评估 -->
    <div>
      <img class="welfare_btn" src="http://127.0.0.1:3000/img/index/welfare/welfare5.png" alt />
    </div>
    <!-- 换新优惠卷 -->
    <div>
      <img class="welfare_rell" src="http://127.0.0.1:3000/img/index/welfare/welfare6.png" alt />
    </div>
    <!-- 去换新 -->
    <div>
      <router-link to="/index/newPhone">
        <img class="welfare_btn" src="http://127.0.0.1:3000/img/index/welfare/welfare7.png" alt />
      </router-link>
    </div>
    <!-- 活动规则 -->
    <div>
      <img class="welfare_img" src="http://127.0.0.1:3000/img/index/welfare/welfare8.jpg" alt />
    </div>
  </div>
</template>
<script>
export default {
  data() {
    return {
      uname:""
    };
  },
  methods: {
    sellshow() {
      var sell_show = document.getElementsByClassName("sell_show")[0];
      if (sessionStorage.getItem("draw")) {
        this.$toast("您已领过该卷包");
        return;
      }
      sessionStorage.setItem("draw", 1);
      sell_show.style.display = "block";
      this.uname=sessionStorage.getItem("name")
    },
    sellhide() {
      var sell_show = document.getElementsByClassName("sell_show")[0];
      sell_show.style.display = "none";
    }
  }
};
</script>
<style scoped>
.welfare {
  width: 100%;
}
.welfare_img {
  width: 100%;
}
.welfare_btn,
.welfare_rell {
  width: 97.5%;
}
.sell_show {
  width: 100%;
  height: 667px;
  background-color: rgba(0, 0, 0, 0.8);
  text-align: center;
  position: fixed;
  top: 0px;
  left: 0px;
  display: none;
}
.show_item {
  width: 300px;
  height: 420px;
  text-align: center;
  margin: 0 auto;
}
.show_item > div {
  width: 100%;
  height: 360px;
  background: url("http://127.0.0.1:3000/img/index/welfare/show.jpg") no-repeat;
  background-size: 100% auto;
  text-align: center;
  position: relative;
  margin-top: 30%;
}
.show_btn {
  position: absolute;
  left: 45px;
  bottom: 38px;
  width: 210px;
  height: 40px;
  padding: 0 40px;
  border-radius: 20px;
  color: #000;
  font-size: 14px;
  display: flex;
  align-items: center;
  justify-content: center;
  background-color: rgb(255, 255, 0);
}
.show_item > div::before {
  content: "";
  display: table;
}
.show_item > div > p {
  margin-top: 50px;
}
.show_item > i {
  width: 34px;
  height: 34px;
  background: url("http://127.0.0.1:3000/img/index/welfare/icon-close.png")
    no-repeat;
  background-size: 100%;
  position: absolute;
  left: 45%;
  top: 70%;
}
</style>
