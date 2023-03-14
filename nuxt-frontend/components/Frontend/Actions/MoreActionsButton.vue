<template>
  <div>
    <div class="relative" @mouseover="onMouseOver" @mouseleave="onMouseLeave">
      <FIconMoreIcons class="w-8" />
      <FActionsActionButtons :actions="actions" class="absolute top-0 left-0 z-10" :class="{ 'hidden': !displayActionButton }" />
    </div>
  </div>
</template>

<script>
export default {
  props: {
    actions: {
      type: Array,
      default: () => []
    }
  },

  data () {
    return {
      hover: false
    }
  },

  computed: {
    displayActionButton () {
      return this.hover
    }
  },

  methods: {
    onMouseOver () {
      this.hover = true
    },

    onMouseLeave () {
      this.hover = false
    }
  }
}
</script>
