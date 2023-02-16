<template>
  <div class="admin">
    <PortalTarget name="modal" />
    <div class="min-h-screen bg-gray-100 flex flex-col justify-center">
      <div class="grid grid-cols-5 gap-0">
        <div
          class="
            bg-gray-100
            border-solid border-gray-300 border-b-2
            px-6
            py-3
            md:py-6
            col-span-5
          "
        />
        <div class="min-h-screen text-gray-100 bg-gray-600 px-6 sm:py-12">
          <ul class="space-y-4">
            <li v-for="link in navigation" :key="link.to">
              <NuxtLink :to="link.to" class="block">
                {{ link.text }}
              </NuxtLink>
            </li>
          </ul>
        </div>
        <div class="min-h-screen px-6 sm:py-12 col-span-4">
          <Nuxt />
        </div>
      </div>
    </div>
  </div>
</template>

<script>
export default {
  name: 'LayoutsAdmin',

  middleware: 'auth',

  data () {
    return {
      navigation: [
        {
          text: 'Home',
          to: '/admin/'
        }
      ]
    }
  }
}
</script>
