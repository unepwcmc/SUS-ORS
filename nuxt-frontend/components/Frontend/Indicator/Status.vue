<template>
  <div class="flex items-center space-x-2">
    <div class="w-6 h-6 rounded-full" :class="statusData.colorClass" />
    <div>{{ statusData.text }}</div>
  </div>
</template>

<script>
export default {
  props: {
    isActive: {
      type: Boolean,
      default: false
    }
  },

  computed: {
    statusData () {
      return this.isActive ? { colorClass: 'bg-green-active', text: 'Active' } : { colorClass: 'bg-red-inactive', text: 'Inactive' }
    }
  }
}
</script>
