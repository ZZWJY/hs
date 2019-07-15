<template>
    <mt-swipe :auto="4000">
      <mt-swipe-item>1</mt-swipe-item>
      <mt-swipe-item>2</mt-swipe-item>
      <mt-swipe-item>3</mt-swipe-item>
    </mt-swipe>
</template>
<script>

export default {
  data() {
    return {
      data:[]
    };
  },
  components: {},
  created() {
    this.axios.get("newphone").then(result => {
      this.data=result.data
      console.log(result);

    });
  }
};
</script>
<style scope>
.mint-swipe {
  width: 694px;
  height: 416px !important;
	margin:0;
}
</style>