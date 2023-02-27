<template>
  <button
    :class="btnClasses"
  >
    {{ text }}
  </button>
</template>

<script>

const COLOR_CLASSES = {
  colorClassesColoredBg: {
    blue: 'bg-blue-button border-blue-button text-white',
    red: 'bg-red-button border-red-button text-white'
  },
  colorClassesWhiteBg: {
    blue: 'text-blue-button border-blue-button',
    red: 'text-red-button border-red-button'
  }
}

const BASE_CLASSES = 'flex items-center justify-center py-3 px-8 border-2 rounded'

export default {

  props: {
    text: {
      type: String,
      default: 'black'
    },

    color: {
      type: String,
      default: 'black'
    },

    bgWhite: {
      type: Boolean,
      default: false
    }
  },

  computed: {
    btnClasses () {
      return this.bgWhite
        ? COLOR_CLASSES.colorClassesWhiteBg[this.color] + ' ' + BASE_CLASSES
        : COLOR_CLASSES.colorClassesColoredBg[this.color] + ' ' + BASE_CLASSES
    }
  }
}
</script>
