import { ref, watch } from 'vue';
import { defineStore } from 'pinia';

const localStorageKey = 'vue3-docker-count';

export const useCounterStore = defineStore('counter-store', () => {
  const count = ref(parseInt(localStorage.getItem(localStorageKey) ?? '0') || 0);

  const decrease = () => count.value--;
  const increase = () => count.value++;

  watch(count, () => localStorage.setItem(localStorageKey, count.value.toString()));

  return {
    count,
    decrease,
    increase,
  };
});
