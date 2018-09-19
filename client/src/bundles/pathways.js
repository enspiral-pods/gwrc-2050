import { createAsyncResourceBundle } from 'redux-bundler'

export default createAsyncResourceBundle({
  name: 'pathways',
  getPromise: async ({ apiFetch }) => {
    return apiFetch(
      '/pathways/11111111111111111111111111111111111111111111111111111/data'
    )
  },
  staleAfter: Infinity
})
