<template>
  <div class="pl-6 pt-8 pb-16">
    <h2 class="mb-7">
      New questionnaire
    </h2>
    <FFormInput label="Questionnaire name" placeholder="name" class="pb-8" />
    <FFormInput label="Date" placeholder="Ramsar National Report to COP14" class="pb-8" />
    <div class="flex space-x-[1.625rem] pb-10">
      <FFormInput label="Label dropdown" placeholder="Select language" chevron class="w-1/2" />
      <FFormInput label="Add other languages" placeholder="Select other languages" chevron class="w-1/2" />
    </div>
    <div class="flex justify-end">
      <FButtonsButton color="blue" text="Next" class="text-sm font-bold py-2.5 px-[1.125rem]" />
    </div>
  </div>
</template>
