<template>
    <div>
        index
        <mt-tab-container v-model="value">
            <mt-tab-container-item id="tab1">
                内容1 
            </mt-tab-container-item>
            <mt-tab-container-item id="tab2">
                内容二 
            </mt-tab-container-item>
            <mt-tab-container-item id="tab3">
                内容3   
            </mt-tab-container-item>
            <mt-tab-container-item id="tab4">
                内容4   
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
    }
    


}
</script>
<style scoped>
.nav-font{
    font-size:25px;
    padding:3px;
}
.nav-title{
    margin-top:5px;
}

</style>

