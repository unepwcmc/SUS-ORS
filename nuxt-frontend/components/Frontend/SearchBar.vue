<template>
  <div class="border border-grey-accent py-2.5 pl-5 pr-4 text-sm flex space-x-2.5">
    <div>
      &#128269;
    </div>
    <div>
      {{ text }}
    </div>
  </div>
</template>

<script>
export default {
  props: {
    text: {
      type: String,
      default: 'search something'
    }
  }
}
</script>
