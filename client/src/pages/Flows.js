import React from 'react'
import { connect } from 'redux-bundler-react'
import { Box } from 'rebass'
import { sankey, sankeyLinkHorizontal } from 'd3-sankey'

import Calculator from '../hocs/Calculator'
import EmissionsBar from '../components/EmissionsBar'

const sankeyGraph = sankey()
  .nodeWidth(25)
  .nodePadding(20)
  .size([1000, 1000])
  .nodeId(d => d.name)
const sankeyLinkGenerator = sankeyLinkHorizontal()

const Emissions = ({
  sankeyDataForGraph,
  hoveredSankeyData,
  sankeyDataToHighlight,
  doHoverSankeyData,
  emissionsDecrease,
  isMobileUI
}) => {
  const { nodes, links } = sankeyGraph(sankeyDataForGraph)

  return (
    <Calculator>
      <Box width={'100%'}>
        <svg
          style={{ width: '100%', height: 'auto' }}
          viewBox={'-100 -100 1200 1200'}
        >
          <g stroke={'#000'}>
            {nodes.map(n => {
              const isNodeHovered =
                hoveredSankeyData &&
                sankeyDataToHighlight.nodes.includes(n.index)
              return (
                <g>
                  <text
                    x={n.x0}
                    y={n.y0}
                    stroke={'white'}
                    style={{ fontFamily: 'Inter-UI-Regular' }}
                    textAnchor={'middle'}
                  >
                    {n.name}
                  </text>
                  <rect
                    x={n.x0}
                    y={n.y0}
                    height={n.y1 - n.y0}
                    width={n.x1 - n.x0}
                    fill={
                      hoveredSankeyData
                        ? isNodeHovered ? '#FFC700' : 'grey'
                        : '#FFC700'
                    }
                    onMouseEnter={() =>
                      doHoverSankeyData({ type: 'node', index: n.index })
                    }
                    onMouseLeave={() => doHoverSankeyData(null)}
                  >
                    <title>{n.name}</title>
                  </rect>
                </g>
              )
            })}
          </g>
          <g fill={'none'} strokeOpacity={'0.5'}>
            {links.map(l => {
              const isLinkHovered =
                hoveredSankeyData &&
                sankeyDataToHighlight.links.includes(l.index)
              return (
                <g
                  onMouseEnter={() =>
                    doHoverSankeyData({ type: 'link', index: l.index })
                  }
                  onMouseLeave={() => doHoverSankeyData(null)}
                >
                  <path
                    d={sankeyLinkGenerator(l)}
                    stroke={
                      hoveredSankeyData
                        ? isLinkHovered ? '#3285D9' : 'grey'
                        : '#3285D9'
                    }
                    strokeWidth={Math.max(1, l.width)}
                  />
                </g>
              )
            })}
          </g>
        </svg>
      </Box>
    </Calculator>
  )
}

export default connect(
  'selectSankeyDataForGraph',
  'selectHoveredSankeyData',
  'selectSankeyDataToHighlight',
  'doHoverSankeyData',
  'selectEmissionsDecrease',
  'selectIsMobileUI',
  Emissions
)
