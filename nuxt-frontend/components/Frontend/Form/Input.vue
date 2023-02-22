<template>
  <div>
    <div class="text-xl">{{ label }}</div>
    <input v-model="message" :placeholder="placeholder" class="h-10 border-2 pl-4 mt-2"></input>
  </div>
</template>

<script>
export default {
  props: {
    label: {
      type: String,
      default: undefined
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
