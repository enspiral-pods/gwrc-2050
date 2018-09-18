import React from 'react'
import ReactDOM from 'react-dom'
import { Provider } from 'redux-bundler-react'
import { ThemeProvider } from 'react-fela'

import getStore from './bundles'
import theme from './theme'

import Layout from './hocs/Layout'
// import registerServiceWorker from './registerServiceWorker'

ReactDOM.render(
  <Provider store={getStore()}>
    <ThemeProvider theme={theme}>
      <Layout />
    </ThemeProvider>
  </Provider>,
  document.getElementById('root')
)
// registerServiceWorker()
