<template>
  <div class="flex space-x-6">
    <div>
      <FFormInput label="First name" placeholder="Add your first name" />
      <FFormInput label="Email address" placeholder="Add email here "/>
      <FFormInput label="Created by" placeholder="UNEP-WCMC Admin"/>
    </div>
    <div>
      <FFormInput label="Last name" placeholder="Add your last name "/>
      <FFormInput label="Phone number" placeholder="Add a phone number"/>
      <FFormInput label="Created" placeholder="ze date of today"/>
    </div>
  </div>
</template>

<script>
export default {
  data () {
    return {
      message: undefined
    }
  }
}
</script>
