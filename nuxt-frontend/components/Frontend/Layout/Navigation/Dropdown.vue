<template>
  <FTDropdown :hide-on-leave-timeout="250" :toggle-on-hover="true">
    <template
      #trigger="{
        blurHandler,
        focusHandler,
        isShown,
        keydownHandler,
        mousedownHandler
      }"
    >
      <div class="flex space-x-4 flex-nowrap items-center">
        <NuxtLink
          v-if="link.url"
          :to="link.url"
          @focus="focusHandler"
          @blur="blurHandler"
          v-text="link.name"
        />
        <span
          v-else
          class="leading-8 md:leading-normal select-none"
          v-text="link.name"
        />
        <button
          aria-label="Menu"
          aria-haspopup="true"
          @blur="blurHandler"
          @focus="focusHandler"
          @keydown="keydownHandler"
          @mousedown="mousedownHandler"
        >
          <FIconChevronRight
            class="h-3 w-3 hover:cursor-pointer transition-transform"
            :class="isShown ? 'rotate-90' : '-rotate-90'"
          />
        </button>
      </div>
    </template>

    <template #default="{ blurHandler, hide }">
      <ul class="flex flex-col space-y-1 p-3">
        <li
          v-for="(dropdownLink, dropdownLinkIndex) in link.dropdown"
          :key="dropdownLinkIndex"
        >
          <NuxtLink
            :to="dropdownLink.url"
            class="leading-8 hover:text-blue-500"
            role="menuitem"
            @blur="blurHandler"
            @click="hide"
            v-text="dropdownLink.name"
          />
        </li>
      </ul>
    </template>
  </FTDropdown>
</template>

<script>
export default {
  props: {
    link: {
      type: Object,
      default: () => ({})
    }
  }
}
</script>
