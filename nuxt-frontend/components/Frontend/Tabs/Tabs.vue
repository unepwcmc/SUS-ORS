<template>
  <div>
    <ul
      class="flex border-grey-accent border rounded-sm mb-14 justify-between w-[32rem] container m-auto pt-4"
    >
      <li
        v-for="(tab, tabIndex) in tabs"
        :key="tabIndex"
        class="relative grow"
        :class="[
          isCurrentTab(tabIndex) ? activeTabClasses : inactiveTabClasses
        ]"
        @click="selectTab(tabIndex)"
      >
        <div class="flex justify-center pb-4">
          <component :is="`FIcon${tab.header}`" class="w-8 mr-1" />
          <div class="flex items-center">
            {{ tab.header }}
          </div>
        </div>
        <div
          v-if="isCurrentTab(tabIndex)"
          class="h-[0.125rem] rounded bg-blue-font absolute bottom-[-0.1rem] left-0 w-full"
        />
      </li>
    </ul>
    <slot />
  </div>
</template>

<script>
export default {
  props: {
    customTabClasses: {
      type: String,
      default: ''
    },
    darkMode: {
      type: Boolean,
      default: false
    },
    index: {
      type: Number,
      default: 0
    }
  },
  data () {
    return {
      currentTabIndex: 0,
      tabs: []
    }
  },

  computed: {
    activeTabClasses () {
      return 'font-medium text-blue-font'
    },
    inactiveTabClasses () {
      return 'font-medium text-blue-font opacity-50 cursor-pointer'
    }
  },
  mounted () {
    this.tabs = this.$children.filter(item => item.$children.count !== 0)
    this.selectTab(this.index)
  },
  methods: {
    isCurrentTab (tabIndex) {
      return tabIndex === this.currentTabIndex
    },
    selectTab (index) {
      this.currentTabIndex = index
      this.tabs.forEach((tab, tabIndex) => {
        tab.isActive = tabIndex === index
      })
    }
  }
}
</script>
