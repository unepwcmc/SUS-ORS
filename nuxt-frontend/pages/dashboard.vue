<template>
  <div>
    <h4 class="bg-grey-bg py-6 pl-14">
      Dashboard
    </h4>
    <div class="flex justify-center">
      <div class="w-10/12">
        <div class="flex mt-12 items-center justify-between">
          <h3 class="">
            Created questionnaires
          </h3>
          <FButtonsButton text="Add a new questionnaire" color="blue" class="font-bold py-2.5 px-[1.125rem]" />
        </div>
        <FTable
          :headers="headers"
          :data="data"
          :actions="[{icon:'Delete', text:'Delete'},
                     {icon:'Edit', text:'Edit'},
                     {icon:'Duplicate', text:'Duplicate'},
                     {icon:'Preview', text:'Preview'},
                     {icon:'Results', text:'See results'},
                     {icon:'Send', text:'Send'}]"
        />
      </div>
    </div>
  </div>
</template>

<script>

export default {
  data () {
    return {
      headers: [{ text: 'Title' }, { text: 'Created at' }, { text: 'Status', style: 'pl-20' }, { text: 'Responses' }, { text: 'Quick links' }],
      data: [{ col1: { Link: 'Ramsar National Report to COP14', style: 'whitespace-nowrap text-blue-font' }, col2: { CreatedAt: '12/01/2019', style: '' }, col3: { IndicatorStatus: true, style: 'pl-20' }, col4: { Responses: 120, style: '' } },
        { col1: { Link: 'IAC Demo Version 2018', style: 'whitespace-nowrap text-blue-font' }, col2: { CreatedAt: '12/01/2018', style: '' }, col3: { IndicatorStatus: false, style: 'pl-20' }, col4: { Responses: 120, style: '' } },
        { col1: { Link: 'IAC Demo Version 2014', style: 'whitespace-nowrap text-blue-font' }, col2: { CreatedAt: '12/01/2014', style: '' }, col3: { IndicatorStatus: true, style: 'pl-20' }, col4: { Responses: 120, style: '' } },
        { col1: { Link: 'IAC Demo Version 2010', style: 'whitespace-nowrap text-blue-font' }, col2: { CreatedAt: '12/01/2010', style: '' }, col3: { IndicatorStatus: false, style: 'pl-20' }, col4: { Responses: 120, style: '' } }]
    }
  }
}
</script>
