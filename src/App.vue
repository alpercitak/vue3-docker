<template>
  <div>
    <img alt="Vue logo" src="./assets/logo.png" />
    <div class="flexbox">
      <Decrease class="flexbox-item" />
      <Counter class="flexbox-item" />
      <Increase class="flexbox-item" />
    </div>
  </div>
</template>

<script setup lang="ts">
import Counter from './components/count.vue';
import Increase from './components/increase.vue';
import Decrease from './components/decrease.vue';
</script>

<style>
#app {
  font-family: Avenir, Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
  margin-top: 60px;
}
</style>

<style scoped>
.flexbox {
  display: flex;
  align-items: center;
  justify-content: center;
  gap: 16px;
}

.flexbox-item {
  display: flex;
  align-items: center;
  justify-content: center;
  border: 1px solid #ddd;
  height: 120px;
  width: 120px;
}
</style>
