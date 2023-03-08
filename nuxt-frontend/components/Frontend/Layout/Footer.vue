<template>
  <footer class="py-5 px-6 2xl:px-0 bg-grey-accent text-white">
    <div class="w-auto mx-16 flex justify-between">
      <div class="text-black text-3xl pt-4">
        {{ title }}
      </div>
      <div class="w-[10rem] py-4">
        <FIconLogo class="w-full mb-3" />
        <FButtonsButton
          color="blue"
          class="w-full font-semibold whitespace-nowrap"
          text="Support centre"
        />
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
  }
}
</script>
