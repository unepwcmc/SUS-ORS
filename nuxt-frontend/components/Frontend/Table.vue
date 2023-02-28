<template>
  <table class="table-fixed w-full my-12">
    <thead class="border-2 border-grey-bg">
      <tr class="">
        <th v-for="(item, itemIndex) in headers" :key="itemIndex" class="first:p-4">
          <div :class="{'flex justify-end pr-16': isLastItem(itemIndex)}">
            <div class="flex" :class="{'justify-center w-32': isLastItem(itemIndex)}">
              {{ item }}
            </div>
          </div>
        </th>
      </tr>
    </thead>
    <tbody>
      <tr v-for="(item, itemIndex) in data" :key="itemIndex" :class="{ 'bg-grey-bg': itemIndex % 2 == 1 }">
        <td v-for="(itemFromRow, itemFromRowIndex) in Object.entries(item)" :key="itemFromRowIndex" class="first:p-4">
          <div>
            {{ itemFromRow[1] }}
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
