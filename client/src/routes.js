import { createRouteBundle } from 'redux-bundler'

import Emissions from './pages/Emissions'

let routes = {
  '/': Emissions
}

export default createRouteBundle(routes)
