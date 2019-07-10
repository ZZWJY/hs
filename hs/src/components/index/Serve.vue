<template>
    <div>
        <mt-navbar v-model="selected">
  <mt-tab-item id="1">option A</mt-tab-item>
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
<style scoped>

</style>
