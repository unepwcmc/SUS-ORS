<template>
  <nav class="select-none">
    <ul class="flex">
      <li
        v-for="(link, linkIndex) in navigation"
        :key="linkIndex"
        class="
          px-3.5
          transition
          duration-150
          ease-in-out
          border-r border-black
          last:border-r-0
        "
      >
        <div v-if="hasDropdown(link)">
          <FLayoutNavigationDropdown v-bind="{ link }" />
        </div>
        <div v-else @click="toggleActiveIndex(linkIndex)">
          <NuxtLink
            :to="link.url"
            class="hover:text-blue-500 text-blue-font"
            :class="linkIndex === activeIndex ? 'font-bold' : ''"
            v-text="link.name"
          />
        </div>
      </li>
    </ul>
  </nav>
</template>

<script>
export default {
  props: {
    navigation: {
      type: Array,
      required: true
    }
  },

  data: function () {
    return {
      activeIndex: 0
    }
  },
  methods: {
    hasDropdown (link) {
      return link.dropdown?.length > 0
    },

    toggleActiveIndex (index) {
      this.activeIndex = index
    }
  }
}
</script>
