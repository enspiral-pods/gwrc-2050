import { createRouteBundle } from 'redux-bundler'

import Emissions from './pages/Emissions'
import EnergyDemand from './pages/EnergyDemand'

let routes = {
  '/': Emissions,
  '/emissions': Emissions,
  '/energy-demand': EnergyDemand
}

export default createRouteBundle(routes)
