<template>
  <button
    :class="btnClasses"
  >
    <NuxtLink
      v-if="url"
      :to="url"
      class="hover:text-red-500"
      v-text="text"
    />
    <div v-else>
      {{ text }}
    </div>
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

const BASE_CLASSES = 'flex items-center justify-center border rounded-sm'

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
    },

    url: {
      type: String,
      default: null
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
