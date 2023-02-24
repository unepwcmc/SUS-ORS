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
          <button class="flex items-center h-14 mt-2 justify-center py-3 px-8 bg-blue-bg_button rounded text-white font-bold">
            + Add new contact
          </button>
        </div>
      </div>
    </div>
    <table class="table-fixed w-full my-12">
      <thead class="border-2 border-grey-bg">
        <tr>
          <th class="p-4">
            <div class="flex justify-start">
              Countries
            </div>
          </th>
          <th>
            <div class="flex justify-start">
              Email
            </div>
          </th>
          <th class="flex justify-end py-4 pr-16">
            <div class="w-32">
              Actions
            </div>
          </th>
        </tr>
      </thead>
      <tbody>
        <tr v-for="(item, itemIndex) in data" :key="itemIndex" :class="{ 'bg-grey-bg': itemIndex % 2 == 1 }">
          <td class="p-4">
            <div>
              {{ item.country }}
            </div>
          </td>
          <td>
            <div>
              {{ item.Email }}
            </div>
          </td>
          <td>
            <div class="flex justify-end pr-16">
              <div class="w-32 flex justify-center">
                <FActionsMoreActionsButton />
              </div>
            </div>
          </td>
        </tr>
      </tbody>
    </table>
  </div>
</template>

<script>
export default {
  props: {
    data: {
      type: Array,
      default: () => [
        { country: 'UK', Email: 'main-respondent-UK@ramsar.com' },
        { country: 'Malawi', Email: 'main-respondent-Malawi@ramsar.com' },
        { country: 'Iceland', Email: 'main-respondent-Iceland@ramsar.com' },
        { country: 'Sweden', Email: 'main-respondent-Sweden@ramsar.com' }
      ]
    }
  }
}
</script>
