<template>
    <div>
        index
        <mt-tab-container v-model="value">
            <mt-tab-container-item id="tab1">
                内容1 <i class="iconfont icon-shouye"></i>
            </mt-tab-container-item>
            <mt-tab-container-item id="tab2">
                内容二 <i class="iconfont icon-shoujihao"></i>
            </mt-tab-container-item>
            <mt-tab-container-item id="tab3">
                内容3   <i class="iconfont icon-user-circle-o"></i>
            </mt-tab-container-item>
            <mt-tab-container-item id="tab4">
                内容4   <i class="iconfont icon-wode"></i>
            </mt-tab-container-item>
        </mt-tab-container>
        <mt-tabbar v-model="selected" fixed>
            <mt-tab-item v-for="(el,i) in nav" :key="i" :id="el.id" :data-index="el.id">       
                    {{el.title}}{{el.id}}
            </mt-tab-item>
        </mt-tabbar>
    </div>
</template>

<script>
export default {
    data(){
        return  {
            selected:"",
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

</style>

