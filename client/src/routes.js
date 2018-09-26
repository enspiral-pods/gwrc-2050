import { createRouteBundle } from 'redux-bundler'

import Emissions from './pages/Emissions'
import EnergyDemand from './pages/EnergyDemand'

let routes = {
  '/calculator': Emissions,
  '/calculator/emissions': Emissions,
  '/calculator/energy-demand': EnergyDemand
}

export default createRouteBundle(routes)
