<template>
  <div class="flex items-center justify-between px-16 py-4 border-solid border-y-[0.031rem] border-grey-accent">
    <div class="flex items-center">
      <img src="/MEA_Logo_Icon.jpg" class="h-[5rem]"></img>
      <div class="text-[2.125rem] leading-[3.402rem] ml-6">
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
