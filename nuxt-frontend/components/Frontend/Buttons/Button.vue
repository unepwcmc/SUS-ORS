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

const BASE_CLASSES = 'flex items-center justify-center border rounded'

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

    backgroundTransparent: {
      type: Boolean,
      default: false
    }
  },

  computed: {
    btnClasses () {
      return this.backgroundTransparent
        ? COLOR_CLASSES.colorClassesWhiteBg[this.color] + ' ' + BASE_CLASSES
        : COLOR_CLASSES.colorClassesColoredBg[this.color] + ' ' + BASE_CLASSES
    }
  }
}
</script>
