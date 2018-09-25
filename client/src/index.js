import React from 'react'
import ReactDOM from 'react-dom'
import { Provider } from 'redux-bundler-react'
import { ThemeProvider, injectGlobal } from 'styled-components'

import getStore from './bundles'
import theme from './theme'

import Layout from './hocs/Layout'
// import registerServiceWorker from './registerServiceWorker'

injectGlobal`
  * {
    box-sizing: border-box;
  }
  html,body,#root {
    margin: 0;
    padding: 0;
    width: 100%;
    height: 100%;
  }
`

ReactDOM.render(
  <Provider store={getStore()}>
    <ThemeProvider theme={theme}>
      <Layout />
    </ThemeProvider>
  </Provider>,
  document.getElementById('root')
)
// registerServiceWorker()
