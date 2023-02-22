<template>
  <div class="flex justify-center pt-8">
    <div v-if="isDetailsSelected" class="w-10/12">
      <div class="flex justify-center" @click="toggleTab('contacts')">
        <button>
          <FIconTabsTabDetails class="w-[20rem]" />
        </button>
      </div>
      <FAccountDetails class="mt-16" />
    </div>
    <div v-else>
      <div class="flex justify-center" @click="toggleTab('details')">
        <button>
          <FIconTabsTabContacts class="w-[20rem]" />
        </button>
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
