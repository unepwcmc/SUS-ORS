<template>
  <div class="w-10/12">
    <div
      v-for="(item, itemIndex) in menuItems"
      :key="itemIndex"
      :class="[{ 'bg-grey-accent pl-4' : selected === itemIndex }, { 'border-y border-grey-accent' : itemIndex === 1 }]"
      class="flex justify-between items-center pr-4"
      @click="select(itemIndex)"
    >
      <div class="flex">
        <div><component :is="`FIcon${item.icon}`" class="w-6 mr-2 py-[1.125rem]" /></div>
        <div class="flex items-center text-base" :class="{ 'font-bold' : selected === itemIndex }">
          {{ item.title }}
        </div>
      </div>
      <FIconArrowRight v-if="selected === itemIndex" class="w-6 font-bold" />
    </div>
  </div>
</template>

<script>

export default {
  data () {
    return {
      menuItems: [{ title: 'Start from scratch', icon: 'Scratch' }, { title: 'Copy a past questionnaire', icon: 'Duplicate' }, { title: 'Questionnaire example', icon: 'Example' }],
      selected: 0
    }
  },

  computed: {
    classes () {
      return 'yo'
    }
  },

  methods: {
    select (index) {
      this.selected = index
    }
  }
}
</script>
