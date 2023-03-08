<template>
  <footer class="py-[3.1rem] px-[4.4rem] 2xl:px-0 bg-grey-accent text-white">
    <div class="w-auto mx-16 flex justify-between">
      <div class="text-black text-3xl pt-4">
        {{ title }}
      </div>
      <div class="w-[10rem]">
        <FIconLogo class="w-full mb-6" />
        <div class="bg-blue-font flex justify-center py-2 px-2 rounded-sm w-full font-semibold mt-3" v-text="buttonSupportCenterText" />
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
