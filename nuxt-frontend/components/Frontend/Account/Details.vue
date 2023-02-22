<template>
  <div>
    <div class="text-3xl mb-6">My Account details </div>
    <div class="flex space-x-6">
      <FAccountProfilePictureCard />
      <div class="flex flex-col justify-between">
        <FFormInput label="First name" placeholder="Add your first name" />
        <FFormInput label="Email address" placeholder="Add email here " />
        <FFormInput label="Created by" placeholder="UNEP-WCMC Admin" />
      </div>
      <div class="flex flex-col justify-between">
        <FFormInput label="Last name" placeholder="Add your last name " />
        <FFormInput label="Phone number" placeholder="Add a phone number" />
        <FFormInput label="Created" :placeholder="dateToday" />
      </div>
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
