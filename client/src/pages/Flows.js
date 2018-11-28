import React from 'react'
import { connect } from 'redux-bundler-react'
import { Box } from 'rebass'
import { sankey } from 'd3-sankey'

import Calculator from '../hocs/Calculator'
import Table from '../components/Table'
import Graph from '../components/Graph'
import MobileLegend from '../components/MobileLegend'
import EmissionsBar from '../components/EmissionsBar'

const sankeyGraph = sankey()
  .nodeWidth(15)
  .nodePadding(10)

const Emissions = ({ sankeyData, emissionsDecrease, isMobileUI }) => {
  console.log('sankeyData', sankeyData)
  // const { nodes, links } = sankeyGraph(sankeyData)
  // console.log('nodes', nodes)
  // console.log('links', links)
  return (
    <Calculator>
      <Box width={'100%'}>
        <svg style={{ width: '100%', height: '100%' }}>
          <g stroke={'#000'} />
          <g />
        </svg>
      </Box>
      <EmissionsBar
        emissionsDecrease={emissionsDecrease}
        isMobileUI={isMobileUI}
      />
    </Calculator>
  )
}

export default connect(
  'selectSankeyData',
  'selectEmissionsDecrease',
  'selectIsMobileUI',
  Emissions
)
