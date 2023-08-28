<template>
  <div>
    <button @click="increase()">Increase</button>
  </div>
</template>

<script setup lang="ts">
import { useCounterStore } from '@/stores/counter';

const store = useCounterStore();
const { increase } = store;
</script>
