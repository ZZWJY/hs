<template>
    <div class="recom">
        <div class="banner">
            <img src="http://127.0.0.1:3000/img/index/refer/referbanner.jpg" alt="">
        </div>
        <div class="bg-z">
            <div class="coupon-container margin">
                <div class="left">
                    <div class="gjia">
                        <img src="http://127.0.0.1:3000/img/index/refer/xianshi.png" alt="">
                    </div>
                    <div style="margin-top:2rem" class="coupon-content"> 
                        <sup>￥</sup>
                       <span style="font-size:24px;">60</span> 
                    </div>                     
                </div>
                <div class="right">
                    <p style="color:#68acfe">选择机型查看优惠</p>
                    <p>最高加价：<sup style="color:#fc6232">￥</sup><span>60</span></p>
                </div>
            </div>
        </div>
        <div class="count-down margin">
            <div style="margin:5px">
                <span>{{day}}</span>
                <span>天</span>
                <span>{{hours}}</span>
                <span>时</span>
                <span>{{minutes}}</span>
                <span>分</span>
                <span>{{seconds}}</span>
                <span>秒</span>
            </div>
            <div class="down-rigth">立即回收</div>
        </div>
        <div class="single-img">
            <router-link to="/">
                <img src="http://127.0.0.1:3000/img/index/refer/router.png"><img>
            </router-link>
        </div>
        <div class="navgator margin">
            <div>
                <i class='iconfont icon-shoujihao '></i>
                <p>卖手机</p>
            </div>
            <div>
                <i class="iconfont icon-laptop "></i>
                <p>卖笔记本</p>
            </div>
            <div>
                <i class="iconfont icon-st-browse "></i>
                <p>卖平板</p>
            </div>
            <div>
                <i class="iconfont icon-Camera-"></i>
                <p>摄影摄像</p>
            </div>
            <div>
                <i class="iconfont icon-piao "></i>
                <p>智能数码</p>
            </div>
        </div>
        <div class="free margin">
            <button>免费估价</button>
        </div>
        <div class="navold">
            <img src="http://127.0.0.1:3000/img/index/refer/oldnew.png" alt="">
        </div>
        <div class="eval margin">
            <div>
                <p>旧机估价</p>
                <p>苹果 iPhone X</p>
                <p>
                    最高回收价
                    <span>￥5673</span>
                </p>
            </div>
            <div class="img-right"></div>
            <div>
                <p>旧机估价</p>
                <p>苹果 iPhone X</p>
                <p>
                    最高回收价
                    <span>￥5673</span>
                </p>
            </div>
        </div>
    </div>
</template>
<script>
export default {
    data(){
        return {
            data:new Date('2019/8/18 18:00:00'),
            day:"",
            hours:"",
            seconds:"",
            minutes:""
       }
    },
    created(){
        setInterval(()=>{
            var now=new Date();//获取当前时间
            var starttime=now.getTime()//转化为毫秒数
            var endtime=this.data.getTime()
            var residue=endtime-starttime//剩余毫秒数
            var residueD=parseInt(residue/(60*60*24*1000)),//转换为天
            D=parseInt(residue)-parseInt(residueD*60*60*24*1000),//除去天的毫秒数
            residueH=parseInt(D/(60*60*1000)),//除去天的毫秒数转换成小时
            H=D-residueH*60*60*1000,//除去天、小时的毫秒数
            residueM=parseInt(H/(60*1000)),//除去天的毫秒数转换成分钟
            M=H-residueM*60*1000;//除去天、小时、分的毫秒数
            var S=parseInt((residue-residueD*60*60*24*1000-residueH*60*60*1000-residueM*60*1000)/1000)//除去天、小时、分的毫秒数转化为秒
            this.day=residueD.toString().length>1?residueD:("0"+residueD)
            this.hours=residueH.toString().length>1?residueH:("0"+residueH)
            this.seconds=S.toString().length>1?S:("0"+S)
            this.minutes=residueM.toString().length>1?residueM:("0"+residueM)
        },1000)
    },

  
}
</script>
<style scoped>
    .margin{
        margin:0 1rem
    }
  .recom  .banner>img{
      width:100%;
      
  }
  .banner{
      margin:0;
      padding:0;
  }
  .bg-z{
      width:100%;
      height:4rem;
      background:rgb(141, 75, 211);
      margin-top:-4px;
  }
  .coupon-container{
      height:5.5rem;
      background:#fff;
      box-shadow:0 0 10px 0px #eee;
      display:flex;
      border-bottom:1px solid #e6e6e6;
  }
  .coupon-container .left{
      background:url("http://127.0.0.1:3000/img/index/refer/jiajia.png")  no-repeat;
      background-position:58% 80%;
      background-size:5rem 4rem;
      width:235px;
      height:100%;
      color:#f00;
      position:relative
  }
  .coupon-content{
      position:absolute;
      top:-8px;
      left:55px;
      
  }
  .gjia{
      position:absolute;
      top:0px;
      left:0px;
  }
  .gjia img{
      width:60px;
  }
  .count-down{
      margin-top:2.5rem;
      padding-bottom:.5rem;
      display:flex;
      justify-content:space-between;
      border-bottom:1px solid #e6e6e6;  
  }
  .coupon-container .right{
      margin-top:1rem;
      width:100%;
      text-align:left;
  }
  .coupon-container .right span{
      font-size:24px;
      color:#fc6232;
      font-style:italic
  }
  .count-down span{
      margin-left:.5rem;
      width:1.5rem;
      height:1.7;
      line-height: 1.7rem;
      
  }
  .count-down span:nth-child(2n-1){
      background:#000;
      display:inline-block;
      color:#fff;
      
  }
  .count-down .down-rigth{
      padding:.5rem;
      background-image:linear-gradient(-90deg,#ffd629,#fff03b);
      color:#333;
      font-weight:700;
      border-radius:.5rem;
  }
  .single-img img,.navold img{
      width:100%;
  }
  .navgator{
      display:flex;
      justify-content: space-between;
  }
  .navgator div i{
      font-size:32px;
      background:#e9c00867;
      border-radius:1rem;
}
.free button{
    width:100%;
    background:#ffd629;
    color:#333;
    font-weight:800;
    text-align:center;
    height:2rem;
    line-height:2rem;
    border:0;
    margin-top:1rem;
    border-radius:.4rem;
}
.eval{
    display:flex;
    justify-content:center;
}
.img-right{
    width:3rem;
    height:1.5rem;
    background:url("http://127.0.0.1:3000/img/index/refer/right.png") no-repeat;
    background-size:100%
}
</style>