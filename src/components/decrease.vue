<template>
  <div>
    <button @click="decrease">Decrease</button>
  </div>
</template>

<script setup lang="ts">
import { useCounterStore } from '@/stores/counter';

const store = useCounterStore();
const { decrease } = store;
</script>
