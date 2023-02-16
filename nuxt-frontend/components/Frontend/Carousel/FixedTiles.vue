<template>
  <div>
    <div v-if="controls" class="flex justify-end space-x-6">
      <button class="p-4" @click="onPrevButtonClick">
        <FIconArrowRight class="rotate-180 w-[28px] h-[28px]" />
      </button>
      <button class="p-4" @click="onNextButtonClick">
        <FIconArrowRight class="w-[28px] h-[28px]" />
      </button>
    </div>
    <VueSlickCarousel ref="carousel" v-bind="settings">
      <slot />
    </VueSlickCarousel>
  </div>
</template>

<script>
import VueSlickCarousel from 'vue-slick-carousel'

import 'vue-slick-carousel/dist/vue-slick-carousel.css'

export default {
  components: { VueSlickCarousel },

  props: {
    controls: {
      type: Boolean,
      default: true
    },

    carouselSettings: {
      type: Object,
      default: () => ({})
    }
  },

  data () {
    return {
      carouselInitiated: false
    }
  },

  computed: {
    settings () {
      return {
        arrows: false,
        dots: false,
        infinite: true,
        variableWidth: true,
        ...this.carouselSettings
      }
    }
  },

  methods: {
    onPrevButtonClick () {
      this.$refs.carousel.prev()
    },

    onNextButtonClick () {
      this.$refs.carousel.next()
    }
  }
}
</script>

<style scoped>
>>> .slick-list {
  margin: 0 -0.25rem !important;
}

>>> .slick-slide > div {
  padding: 0 0.25rem !important;
  height: 100%;
}

>>> .slick-slide > div > div {
  display: flex !important;
  height: 100%;
}

>>> .slick-track {
  display: flex !important;
  align-items: stretch;
}

>>> .slick-slide {
  width: 26rem !important;
  height: auto !important;

  @media screen and (max-width: 26rem) {
    width: 95vw !important;
  }
}
</style>
