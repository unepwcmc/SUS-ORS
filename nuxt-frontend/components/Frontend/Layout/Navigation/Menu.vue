<template>
  <nav class="select-none">
    <ul class="flex">
      <li
        v-for="(link, linkIndex) in navigation"
        :key="linkIndex"
        class="
          px-3.5
          py-2
          transition
          duration-150
          ease-in-out
        "
      >
        <div v-if="hasDropdown(link)">
          <FLayoutNavigationDropdown v-bind="{ link }" />
        </div>
        <div v-else>
          <NuxtLink
            :to="link.url"
            class="hover:text-blue-500"
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

  methods: {
    hasDropdown (link) {
      return link.dropdown?.length > 0
    }
  }
}
</script>
