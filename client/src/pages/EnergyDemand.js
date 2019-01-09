import React from 'react'
import { connect } from 'redux-bundler-react'
import { Flex } from 'rebass'
import pick from 'lodash/pick'
import values from 'lodash/values'
import keys from 'lodash/keys'

import Calculator from '../hocs/Calculator'
import Table from '../components/Table'
import Graph from '../components/Graph'
import MobileLegend from '../components/MobileLegend'
import EmissionsBar from '../components/EmissionsBar'

const EnergyDemand = ({
  energyDemand,
  emissionsDecrease,
  isMobileUI,
  doToggleMobileGraphsMenu
}) => {
  const usedData = pick(energyDemand, [
    'Heating & cooling',
    'Industry',
    'Lighting & appliances',
    'Transport'
  ])
  const graphAreas = values(usedData)
  const graphNames = keys(usedData)
  const colors = ['#00C06F', '#FFC700', '#3285D9']
  const tickValues = [0, 5000, 10000, 15000]
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
      />
      <MobileLegend data={graphNames} colors={colors} />
      <EmissionsBar emissionsDecrease={emissionsDecrease} />
    </Calculator>
  )
}

export default connect(
  'selectEnergyDemand',
  'selectEmissionsDecrease',
  'selectIsMobileUI',
  EnergyDemand
)
