<template>
  <FTModal :value="show" @closed="onClose">
    <template #header class="flex items-center">
      <slot name="header" />
    </template>
    <template #close>
      <FIconPlus class="-rotate-45" @click="onClose" />
    </template>
    <slot />
    <template #footer>
      <slot name="footer" />
    </template>
  </FTModal>
</template>

<script>
export default {
  model: {
    event: 'change',
    prop: 'show'
  },

  props: {
    show: {
      type: Boolean,
      required: true
    }
  },

  mounted () {
    this.$nuxt.$on('modal:close', this.onClose)
  },

  methods: {
    onClose () {
      this.$emit('change', false)
    }
  }
}
</script>
