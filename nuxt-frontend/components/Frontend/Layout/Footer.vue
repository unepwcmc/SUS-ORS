<template>
  <footer class="w-full py-3 px-4 2xl:px-0 bg-gray-700 text-white text-xs">
    <FContainer>
      <div
        class="
          lg:flex
          space-y-8
          lg:justify-between lg:items-center lg:space-x-24 lg:space-y-0
        "
      >
        <div>
          &copy; {{ currentYear }} UNEP-WCMC
        </div>
        <img class="h-7" src="~/assets/img/UNEP-WCMC_white.png">
      </div>
    </FContainer>
  </footer>
</template>

<script>
export default {
  computed: {
    currentYear () {
      return new Date().getFullYear()
    }
  }
}
</script>
