<script setup>
import {RouterLink, RouterView} from 'vue-router'
import Header from "@/components/Header.vue";
</script>

<template>
  <Header></Header>
  <RouterView/>
</template>

<script>
export default{
  components:{
    Header
  }
}
</script>

<style>
body, #app {
  font-family: "Open Sans", sans-serif;
  margin: 0;
  padding: 0;
    input {
      border: 0;
      border-radius: 8px;
      width: 100%;
  }
}
</style>
