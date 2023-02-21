<template>
  <div class="flex justify-center">
    <div v-if="isDetailsSelected" @click="toggleTab('contacts')">
      <FTabsTabDetails class="w-[20rem]" />
      <h1>Details</h1>
    </div>
    <div v-else @click="toggleTab('details')">
      <FTabsTabContacts class="w-[20rem]" />
      <h1>Contacts</h1>
    </div>
  </div>
</template>

<script>
export default {
  name: 'Account',

  layout: 'default',

  data () {
    return {
      tabSelected: 'details'
    }
  },

  computed: {
    isDetailsSelected () {
      return this.tabSelected === 'details'
    }
  },

  methods: {
    toggleTab (tab) {
      this.tabSelected = tab
    }
  }
}
</script>
