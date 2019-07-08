<template>
    <div class="index">
        <mt-tab-container v-model="value" swipeable>
            <mt-tab-container-item id="tab1">
                <index-index></index-index>
            </mt-tab-container-item>
            <mt-tab-container-item id="tab2">
                <index-newphone></index-newphone> 
            </mt-tab-container-item>
            <mt-tab-container-item id="tab3">
               <index-serve></index-serve>  
            </mt-tab-container-item>
            <mt-tab-container-item id="tab4">
                <index-me></index-me>   
            </mt-tab-container-item>
        </mt-tab-container>
        <mt-tabbar v-model="selected" fixed>
            <mt-tab-item v-for="(el,i) in nav" :key="i" :id="el.id" :data-index="el.id"> 
                <i :class="el.iconurl+' nav-font'"></i>      
                  <p class="nav-title">{{el.title}}</p>  
            </mt-tab-item>
        </mt-tabbar>
    </div>
</template>

<script>
import indexIndex from "../components/index/index"
import indexMe from "../components/index/Me"
import indexNewPhone from "../components/index/NewPhone"
import indexserve from "../components/index/Serve"
export default {
    data(){
        return  {
            selected:1,
            value:"tab1",
            nav:[],
        }
    },
    watch:{
        selected(){
           this.value=`tab${this.selected}`
        }
    },
    methods:{
        loadMore:function (){
            var url="index",
            obj={}
            this.axios.get(url,{
                params:obj
            }).then(res=>{
                this.nav=res.data.nav
                console.log(this.nav)
            })
        }
    },
    created(){
       this.loadMore()
    },
    components:{
        "index-index":indexIndex,
        "index-me":indexMe,
        "index-serve":indexserve,
        "index-newphone":indexNewPhone,
    }
    


}
</script>
<style scoped>
.index{
    max-width: 750px;
    min-width: 320px;
    margin: 0 auto;
    background: #fff;

}
.mint-tabbar.is-fixed{
    max-width: 750px;
    min-width: 320px;
    margin:0 auto
}
.nav-font{
    font-size:25px;
    padding:3px;
}
.nav-title{
    margin-top:5px;
}

</style>

