import Vue from 'vue'
import VueTailwind from 'vue-tailwind'

import {
  TInput,
  TTextarea,
  TSelect,
  TRadio,
  TCheckbox,
  TButton,
  TInputGroup,
  TCard,
  // TAlert,
  TModal,
  TDropdown
  // TRichSelect,
  // TPagination,
  // TTag,
  // TRadioGroup,
  // TCheckboxGroup,
  // TTable,
  // TDatepicker,
  // TToggle,
  // TDialog
} from 'vue-tailwind/dist/components'

const settings = {
  AdminTInput: {
    component: TInput,
    props: {}
  },
  AdminTTextarea: {
    component: TTextarea,
    props: {}
  },
  AdminTSelect: {
    component: TSelect,
    props: {}
  },
  AdminTRadio: {
    component: TRadio,
    props: {}
  },
  AdminTCheckbox: {
    component: TCheckbox,
    props: {}
  },
  AdminTButton: {
    component: TButton,
    props: {}
  },
  AdminTInputGroup: {
    component: TInputGroup,
    props: {}
  },
  AdminTCard: {
    component: TCard,
    props: {}
  },
  FTModal: {
    component: TModal,
    props: {
      fixedClasses: {
        overlay: 'z-40 overflow-auto scrolling-touch w-full h-full fixed bg-gray-50/75 align-center justify-center',
        wrapper: 'relative mt-4 mx-auto z-50 max-w-2xl w-full border-gray-400 border-2 bg-white',
        modal: 'overflow-visible relative w-full max-w-2xl flex flex-col items-center',
        body: 'w-full h-[80vh] lg:h-[60vh] px-8 lg:px-16 pb-8 lg:pb-16 pt-4 overflow-y-auto scrollbar scrollbar-thumb-gray-400 scrollbar-track-gray-100',
        header: '',
        footer: '',
        close: 'place-self-end text-gray-400 rounded-full m-3 h-10 w-10 transition duration-100 ease-in-out focus:ring-2 focus:ring-blue-500 focus:outline-none focus:ring-opacity-50 hover:bg-gray-50'
      },
      classes: {
        overlay: '',
        wrapper: '',
        modal: '',
        body: '',
        header: '',
        footer: '',
        close: '',
        closeIcon: '',
        overlayEnterClass: 'opacity-0',
        overlayEnterActiveClass: 'transition ease-out duration-100',
        overlayEnterToClass: 'opacity-100',
        overlayLeaveClass: 'opacity-100',
        overlayLeaveActiveClass: 'transition ease-in duration-75',
        overlayLeaveToClass: 'opacity-0',
        enterClass: '',
        enterActiveClass: '',
        enterToClass: '',
        leaveClass: '',
        leaveActiveClass: '',
        leaveToClass: ''
      },
      variants: {}
    }
  },
  FTDropdown: {
    component: TDropdown,
    props: {
      fixedClasses: {
        button: 'block px-4 py-2 text-white transition duration-100 ease-in-out bg-blue-500 border border-transparent rounded shadow-sm hover:bg-blue-600 focus:border-blue-500 focus:ring-2 focus:ring-blue-500 focus:outline-none focus:ring-opacity-50 disabled:opacity-50 disabled:cursor-not-allowed',
        wrapper: 'inline-flex flex-col',
        dropdownWrapper: 'relative z-10',
        dropdown: 'origin-top-left absolute left-0 w-56 rounded shadow bg-white mt-1',
        enterClass: 'opacity-0 scale-95',
        enterActiveClass: 'transition transform ease-out duration-100',
        enterToClass: 'opacity-100 scale-100',
        leaveClass: 'opacity-100 scale-100',
        leaveActiveClass: 'transition transform ease-in duration-75',
        leaveToClass: 'opacity-0 scale-95'
      }
    }
  }
}

Vue.use(VueTailwind, settings)
