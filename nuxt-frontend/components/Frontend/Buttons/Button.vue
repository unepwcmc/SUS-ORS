<template>
  <button
    class="flex items-center justify-center py-3 px-8 border-2 rounded"
    :class="btnClasses"
  >
    {{ text }}
  </button>
</template>

<script>
export default {

  props: {
    text: {
      type: String,
      default: ''
    },

    color: {
      type: String,
      default: ''
    },

    bgWhite: {
      type: Boolean,
      default: false
    }
  },

  computed: {
    btnClasses () {
      return this.bgWhite
        ? `text-${this.color} border-${this.color}`
        : `bg-${this.color} border-${this.color} text-white`
    }
  }
}
</script>
