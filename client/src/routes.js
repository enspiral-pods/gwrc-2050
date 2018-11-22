import { createRouteBundle } from 'redux-bundler'

import Landing from './pages/Landing'
import Emissions from './pages/Emissions'
import EnergyDemand from './pages/EnergyDemand'
import EnergySupply from './pages/EnergySupply'
import ElectricityDemand from './pages/ElectricityDemand'
import ElectricitySupply from './pages/ElectricitySupply'

let routes = {
  '/': Landing,
  '/calculator': Emissions,
  '/calculator/emissions': Emissions,
  '/calculator/energy-demand': EnergyDemand,
  '/calculator/energy-supply': EnergySupply,
  '/calculator/electricity-demand': ElectricityDemand,
  '/calculator/electricity-supply': ElectricitySupply
}

export default createRouteBundle(routes)
