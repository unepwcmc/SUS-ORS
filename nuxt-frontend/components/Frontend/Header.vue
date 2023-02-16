<template>
  <header
    class="
      text-white
      bg-center bg-cover
      flex flex-col
      items-center
      justify-center
    "
    :class="{ 'bg-fixed': fixed }"
    :style="{ backgroundImage: `url('${image}')`, minHeight: `${minHeight}vh` }"
  >
    <div
      class="bg-gray-700/50 w-full flex items-center"
      :style="{ minHeight: `${minHeight}vh` }"
    >
      <FContainer>
        <div
          class="
            items-center
            text-center
            flex flex-col
            space-y-8
            pt-24
            lg:pt-32
            p-4
            lg:p-24
          "
        >
          <slot />
        </div>
      </FContainer>
    </div>
  </header>
</template>

<script>
export default {
  props: {
    image: {
      type: String,
      required: true
    },

    minHeight: {
      type: Number,
      default: 33
    },

    fixed: {
      type: Boolean,
      default: false
    }
  }
}
</script>
