<template>
  <div id="app">
    <div>app</div>
    <div>window.location: {{ address }}</div>
  </div>
</template>

<script>
export default {
  data () {
    return {
      address: ''
    }
  },
  created () {
    this.address = window.location
  }
}
</script>

<style lang="scss">
#app {
  font-family: 'Avenir', Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
  margin-top: 60px;
}
</style>
