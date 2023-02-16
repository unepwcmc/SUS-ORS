<template>
  <ul class="space-y-2">
    <li
      v-for="option in options"
      :key="option.id"
      class="cursor-pointer flex flex-nowrap items-center"
      @click.prevent="onSelectButtonClick(option)"
    >
      <div
        class="
          w-4
          h-4
          border border-gray-500
          mr-2
          lg:mr-4
          flex-shrink-0
          transition-colors
          ease-in-out
        "
        :class="[isValueSelected(option.id) ? 'bg-green-500' : 'bg-gray-50']"
      />
      <span v-text="option.label" />
    </li>
  </ul>
</template>

<script>
export default {
  model: {
    event: 'change',
    prop: 'ids'
  },

  props: {
    ids: {
      type: Array,
      default: () => []
    },

    options: {
      type: Array,
      required: true
    }
  },

  methods: {
    isValueSelected (id) {
      return this.ids.includes(id)
    },

    onSelectButtonClick (option) {
      if (this.isValueSelected(option.id)) {
        this.$emit(
          'change',
          this.ids.filter(id => id !== option.id)
        )
      } else {
        this.$emit('change', this.ids.concat([option.id]))
      }
    }
  }
}
</script>
