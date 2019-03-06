import React from 'react'
import { connect } from 'redux-bundler-react'
import pick from 'lodash/pick'
import values from 'lodash/values'
import keys from 'lodash/keys'

import Calculator from '../hocs/Calculator'
import Graph from '../components/Graph'

const EnergySupply = ({
  energySupply,
  emissionsDecrease,
  isMobileUI,
  doToggleMobileGraphsMenu,
  selectedTerritorialAuthority
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
    // 'Nuclear fission',
    'Solar',
    'Tidal',
    // NZ?
    // 'UK Bioenergy',
    // 'UK Coal',
    // 'UK Gas',
    // 'UK Oil',
    // 'Wave',
    'Wind'
  ])

  const graphAreas = values(usedData)
  const graphNames = keys(usedData)
  const colors = [
    '#FF6363',
    '#359AFF',
    '#00C06F',
    '#FF6363',
    '#00B4C0',
    '#905BFF',
    '#FC5BFF',
    '#FFC700',
    '#359AFF',
    '#00C06F',
    '#FF6363'
  ]
  let tickValues = [0, 5000, 10000, 15000]
  if (selectedTerritorialAuthority !== 'greater_wellington') {
    tickValues = null
  }

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
        emissionsDecrease={emissionsDecrease}
      />
    </Calculator>
  )
}

export default connect(
  'selectEnergySupply',
  'selectEmissionsDecrease',
  'selectSelectedTerritorialAuthority',
  EnergySupply
)
