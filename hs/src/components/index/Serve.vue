<template>
    <div>
        <div class="newheader">
          <p class="title">服务站</p>
          <div class="adresss">
            <ul id="nav-list" @touchstart="moveTo()">
              <li v-for="(el,i) in type" :key="i"  @touchstart.prevent="linkTo(el.id)">{{el.sname}}({{el.num}})</li>
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
                <li v-for="(el,i) in type" :key="i" @touchstart.prevent="linkToL(el.id)">{{el.sname}}</li>
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
      showlist:false,   //导航栏的下拉显示，如果为true，显示下拉内容,反之不显示，默认不显示
      type:{},          //导航栏显示的地区的所有的类型
      info:{},          //当前页面显示的内容（筛选的）的列表，默认显示所有的内容  
      alldata:{},      //存储内容的所有项
      move:""
    };
  },
  watch:{
    move(){
      var navList=document.getElementById("nav-list")
      console.log(this.move)
      navList.style.transform=`translate(${this.move}px)`
    }
  },
  mounted(){
    this.init()
  },
  methods: {
     linkTo(n){ // 数据的筛选，点击导航栏触发事件
       //得到导航栏的li数组并循环数组，让数组所有的下边框样式为空
       var nlist=document.getElementById("nav-list").children
       for(var item of nlist){
         item.style.borderBottom=""
       }
        //判断如果触发事件传过来的值为1，让页面显示的内容为所有内容且加上当前的下边框并退出
      if(n==1){
        this.info=this.alldata
        nlist[0].style.borderBottom="2px solid #ff0"
        return ;
      }
      //如果不是显示所有
      var arr=
      this.alldata.filter(function(item){
      return  item.nid==n
      })
      nlist[n-1].style.borderBottom="2px solid #ff0"
      this.info=arr
     
  },
  linkToL(n){
    this.linkTo(n)
     var quyu=document.getElementsByClassName("quyu")[0]
     var all=document.getElementsByClassName("all")[0]
        quyu.style.display="none";
        all.style.display="none"
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
  moveTo(e){
    var navList=document.getElementById("nav-list")
   
    startX = e.changedTouches[0].pageX,
　  startY = e.changedTouches[0].pageY;
    div.ontouchmove=function(e){
     
      moveEndX = e.changedTouches[0].pageX,
　　　moveEndY = e.changedTouches[0].pageY
      if(moveEndX-startX!=0){
      navList.style.transform=`translate(${moveEndX-startX}px)`
    }
    }

  },
    init(){
      this.axios.get('index/serve',{
      }).then(res=>{
        //导航栏显示地区的类型
        this.type=res.data.type
        //内容显示的筛选的数据，默认为所有的数据
        this.info=res.data.info
        //储存所有的数据
        this.alldata=res.data.info
        //遍历所有的数据,导航栏的类型的id关联内容所有的数据的nid
        for (var i=0;i<this.type.length;i++){
          //利用filter拿着类型表表的id到内容表去筛选个数
          if(i==0){
          num=this.alldata.length
          }else{
          var num=this.alldata.filter(item=>{
                      return item.nid==this.type[i].id
                  }).length
          }
          //将个数放到本地的type对象中
          this.type[i].num=num
        }
        //默认导航栏第一个就是附近的有下边框
          var lists=document.getElementById("nav-list")
          
        })
      }
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
#nav-list{
  width:85%;
  overflow: hidden;
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
.content-list{
  padding-top:5rem;
  margin-bottom:3rem;
}
</style>
