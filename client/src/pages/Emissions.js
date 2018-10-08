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

  return (
    <Calculator>
      {/* <Table data={usedData} /> */}
      <Graph
        name={'Greenhouse Gas Emissions'}
        axes={'ktCO2/yr / Date'}
        data={graphAreas}
      />
      <MobileLegend data={graphNames} />
      <EmissionsBar emissionsDecrease={emissionsDecrease} />
    </Calculator>
  )
}

export default connect(
  'selectEnergyEmissions',
  'selectEmissionsDecrease',
  Emissions
)
