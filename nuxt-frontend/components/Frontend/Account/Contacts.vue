<template>
  <div class="flex flex-col items-center">
    <div class="text-3xl mb-6 item-start w-full">
      Contacts
    </div>
    <div class="bg-grey-bg w-full p-6">
      <div class="text-2xl mb-6">
        Add new contact
      </div>
      <div class="flex justify-between space-x-6">
        <FFormInput label="Email" placeholder="Add email address" class="w-2/5" />
        <FFormInput label="Country" placeholder="Add country" class="w-2/5" />
        <div class="flex flex-col justify-end">
          <FButtonsButton
            color="blue"
            class="w-full font-semibold whitespace-nowrap h-14"
            text="+ Add new contact"
          />
        </div>
      </div>
    </div>
    <FTable
      :actions="[{icon:'Delete', text:'Delete'},
                 {icon:'Edit', text:'Edit'},
                 {icon:'Duplicate', text:'Duplicate'},
                 {icon:'Preview', text:'Preview'},
                 {icon:'Results', text:'See results'},
                 {icon:'Send', text:'Send'}
      ]"
      :data="data"
      :headers="headers"
    />
  </div>
</template>

<script>

export default {
  data () {
    return {
      data: [
        { country: 'UK', Email: 'main-respondent-UK@ramsar.com' },
        { country: 'Malawi', Email: 'main-respondent-Malawi@ramsar.com' },
        { country: 'Iceland', Email: 'main-respondent-Iceland@ramsar.com' },
        { country: 'Sweden', Email: 'main-respondent-Sweden@ramsar.com' }
      ],
      headers: ['Countries', 'Email', 'Actions']
    }
  }
}
</script>
