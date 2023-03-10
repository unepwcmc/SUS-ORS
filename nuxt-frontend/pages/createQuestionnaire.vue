<template>
  <div class="flex flex-col">
    <FLayoutQuestionnaireHeader />
    <div class="flex-grow flex">
      <div class="bg-grey-bg w-1/4 pt-10 flex justify-end">
        <FLayoutQuestionnaireCreateMenu />
      </div>
      <div class="bg-red-500 flex-grow">
        right side !!
      </div>
    </div>
  </div>
</template>

<script>
export default {
  name: 'CreateQuestionnaire',

  layout: 'questionnaire'
}
</script>
