<template>
  <div class="flex justify-center pt-8">
    <div v-if="isDetailsSelected">
      <div class="flex justify-center" @click="toggleTab('contacts')">
        <FIconTabsTabDetails class="w-[20rem]" />
      </div>
      <FAccountDetails class="mt-16" />
    </div>
    <div v-else>
      <div class="flex justify-center" @click="toggleTab('details')">
        <FIconTabsTabContacts class="w-[20rem]" />
      </div>
      <FAccountContacts class="mt-16" />
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
