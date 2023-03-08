<template>
  <div v-show="isActive">
    <slot />
  </div>
</template>

<script>
export default {
  props: {
    header: {
      type: String,
      default: 'Tab'
    }
  },
  data () {
    return {
      isActive: true
    }
  }
}
</script>
