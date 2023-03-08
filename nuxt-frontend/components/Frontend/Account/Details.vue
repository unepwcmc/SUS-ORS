<template>
  <div>
    <div class="text-2xl mb-6">
      My Account details
    </div>
    <div class="flex space-x-6">
      <FAccountProfilePictureCard class="w-[14rem]" />
      <div class="flex flex-col justify-between grow">
        <FFormInput label="First name" placeholder="Add your first name" />
        <FFormInput label="Email address" placeholder="Add email here " />
        <FFormInput label="Created by" placeholder="UNEP-WCMC Admin" imposed />
      </div>
      <div class="flex flex-col justify-between grow">
        <FFormInput label="Last name" placeholder="Add your last name " />
        <FFormInput label="Phone number" placeholder="Add a phone number" />
        <FFormInput label="Created" :placeholder="dateToday" imposed />
      </div>
    </div>
    <div class="flex justify-end font-bold space-x-4 mt-8">
      <FButtonsButton text="Cancel" color="blue" background-transparent class="text-sm py-2.5 px-[1.125rem]" />
      <FButtonsButton text="Save" color="blue" class="text-sm py-2.5 px-[1.125rem]" />
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
