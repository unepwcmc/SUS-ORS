<template>
  <div class="border-grey-accent border bg-grey-bg pt-6 pb-16 flex flex-col items-center">
    <div class="mb-4">
      Profile picture
    </div>
    <FIconProfilePicture class="w-24" />
    <p class="text-grey-profile_pic text-sm text-center my-6">
      Upload a profile picture. <br> Max size 2MB
    </p>
    <FButtonsButton
      color="blue"
      class="font-bold text-sm py-2.5 px-[1.125rem]"
      text="Browse"
      background-transparent
    />
  </div>
</template>
