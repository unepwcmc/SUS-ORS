<template>
  <div class="group relative">
    <slot />
    <div
      role="tooltip"
      class="
        hidden
        group-hover:block
        absolute
        top-[calc(100%+1.25rem)]
        -translate-x-1/2
        left-1/2
        z-20
        py-2
        px-8
        text-gray-600
        bg-gray-50
        border
        shadow-sm
        opacity-0
        group-hover:opacity-100
        group-focus:opacity-100
        transition
        whitespace-nowrap
      "
    >
      <slot name="tooltip" />
      <div
        class="
          absolute
          -top-2
          left-[calc(50%-0.5rem)]
          bg-gray-50
          border-t border-l
          z-10
          w-4
          h-4
          rotate-45
        "
      />
    </div>
  </div>
</template>
