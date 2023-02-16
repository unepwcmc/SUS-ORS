<template>
  <AdminTModal :value="show" @closed="onClose">
    <template #header class="flex items-center">
      <slot name="header" />
    </template>
    <template #close>
      <AdminTButton variant="danger" @click="onClose">
        &times;
      </AdminTButton>
    </template>
    <slot />
    <template #footer>
      <slot name="footer" />
    </template>
  </AdminTModal>
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
