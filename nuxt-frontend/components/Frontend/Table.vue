<template>
  <table class="table-auto w-full my-12">
    <thead class="border-2 border-grey-bg">
      <tr>
        <th v-for="(item, itemIndex) in headers" :key="itemIndex" class="first:py-4 first:pl-5">
          <div :class="{'flex justify-end pr-16': isLastItem(itemIndex)}">
            <div class="flex text-sm font-normal" :class="[{'justify-center w-32': isLastItem(itemIndex)}, item.style]">
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
          class="first:py-2.5 text-[1.125rem] leading-6 first:pl-[1.125rem]"
          :class="dataToUse(item)"
        >
          <NuxtLink
            v-if="checkItemStatus(item, 'Link')"
            :to="'/'"
            v-text="dataToDisplay(item)"
          />
          <div v-else-if="checkItemStatus(item, 'IndicatorStatus')">
            <FIndicatorStatus :is-active="dataToDisplay(item)" />
          </div>
          <div v-else>
            {{ dataToDisplay(item) }}
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
    },

    checkItemStatus (item, itemStatus) {
      return this.dataToUse(item, 1, 0, 0) === itemStatus
    },

    dataToDisplay (item) {
      return this.dataToUse(item, 1, 0, 1)
    },

    dataToUse (item, a = 1, b = 1, c = 1) {
      return Object.entries(item[a])[b][c]
    }
  }
}
</script>
