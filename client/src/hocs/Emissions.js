import React from 'react'
import { connect } from 'redux-bundler-react'
import { Box } from 'rebass/emotion'
import pick from 'lodash/pick'
import values from 'lodash/values'

import Graph from '../components/Graph'

const Emissions = ({ energyEmissions }) => {
  const graphAreas = values(
    pick(energyEmissions, [
      'Bioenergy credit',
      'LULUCF',
      'Fuel Combustion',
      'Solvent and Other Product Use',
      'Agriculture',
      'Waste'
    ])
  )
  return (
    <Box>
      <Graph data={graphAreas} />
    </Box>
  )
}

export default connect(
  'selectEnergyEmissions',
  Emissions
)
