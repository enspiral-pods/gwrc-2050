import React from 'react'
import { connect } from 'redux-bundler-react'
import { Box } from 'rebass'
import { sankey, sankeyLinkHorizontal } from 'd3-sankey'

import Calculator from '../hocs/Calculator'
import Table from '../components/Table'
import Graph from '../components/Graph'
import MobileLegend from '../components/MobileLegend'
import EmissionsBar from '../components/EmissionsBar'

const sankeyGraph = sankey()
  .nodeWidth(15)
  .nodePadding(10)
  .extent([[1, 1], [600, 600]])
  .nodeId(d => d.name)
const sankeyLinkGenerator = sankeyLinkHorizontal()

const Emissions = ({ sankeyDataForGraph, emissionsDecrease, isMobileUI }) => {
  const { nodes, links } = sankeyGraph(sankeyDataForGraph)

  return (
    <Calculator>
      <Box width={'100%'}>
        <svg style={{ width: '100%', height: '1000px' }}>
          <g stroke={'#000'}>
            {nodes.map(n => {
              return (
                <rect
                  x={n.x0}
                  y={n.y0}
                  height={n.y1 - n.y0}
                  width={n.x1 - n.x0}
                  fill={'red'}
                >
                  <title>{n.name}</title>
                </rect>
              )
            })}
          </g>
          <g fill={'none'} strokeOpacity={'0.5'}>
            {links.map(l => {
              return (
                <g>
                  <path
                    d={sankeyLinkGenerator(l)}
                    stroke={'green'}
                    strokeWidth={Math.max(1, l.width)}
                  />
                </g>
              )
            })}
          </g>
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
  'selectSankeyDataForGraph',
  'selectEmissionsDecrease',
  'selectIsMobileUI',
  Emissions
)
