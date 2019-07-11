<template>
    <div>
        <mt-navbar v-model="selected">
  <mt-tab-item id="1" class="mint-tab-item is-selected">option A</mt-tab-item>
  <mt-tab-item id="2">option B</mt-tab-item>
  <mt-tab-item id="3">option C</mt-tab-item>
  <mt-tab-item id="4">option C</mt-tab-item>
  <mt-tab-item id="5">option C</mt-tab-item>
  <mt-tab-item id="6">option C</mt-tab-item>
</mt-navbar>

<mt-tab-container v-model="selected">
  <mt-tab-container-item id="1">
  </mt-tab-container-item>
  <mt-tab-container-item id="2">
  </mt-tab-container-item>
  <mt-tab-container-item id="3">
  </mt-tab-container-item>
  <mt-tab-container-item id="4">
  </mt-tab-container-item>
  <mt-tab-container-item id="5">
  </mt-tab-container-item>
  <mt-tab-container-item id="6">
  </mt-tab-container-item>
</mt-tab-container>
    </div>
</template>
<script>
export default {
    data(){
        return{
            selected:""
        }
    }
}
</script>
<script>
    $(".mint-navbar").on("click", "li", function (e) {
            e.preventDefault();
            $(".mint-navbar").children().removeClass("mint-tab-item is-selected");
            $(this).addClass("mint-tab-item is-selected");
    })
</script>
<style scoped>
    .mint-navbar .mint-tab-item.is-selected {
            border-bottom: 3px solid #26a2ff;
    }
</style>
