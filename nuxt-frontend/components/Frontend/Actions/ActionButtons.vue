<template>
  <div class="bg-grey-accent p-4 whitespace-nowrap">
    <div v-for="(item, itemIndex) in actions" :key="itemIndex">
      <FActionsActionButton :action="item" />
    </div>
  </div>
</template>

<script>
export default {
  props: {
    actions: {
      type: Array,
      default: () => []
    }
  }
}
</script>
