import React from 'react'
import { connect } from 'redux-bundler-react'
import { Box } from 'rebass/emotion'

import Graph from '../components/Graph'

const Emissions = ({ energyEmissions }) => {
  return (
    <Box>
      <Graph data={energyEmissions} />
    </Box>
  )
}

export default connect(
  'selectEnergyEmissions',
  Emissions
)
