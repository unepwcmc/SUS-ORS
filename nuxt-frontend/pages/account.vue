<template>
  <div class="pt-12 px-[11.375rem]">
    <FTabs>
      <FTabsTab header="Details">
        <FAccountDetails />
      </FTabsTab>
      <FTabsTab header="Contacts">
        <FAccountContacts />
      </FTabsTab>
    </FTabs>
  </div>
</template>

<script>
export default {
  name: 'Account',

  layout: 'default'
}
</script>
