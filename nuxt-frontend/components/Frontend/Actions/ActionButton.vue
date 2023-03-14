<template>
  <button class="flex items-center my-2">
    <component :is="`FIcon${action.icon}`" class="w-8 mr-1" />
    {{ action.text }}
  </button>
</template>

<script>
export default {
  props: {
    action: {
      type: Object,
      default: () => {}
    }
  }
}
</script>
