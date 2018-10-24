import React from 'react'
import ReactDOM from 'react-dom'
import { Provider } from 'redux-bundler-react'
import { ThemeProvider, createGlobalStyle } from 'styled-components'

import getStore from './bundles'
import theme from './theme'

import Layout from './hocs/Layout'
// import registerServiceWorker from './registerServiceWorker'

import interBold from './assets/fonts/Inter-UI-Bold.woff2'
import interMedium from './assets/fonts/Inter-UI-Medium.woff2'
import interRegular from './assets/fonts/Inter-UI-Regular.woff2'

const GlobalStyle = createGlobalStyle`
  @font-face {
    font-family: 'Inter-UI-Bold';
    src: local('Inter-UI-Bold'), url(${interBold}) format('woff2');
  }
  @font-face {
    font-family: 'Inter-UI-Medium';
    src: local('Inter-UI-Medium'), url(${interMedium}) format('woff2');
  }
  @font-face {
    font-family: 'Inter-UI-Regular';
    src: local('Inter-UI-Regular'), url(${interRegular}) format('woff2');
  }
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
