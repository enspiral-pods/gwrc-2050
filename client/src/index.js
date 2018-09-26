import React from 'react'
import ReactDOM from 'react-dom'
import { Provider } from 'redux-bundler-react'
import { ThemeProvider, createGlobalStyle } from 'styled-components'

import getStore from './bundles'
import theme from './theme'

import Layout from './hocs/Layout'
// import registerServiceWorker from './registerServiceWorker'

const GlobalStyle = createGlobalStyle`
  * {
    box-sizing: border-box;
  }
  html,body,#root {
    margin: 0;
    padding: 0;
    height: 100%;
    width: 100%;
  }
`

ReactDOM.render(
  <Provider store={getStore()}>
    <ThemeProvider theme={theme}>
      <React.Fragment>
        <GlobalStyle />
        <Layout />
      </React.Fragment>
    </ThemeProvider>
  </Provider>,
  document.getElementById('root')
)
// registerServiceWorker()
