<template>
  <footer class="py-5 px-6 2xl:px-0 bg-grey-accent text-white">
    <div class="w-auto mx-16 flex justify-between">
      <div class="text-black text-[2.125rem] leading-[3.402rem] pt-4">
        {{ title }}
      </div>
      <div class="w-[10rem] py-4">
        <FIconLogo class="w-full mb-3" />
        <div class="bg-blue-font text-sm flex justify-center py-2 px-2 rounded-sm w-full font-semibold mt-3" v-text="buttonSupportCenterText" />
      </div>
    </div>
  </footer>
</template>

<script>
export default {
  props: {
    title: {
      type: String,
      default: 'Inter-American Sea Turtle Convention'
    }
  },
  computed: {
    buttonSupportCenterText () {
      return 'Support centre'
    }
  }
}
</script>
