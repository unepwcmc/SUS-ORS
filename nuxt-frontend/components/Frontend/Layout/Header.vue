<template>
  <nav
    class="
      z-30
      w-full
      py-3
      lg:py-6
      px-4
      2xl:px-0
      transition
    "
  >
    <FContainer>
      <div class="flex justify-end items-center">
        <FTDropdown
          class="md:hidden"
          :hide-on-leave-timeout="250"
          :toggle-on-hover="true"
        >
          <template
            #trigger="{
              blurHandler,
              focusHandler,
              isShown,
              keydownHandler,
              mousedownHandler
            }"
          >
            <div class="flex items-center">
              <button
                aria-label="Menu"
                aria-haspopup="true"
                @blur="blurHandler"
                @focus="focusHandler"
                @keydown="keydownHandler"
                @mousedown="mousedownHandler"
              >
                <FIconBars
                  class="w-6 h-6 hover:cursor-pointer"
                  :class="{ hidden: isShown, block: !isShown }"
                />
                <FIconPlus
                  :class="{ hidden: !isShown, block: isShown }"
                  class="w-6 h-6 rotate-45"
                />
              </button>
            </div>
          </template>

          <template #default="{ blurHandler, hide }">
            <ul class="flex flex-col space-y-1 p-3">
              <li v-for="(link, linkIndex) in navigation" :key="linkIndex">
                <div v-if="hasDropdown(link)">
                  <FLayoutNavigationDropdown v-bind="{ link }" />
                </div>
                <div v-else>
                  <NuxtLink
                    :to="link.url"
                    class="leading-8 hover:text-blue-500"
                    role="menuitem"
                    @blur="blurHandler"
                    @click="hide"
                    v-text="link.name"
                  />
                </div>
              </li>
            </ul>
          </template>
        </FTDropdown>
        <FLayoutNavigationMenu
          class="hidden md:block"
          v-bind="{ navigation }"
        />
      </div>
    </FContainer>
  </nav>
</template>

<script>
export default {
  computed: {
    navigation () {
      return this.$store.state.navigation.header.headerNavigation
    }
  },

  methods: {
    hasDropdown (link) {
      return link.dropdown?.length > 0
    },

    onLogoClick () {
      if (this.$route.path === '/') {
        window.scrollTo({ top: 0, behavior: 'smooth' })
      }
    }
  }
}
</script>
