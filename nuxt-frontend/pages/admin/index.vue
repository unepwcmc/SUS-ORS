<template>
  <div>
    Welcome to the admin page<br>
    <button @click="onLogoutButtonClick">
      Logout
    </button>
  </div>
</template>

<script>
export default {
  name: 'AdminHomePage',

  layout: 'admin',

  methods: {
    onLogoutButtonClick () {
      this.$auth.logout().then(() => {
        this.$router.push('/admin/login')
      })
    }
  }
}
</script>
