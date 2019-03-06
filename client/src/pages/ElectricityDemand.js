import React from 'react'
import { connect } from 'redux-bundler-react'
import pick from 'lodash/pick'
import values from 'lodash/values'
import keys from 'lodash/keys'

import Calculator from '../hocs/Calculator'
import Graph from '../components/Graph'

const ElectricityDemand = ({
  electricityDemand,
  emissionsDecrease,
  isMobileUI,
  doToggleMobileGraphsMenu,
  selectedTerritorialAuthority
}) => {
  const usedData = pick(electricityDemand, [
    'Heating & cooling',
    'Industry',
    'Lighting & appliances',
    'Transport'
  ])
  const graphAreas = values(usedData)
  const graphNames = keys(usedData)
  const colors = ['#00C06F', '#FFC700', '#3285D9']
  let tickValues = [0, 1000, 2000, 3000, 4000]
  if (selectedTerritorialAuthority !== 'greater_wellington') {
    tickValues = null
  }
  return (
    <Calculator>
      {/* <Table data={usedData} /> */}
      <Graph
        name={'Electricity Demand'}
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
  'selectElectricityDemand',
  'selectEmissionsDecrease',
  'selectSelectedTerritorialAuthority',
  ElectricityDemand
)
