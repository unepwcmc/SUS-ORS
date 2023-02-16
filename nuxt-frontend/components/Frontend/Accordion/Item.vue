<template>
  <div class="bg-brown-50 text-gray-600 p-4 lg:p-8">
    <button
      class="flex w-full items-center justify-between cursor-pointer"
      @click="onButtonClick"
    >
      <span class="underline">
        <slot name="label" />
      </span>
      <FIconChevronRight
        class="h-4 w-4 transition-transform duration-100"
        :class="{ 'rotate-90': isActive }"
      />
    </button>
    <div
      ref="content"
      class="
        hidden
        opacity-0
        pt-4
        transition-opacity
        ease-in-out
        leading-relaxed
      "
      :class="{ '!block !opacity-100': isActive }"
    >
      <slot />
    </div>
  </div>
</template>

<script>
import screens from '~/tailwind-breakpoints.config.js'

export default {
  data () {
    return {
      isActive: false
    }
  },

  methods: {
    onButtonClick () {
      this.toggleIsActive()
      if (this.isActive && window.innerWidth < parseInt(screens.sm)) {
        this.scrollToAccordionContent()
      }
    },

    scrollToAccordionContent () {
      this.$nextTick(() => {
        this.$scrollTo(this.$refs.content, 100)
      })
    },

    toggleIsActive () {
      this.isActive = !this.isActive
    }
  }
}
</script>
