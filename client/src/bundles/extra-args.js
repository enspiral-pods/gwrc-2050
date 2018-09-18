/* global fetch */

export default {
  name: 'extra-args',
  getExtraArgs: store => {
    return {
      apiFetch: (urlPath, config = {}) => {
        return fetch(`/api/${urlPath}`, {
          ...config,
          headers: {
            Accept: 'application/json',
            'Content-Type': 'application/json'
          }
        }).then(res => {
          if (!res.ok) {
            console.error(res)
            return Promise.reject(new Error(res.status))
          }
          return res.json()
        })
      }
    }
  }
}
