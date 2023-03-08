<template>
  <div>
    <div class="mb-3">
      <label class="text-[1.125rem] leading-6">
        {{ label }}
      </label>
    </div>
    <div v-if="!imposed" class="flex relative">
      <input v-model="message" :placeholder="placeholder" class="text-sm border-2 p-3.5 w-full">
      <FIconChevronRight v-if="chevron" class="text-black opacity-60 items-center w-5 rotate-90 absolute right-[1rem] top-[1rem]" />
    </div>
    <div v-else class="flex items-center text-neutral-200 text-sm border-2 p-3.5 w-full">
      {{ placeholder }}
    </div>
  </div>
</template>

<script>
export default {
  props: {
    label: {
      type: String,
      default: undefined
    },

    imposed: {
      type: Boolean,
      default: false
    },

    chevron: {
      type: Boolean,
      default: false
    },

    placeholder: {
      type: String,
      default: undefined
    }
  },

  data () {
    return {
      message: undefined
    }
  }
}
</script>

<style>
div[data-lastpass-icon-root] {
  display: none;
}
</style>
