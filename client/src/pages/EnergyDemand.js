import React from 'react'
import { connect } from 'redux-bundler-react'
import pick from 'lodash/pick'
import values from 'lodash/values'
import keys from 'lodash/keys'

import Calculator from '../hocs/Calculator'
import Graph from '../components/Graph'

const EnergyDemand = ({
  energyDemand,
  emissionsDecrease,
  isMobileUI,
  doToggleMobileGraphsMenu,
  selectedTerritorialAuthority
}) => {
  const usedData = pick(energyDemand, [
    'Heating & cooling',
    'Industry',
    'Lighting & appliances',
    'Transport'
  ])
  const graphAreas = values(usedData)
  const graphNames = keys(usedData)
  const colors = ['#00C06F', '#FFC700', '#3285D9', '#905BFF']
  let tickValues = [0, 5000, 10000, 15000]
  if (selectedTerritorialAuthority !== 'greater_wellington') {
    tickValues = null
  }
  return (
    <Calculator>
      {/* <Table data={energyDemand} /> */}
      <Graph
        name={'Energy Demand'}
        axes={'Energy (GWh/yr)'}
        axesTickValues={tickValues}
        data={graphAreas}
        labels={graphNames}
        colors={colors}
        isMobileUI={isMobileUI}
        emissionsDecrease={emissionsDecrease}
      />
    </Calculator>
  )
}

export default connect(
  'selectEnergyDemand',
  'selectEmissionsDecrease',
  'selectIsMobileUI',
  'selectSelectedTerritorialAuthority',
  EnergyDemand
)
