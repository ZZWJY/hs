<template>
    <div>
        <div class="header margin">
            <div class="back">
                <i class="iconfont icon-fanhui"></i>
            </div>
            <div>
                <ul >                                     
                    <li v-for="(item,i) in type" :key="i" :class="i==0?'active':''" @touchstart="show1($event)" :data-id="item.id">{{item.uname}}</li>
                </ul>
            </div>
        </div>
        <div class="content">
            <div class="content-left" >
                <ul>
                    <li v-for="(el,i) in showleft" :key="i" :class="i==0?'sele':''">{{el.title}}</li>
                </ul>
            </div>
            <div class="content-right">

            </div>
        </div>
    </div>
</template>
<script>
export default {
    data(){
        return {
        camera:[],   //摄影摄像数据
		digital:[],  //智能数码数据
		all:[],      //所有的商品信息
        labtop:[],   //平板电脑数据
		labbook:[],  //笔记本电脑
        phone:[],     //卖手机数据数据
        type:[],        //类型表
        showleft:[], //左侧正在显示的列表
        showright:[]    //右侧正在显示的列表
        }
    },
     created(){
            this.init()
    },
    methods:{
        init(){
            this.axios.get("index/category",{
            }).then(res=>{
               
                this.canmera=res.data.camera
                console.log(this.canmera)
                this.digital=res.data.digital
                this.all=res.data.all
                this.labtop=res.data.labtop
                this.phone=res.data.phone
                this.type=res.data.type
                this.showleft=res.data.phone
              
            })
        },
        show1(e){
            var typeid=e.target.dataset.id
            if(typeid==this.canmera[0].zid){
                this.showleft=this.canmera
            }else if(typeid==this.digital[0].zid){
                 this.showleft=this.digital
            }else if(typeid==this. labtop[0].zid){
                this.showleft=this.labtop
            }
        }
    }
}
</script>
<style scoped>
.back {
    height:44px;
    text-align:left;
    line-height: 44px;
}
.back i{
    font-size:1.5rem;
}
/* .header{
    position:fixed;
} */
.header ul{
    display:flex;
    justify-content: space-between;
    height:2.5rem;
    line-height:2.5rem;
}
.header ul li{
    color:#666;
    font-size:14px;
    /* border-top:4px solid #f9faff */
}
.header ul li.active{
    font-size:16px;
    color:#222;
    font-weight:700;
    border-bottom:4px solid #fffa8f
}
.content{
    display:flex;
}
.content-left{
    width:20%;
}
.content-left ul{
    width:100%;
    margin-top:.5rem;
}
.content-left ul li{
    height:3.5rem;
    line-height: 3.5rem;
    border-left:6px solid transparent;
}
.content-left ul li.sele{
    background:#f9faff;
    border-left:6px solid #f9e72c
}
</style>