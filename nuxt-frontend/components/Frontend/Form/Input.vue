<template>
  <div>
    <div class="mb-3">
      <label class="text-[1.125rem] leading-6">
        {{ label }}
      </label>
    </div>
    <input v-if="!imposed" v-model="message" :placeholder="placeholder" class="text-sm border-2 p-3.5 w-full">
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
