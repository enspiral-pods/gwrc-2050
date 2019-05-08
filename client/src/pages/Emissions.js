import React, { Fragment } from 'react'
import { connect } from 'redux-bundler-react'
import pick from 'lodash/pick'
import values from 'lodash/values'
import keys from 'lodash/keys'

import Calculator from '../hocs/Calculator'
import Graph from '../components/Graph'

const Emissions = ({
  energyEmissions,
  emissionsDecrease,
  isMobileUI,
  selectedTerritorialAuthority
}) => {
  const usedData = pick(energyEmissions, [
    'Bioenergy credit',
    'LULUCF',
    'Fuel Combustion',
    'Solvent and Other Product Use',
    'Agriculture',
    'Waste'
  ])
  const graphAreas = values(usedData)
  const graphNames = keys(usedData)

  const colors = [
    '#FFC700',
    '#359AFF',
    '#00C06F',
    '#FF6363',
    '#00B4C0',
    '#905BFF'
  ]
  console.log('graphAreas', graphAreas)
  let tickValues = [-3000, -2000, -1000, 0, 1000, 2000, 3000, 4000, 5000]
  if (selectedTerritorialAuthority !== 'greater_wellington') {
    tickValues = null
  }

  return (
    <Fragment>
      <Calculator>
        {/* <Table data={usedData} /> */}
        <Graph
          name={'Greenhouse Gas Emissions'}
          axes={'Emissions (ktCO2/yr)'}
          axesTickValues={tickValues}
          data={graphAreas}
          labels={graphNames}
          colors={colors}
          isMobileUI={isMobileUI}
          energyEmissions={energyEmissions}
          emissionsDecrease={emissionsDecrease}
        />
      </Calculator>
    </Fragment>
  )
}

export default connect(
  'selectEnergyEmissions',
  'selectEmissionsDecrease',
  'selectIsMobileUI',
  'selectSelectedTerritorialAuthority',
  Emissions
)
