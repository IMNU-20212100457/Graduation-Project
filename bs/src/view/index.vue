<template>
    <div id="app">
      index
      <button  @click="$router.push('/home')">跳转home</button>
    </div>
  </template>
  
  <script>
  
  export default {
    name: 'App',
    components: {
      
    },
    mounted() {
      console.log(this.$router);
    }
  }
  </script>
  
  <style>

  </style>
  