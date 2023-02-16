<template>
  <ul v-if="hasErrors" class="text-red-500 space-y-4 p-4 bg-red-200">
    <li
      v-for="(error, errorIndex) in errors"
      :key="errorIndex"
      class="flex flex-between"
    >
      {{ error }}
    </li>
  </ul>
</template>

<script>
export default {
  props: {
    errors: {
      type: Array,
      default: () => []
    }
  },

  computed: {
    hasErrors () {
      return this.errors.length > 0
    }
  }
}
</script>
