<template>
  <div class="min-h-screen bg-gray-100 flex flex-col justify-center">
    <div class="bg-white sm:max-w-xl sm:mx-auto p-4 sm:p-12 rounded-sm">
      <form @submit.prevent="onSubmit">
        <AdminTInputGroup
          label="Email"
          class="mb-4 md:mb-6"
          v-bind="{ variant: inputVariant }"
        >
          <AdminTInput v-model="login.email" type="text" />
        </AdminTInputGroup>
        <AdminTInputGroup
          class="mb-4 md:mb-6"
          label="Password"
          v-bind="{ variant: inputVariant }"
        >
          <AdminTInput v-model="login.password" type="password" />
        </AdminTInputGroup>
        <div>
          <AdminTButton type="submit" variant="success">
            Login
          </AdminTButton>
        </div>
      </form>
    </div>
  </div>
</template>

<script>
export default {
  name: 'AdminLoginPage',

  layout: 'blank',

  auth: 'guest',

  middleware ({ $auth, redirect }) {
    if ($auth.loggedIn) {
      redirect('/admin/')
    }
  },

  data () {
    return {
      busy: false,

      login: {
        email: '',
        password: ''
      },

      hasError: false
    }
  },

  computed: {
    inputVariant () {
      return this.hasError ? 'danger' : ''
    }
  },

  methods: {
    async onSubmit () {
      await this.userLogin()
    },

    setBusy (busy) {
      this.busy = busy === true
    },

    setError (hasError) {
      this.hasError = hasError === true
    },

    async userLogin () {
      try {
        this.setBusy(true)
        this.setError(false)
        const response = await this.$auth.loginWith('local', {
          data: {
            admin_user: this.login
          }
        })
        const [, token] = response.headers.authorization.split(' ')

        if (token) {
          this.$auth.setUserToken(token)
          this.$axios.setToken(token)
          this.$auth.setUser(response.data)
        }
      } catch (err) {
        // eslint-disable-next-line
        console.log({ err })

        if (err.response.status === 401) {
          this.setError(true)
        }
      }
      this.setBusy(false)
    }
  }
}
</script>
