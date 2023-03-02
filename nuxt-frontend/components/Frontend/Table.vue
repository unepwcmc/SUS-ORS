<template>
  <table class="table-auto w-full my-12">
    <thead class="border-2 border-grey-bg">
      <tr class="">
        <th v-for="(item, itemIndex) in headers" :key="itemIndex" class="first:p-4">
          <div :class="{'flex justify-end pr-16': isLastItem(itemIndex)}">
            <div class="flex" :class="[{'justify-center w-32': isLastItem(itemIndex)}, item.style]">
              {{ item.text }}
            </div>
          </div>
        </th>
      </tr>
    </thead>
    <tbody>
      <tr v-for="(row, rowIndex) in data" :key="rowIndex" :class="{ 'bg-grey-bg': rowIndex % 2 == 1 }">
        <td
          v-for="(item, itemIndex) in Object.entries(row)"
          :key="itemIndex"
          class="first:p-4"
          :class="Object.entries(item[1])[1][1]"
        >
          <NuxtLink
            v-if="Object.entries(item[1])[0][0] === 'Link'"
            :to="'/'"
            v-text="Object.entries(item[1])[0][1]"
          />
          <div v-else-if="Object.entries(item[1])[0][0] === 'IndicatorStatus'">
            <FIndicatorStatus :is-active="Object.entries(item[1])[0][1]" />
          </div>
          <div v-else>
            {{ Object.entries(item[1])[0][1] }}
          </div>
        </td>
        <td v-if="actions">
          <div class="flex justify-end pr-16">
            <div class="w-32 flex justify-center">
              <FActionsMoreActionsButton :actions="actions" />
            </div>
          </div>
        </td>
      </tr>
    </tbody>
  </table>
</template>

<script>
export default {
  props: {
    headers: {
      type: Array,
      default: () => []
    },
    data: {
      type: Array,
      default: () => []
    },

    actions: {
      type: Array,
      default: undefined
    }
  },

  methods: {
    isLastItem (index) {
      return this.headers.length === index + 1
    }
  }
}
</script>
