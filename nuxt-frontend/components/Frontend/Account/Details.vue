<template>
  <div>
    <div class="text-3xl mb-6">
      My Account details
    </div>
    <div class="flex space-x-6">
      <FAccountProfilePictureCard class="w-1/5" />
      <div class="flex flex-col justify-between w-2/5">
        <FFormInput label="First name" placeholder="Add your first name" />
        <FFormInput label="Email address" placeholder="Add email here " />
        <FFormInput label="Created by" placeholder="UNEP-WCMC Admin" />
      </div>
      <div class="flex flex-col justify-between w-2/5">
        <FFormInput label="Last name" placeholder="Add your last name " />
        <FFormInput label="Phone number" placeholder="Add a phone number" />
        <FFormInput label="Created" :placeholder="dateToday" />
      </div>
    </div>
    <div class="flex justify-end font-bold space-x-4 mt-8">
      <button class="flex items-center justify-center py-3 px-8 border-2 border-blue-bg_button rounded text-blue-bg_button">
        Cancel
      </button>
      <button class="flex items-center justify-center py-3 px-8 bg-blue-bg_button rounded text-white">
        Save
      </button>
    </div>
  </div>
</template>

<script>
export default {
  data () {
    return {
      message: undefined
    }
  },

  computed: {
    dateToday () {
      const date = new Date()
      const [month, day, year] = [
        date.getMonth(),
        date.getDate(),
        date.getFullYear()
      ]
      return `${day}/${month}/${year}`
    }
  }
}
</script>
