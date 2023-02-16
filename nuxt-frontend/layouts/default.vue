<template>
  <div class="flex flex-col min-h-screen">
    <PortalTarget name="modal" />
    <PortalTarget name="before-header" />
    <FLayoutHeader />

    <Nuxt class="flex-1" />

    <div class="mt-24">
      <PortalTarget name="footer-banner" />
      <FLayoutFooter />
    </div>
  </div>
</template>

<script>
export default {
  name: 'LayoutsFrontend'
}
</script>
