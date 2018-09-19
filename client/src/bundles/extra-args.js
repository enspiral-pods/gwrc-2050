/* global fetch */

export default {
  name: 'extra-args',
  getExtraArgs: store => {
    return {
      apiFetch: (urlPath, config = {}) => {
        return fetch(`${process.env.REACT_APP_API_URL}${urlPath}`, {
          ...config,
          headers: {
            'Content-Type': 'application/json',
            Accept: 'application/json'
          }
        }).then(res => {
          if (!res.ok) {
            console.error('err', res)
            return Promise.reject(new Error(res.status))
          }
          return res.json()
        })
      }
    }
  }
}
