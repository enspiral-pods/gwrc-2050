import { createRouteBundle } from 'redux-bundler'

import Calculator from './pages/Calculator'

let routes = {
  '/': Calculator
}

export default createRouteBundle(routes)
