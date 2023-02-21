<template>
  <div class="flex items-center justify-between px-16">
    <div class="flex items-center">
      <img src="/MEA_Logo_Icon.jpg" class="h-[5rem]"></img>
      <div class="text-3xl ml-2">
        {{ title }}
      </div>
    </div>
    <FIconLogo class="w-[10rem]" />
  </div>
</template>

<script>
export default {
  props: {
    title: {
      type: String,
      default: 'MEA Account name'
    }
  }
}
</script>
