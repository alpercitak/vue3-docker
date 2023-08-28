<template>
  <div>
    <div>{{ count }}</div>
  </div>
</template>

<script setup lang="ts">
import { storeToRefs } from 'pinia';
import { useCounterStore } from '@/stores/counter';

const store = useCounterStore();
const { count } = storeToRefs(store);
</script>
