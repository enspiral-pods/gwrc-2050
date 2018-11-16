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

const Emissions = ({
  energyEmissions,
  emissionsDecrease,
  isMobileUI,
  doToggleMobileGraphsMenu
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
    '#316BFF',
    '#00C06F',
    '#FF6363',
    '#00B4C0',
    '#905BFF',
    '#FC5BFF'
  ]
  const tickValues = [-500, 0, 500, 1000, 1500, 2000, 2500]

  return (
    <Calculator>
      {/* <Table data={usedData} /> */}
      <Graph
        name={'Greenhouse Gas Emissions'}
        axes={'ktCO2/yr / Date'}
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
  'selectEnergyEmissions',
  'selectEmissionsDecrease',
  'selectIsMobileUI',
  Emissions
)
