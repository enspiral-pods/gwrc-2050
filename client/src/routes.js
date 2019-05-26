import { createRouteBundle } from 'redux-bundler'

import Landing from './pages/Landing'
import Data from './pages/Data'
import HowItWorks from './pages/How-it-works'
import Emissions from './pages/Emissions'
import EnergyDemand from './pages/EnergyDemand'
import EnergySupply from './pages/EnergySupply'
import ElectricityDemand from './pages/ElectricityDemand'
import ElectricitySupply from './pages/ElectricitySupply'
import Flows from './pages/Flows'

let routes = {
  '/': Landing,
  '/share/:region/:leverString': Emissions,
  '/data': Data,
  '/how-it-works': HowItWorks,
  '/calculator': Emissions,
  '/calculator/emissions': Emissions,
  '/calculator/energy-demand': EnergyDemand,
  '/calculator/energy-supply': EnergySupply,
  '/calculator/electricity-demand': ElectricityDemand,
  '/calculator/electricity-supply': ElectricitySupply,
  '/calculator/flows': Flows
}

export default createRouteBundle(routes)
