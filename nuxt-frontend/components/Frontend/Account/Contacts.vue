<template>
  <div class="flex flex-col items-center">
    <div class="flex justify-between w-full mb-4">
      <div class="text-2xl">
        Contacts
      </div>
      <div class="border border-grey-accent py-2.5 pl-5 pr-4 text-sm">
        &#128269; Search email address
      </div>
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
            class="w-full font-semibold whitespace-nowrap py-2.5 px-4"
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
      headers: [{ text: 'Countries' }, { text: 'Email' }, { text: 'Actions', style: 'pl-20' }],
      data: [{ col1: { country: 'UK', style: 'whitespace-nowrap text-blue-font' }, col2: { Email: 'main-respondent-UK@ramsar.com', style: '' } },
        { col1: { country: 'Malawi', style: 'whitespace-nowrap text-blue-font' }, col2: { Email: 'main-respondent-Malawi@ramsar.com', style: '' } },
        { col1: { country: 'Iceland', style: 'whitespace-nowrap text-blue-font' }, col2: { Email: 'main-respondent-Iceland@ramsar.com', style: '' } },
        { col1: { country: 'Sweden', style: 'whitespace-nowrap text-blue-font' }, col2: { Email: 'main-respondent-Sweden@ramsar.com', style: '' } }]
    }
  }
}
</script>
