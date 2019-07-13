<template>
    <div>
        <div class="newheader">
          <p class="title">服务站</p>
          <div class="adresss">
            <ul>
              <li v-for="(el,i) in type" :key="i" @touchstart.prevent="fn">{{el.sname}}</li>
              <!-- <li>罗湖区(2)</li>
              <li>罗湖区(3)</li>
              <li>罗湖区(5)</li>
              <li>罗湖区(4)</li>
              <li>罗湖区(3)</li>
              <li>罗湖区(4)</li>
              <li>罗湖区(4)</li>
              <li>罗湖区(4)</li>
              <li>罗湖区(4)</li>
              <li>罗湖区(4)</li> -->
            </ul>
            <div @touchstart="listshow()">
                <i class="iconfont icon-xiangxia" ></i>
            </div>
          </div>
           <p class="all">全部商品</p>
        </div>
        <div class="quyucontent">
          <ul class="quyu">
                <li v-for="(el,i) in type" :key="i">{{el.sname}}</li>
                <!-- <li>罗湖区</li>
                <li>罗湖区</li>
                <li>罗湖区</li>
                <li>罗湖区</li>
                <li>罗湖区</li> -->
          </ul>
        </div>
        <div class="content-list margin">
          <div  class="info-item" v-for="(el,i) in info" :key="i">
            <div>
              <h3 style="font-size:14px;">{{el.title}}</h3>
              <i class="iconfont icon-xiayige"></i>
            </div>
            <p  class="item-adres">{{el.iaddress}}</p>
            <div class="tagitems">
              <span class='tagitem'>回收</span>
              <span class='tagitem'>以旧换新</span>
            </div>
            <div class="liannxi">
              <div class="lianxiitem" :title="el.phone">
                <i class="iconfont icon-dianhua"></i>
                <span>联系服务站</span>
              </div>
              <div>
                  <i class="iconfont icon-ditu"></i>
                  <span>查看地图</span>
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
      selected: "",
      showlist:false,
      type:[],
      info:[],
      index:'1'
    };
  },
  methods: {
    init(){
      this.axios.get('index/serve',{

      }).then(res=>{
        this.type=res.data.type
        this.info=res.data.info
        console.log(this.type)
        console.log(this.info)
      })
    },
   listshow(){
     var quyu=document.getElementsByClassName("quyu")[0]
     var all=document.getElementsByClassName("all")[0]
          if(!this.showlist){
            quyu.style.display="flex";
            all.style.display="block";
            this.showlist=true
          }else{
             quyu.style.display="none";
            all.style.display="none"
            this.showlist=false
          }
   },
    fn(e){ 
     console.log(e)
     
   }
  },
  created(){
    this.init()
  },
};
</script>
<style scoped>
.newheader{
  width:100%;
  position:fixed;
  left:0px;
  top:0px;
  background:#fff;
}
.title{
  line-height:3rem;
  font-size:1rem;
  font-weight:500;
  text-align:center;
  border-bottom:1px solid #e9e9e9;
}
.adresss{
  display:flex;
  border-bottom:1px solid #e9e9e9;
  box-shadow: 0px 0px 1px 1px #f3f3f3;
  line-height:2.5rem;

  }
.adresss ul{
  display:flex;
  white-space: nowrap;
}
.adresss ul li{
  
  margin-left:1rem;
  color:#666;
  font-size:14px;
}
.adresss  i{
  position:absolute;
  right:0px;
  top:49px;
  line-height:2.5rem;
  font-size:1rem;
  width:15%;
  background:#fff;
  box-shadow: 0px 0px 5px 1px #f3f3f3
}
.all{
  position:absolute;
  top:49px;
  left:0px;
  background:#fff;
  width:85%;
  margin-left:1rem;
  text-align:left;
  line-height:2.5rem;
  display:none;
}
.quyu{
  display:flex;
  flex-wrap: wrap;
  margin:1rem 1rem 0 1rem;
  display:none
}
.quyucontent{
  position:fixed;
  top:86px;
  left:0px;
  background:#fff;
}
.quyu li{
  border:1px solid #ccc;
  width:75px;
  text-align:center;
  line-height:40px;
  margin-right:10px;
  margin-bottom:10px
}
.info-item{
  border-top:10px solid #f9faff;
  padding-top:1rem;
}

.info-item>div:nth-child(1){
  display:flex;
  font-size:.8rem;
  line-height:1.3rem;
  justify-content:space-between;
}
.item-adres{
  font-size:12px;
  margin-top:.5rem;
  text-align:left;
}
.tagitem{
  margin-top:.5rem;
  font-size:12px;
  line-height:16px;
  background:linear-gradient(270deg,#ff6830,#ff4949);
  margin-right:1rem;
  color:#fff;
  border-radius:20px;
  padding:3px 7px;
}
.tagitems{
  text-align:left;
  margin-top:1rem;
}
.liannxi{
  display:flex;
  margin-top:1rem;
  font-size:12px;
}
.lianxiitem{
  width:50%;
  text-align:center;
}
</style>
