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

const EnergySupply = ({
  energySupply,
  emissionsDecrease,
  isMobileUI,
  doToggleMobileGraphsMenu
}) => {
  const usedData = pick(energySupply, [
    'Electricity imports',
    'Environmental heat',
    'Geothermal',
    'Hydro',
    'Imported Bioenergy',
    'Imported Coal',
    'Imported Gas',
    'Imported Oil',
    // Not needed for NZ?
    'Nuclear fission',
    'Solar',
    'Tidal',
    // NZ?
    'UK Bioenergy',
    'UK Coal',
    'UK Gas',
    'UK Oil',
    'Wave',
    'Wind'
  ])

  const graphAreas = values(usedData)
  const graphNames = keys(usedData)
  const colors = ['#FFC700', '#3285D9', '#00C06F']
  const tickValues = [0, 5000, 10000, 15000]

  return (
    <Calculator>
      {/* <Table data={usedData} /> */}
      <Graph
        name={'Energy Supply'}
        axes={'Energy (TWh/yr)'}
        axesTickValues={tickValues}
        data={graphAreas}
        labels={graphNames}
        colors={colors}
        isMobileUI={isMobileUI}
      />
      <MobileLegend data={graphNames} colors={colors} />
      <EmissionsBar
        emissionsDecrease={emissionsDecrease}
        isMobileUI={isMobileUI}
      />
    </Calculator>
  )
}

export default connect(
  'selectEnergySupply',
  'selectEmissionsDecrease',
  EnergySupply
)
