<template>
    <div>
        <div class="hot_img" v-for="(item,i) of data" :key="i">
            <img :src="item.img_url">
            <p>{{item.title}}</p>
        </div>
    </div>
</template>
<script>
export default {
    data(){
        return {
            data:{}
        }
    },
    created() {
        this.axios.get("index/hot").then((result)=>{
            this.data=result.data.data;
        })
    },
}
</script>
<style scoped>
    .hot_img{
        margin:15px;
        text-align: left;
    }
    .hot_img img{
        width: 100%;
    }
    .hot_img p{
        color:#333;
        font-size: 14px;
        padding: 15px;
        padding-left:0;
    }
</style>
