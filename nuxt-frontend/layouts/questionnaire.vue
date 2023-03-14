<template>
  <div class="flex flex-col min-h-screen">
    <PortalTarget name="modal" />
    <PortalTarget name="before-header" />
    <FLayoutHeader id="headerQ" />

    <Nuxt class="flex-grow" />

    <div class="">
      <PortalTarget name="footer-banner" />
      <FLayoutFooter id="footerQ" />
    </div>
  </div>
</template>

<script>
export default {
  name: 'LayoutsQuestionnaire'
}
</script>
