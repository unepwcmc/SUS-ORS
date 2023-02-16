import objectKeysToCamelCase from '~/functions/objectKeysToCamelCase'

const HTTP_UNPROCESSABLE_ENTITY_ERROR = 422

export default function ({ $axios, $errors }) {
  $axios.interceptors.request.use(function (config) {
    if (config.data) {
      $errors.reset()
    }

    return config
  }, function (error) {
    return Promise.reject(error)
  })

  $axios.interceptors.response.use(function (response) {
    // Any status code that lie within the range of 2xx cause this function to trigger
    response.data = objectKeysToCamelCase(response.data)

    return response
  }, function (error) {
    if (error.response.status === HTTP_UNPROCESSABLE_ENTITY_ERROR) {
      $errors.set(error.response.data)
    }

    // Any status codes that falls outside the range of 2xx cause this function to trigger
    return Promise.reject(error)
  })
}
