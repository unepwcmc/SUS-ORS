<template>
  <div>
    <div v-if="!imposed">
      <div class="text-xl">
        {{ label }}
      </div>
      <input v-model="message" :placeholder="placeholder" class="h-14 border-2 pl-4 mt-2 w-full"></input>
    </div>
    <div v-else>
      <div class="text-xl">
        {{ label }}
      </div>
      <div class="flex items-center text-neutral-200 h-14 border-2 pl-4 mt-2 w-full">
        {{ placeholder }}
      </div>
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
