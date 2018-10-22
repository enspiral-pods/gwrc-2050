import React from 'react'
import { connect } from 'redux-bundler-react'
import { Box, Flex, Heading } from 'rebass'
import {
  VictoryChart,
  VictoryAxis,
  VictoryStack,
  VictoryArea,
  VictoryLabel,
  VictoryPortal
} from 'victory'
import AutoSizer from 'react-virtualized/dist/commonjs/AutoSizer'

import TextRegular from './TextRegular'
import LinearGradient from './LinearGradient'
import GraphLabelMobile from './GraphLabelMobile'
import DesktopLegendLabel from './DesktopLegendLabel'

class Graph extends React.Component {
  constructor () {
    super()
    this.state = {
      labelPositions: []
    }
  }

  render () {
    const { isMobileUI, name, axes, data, labels, colors } = this.props
    if (!data) {
      return null
    }

    return (
      <Flex flexDirection={'column'} width={'100%'}>
        <Heading fontSize={20} py={'5px'}>
          {name}
        </Heading>
        <TextRegular fontSize={12}>{axes}</TextRegular>
        <svg height={0} width={0}>
          <defs>
            {colors.map(color => (
              <LinearGradient id={`gradient-${color}`} color={color} />
            ))}
          </defs>
        </svg>
        <Box>
          <AutoSizer disableHeight>
            {({ width }) => {
              const heightByRatio = width / 3 * 2
              return (
                <Box width={width} css={{ height: heightByRatio }}>
                  <VictoryChart
                    width={width}
                    height={heightByRatio}
                    padding={{
                      left: isMobileUI ? 50 : 100,
                      top: isMobileUI ? 25 : 50,
                      right: isMobileUI ? 25 : 150,
                      bottom: isMobileUI ? 50 : 100
                    }}
                    animate={{ duration: 400, onLoad: { duration: 500 } }}
                  >
                    <VictoryStack
                      labelComponent={
                        <DesktopLegendLabel
                          originalData={data}
                          renderInPortal={true}
                          x={width}
                          dx={-100}
                          style={{ fill: 'white', textAnchor: 'start' }}
                        />
                      }
                      labels={labels}
                      style={{ labels: { fill: 'white' } }}
                    >
                      {data.map((d, i) => (
                        <VictoryArea
                          key={i}
                          data={d}
                          style={{
                            data: {
                              fill: d => `url(#gradient-${colors[i % 3]})`
                            }
                          }}
                        />
                      ))}
                    </VictoryStack>
                    <VictoryAxis
                      tickValues={[0, 1, 2, 3, 4, 5, 6, 7, 8]}
                      tickFormat={[
                        '2010',
                        '',
                        '2020',
                        '',
                        '2030',
                        '',
                        '2040',
                        '',
                        '2050'
                      ]}
                      label={'Date'}
                      axisLabelComponent={<GraphLabelMobile />}
                      offsetY={isMobileUI ? 50 : 100}
                      style={{
                        axisLabel: {
                          fill: 'white',
                          fontSize: 16,
                          fontFamily: 'Inter-UI-Regular',
                          padding: isMobileUI ? 0 : 50
                        },
                        tickLabels: {
                          fill: 'white',
                          fontSize: 10,
                          fontFamily: 'Inter-UI-Regular'
                        },
                        grid: {
                          stroke: 'white',
                          strokeOpacity: (d, i) => (i % 2 == 0 ? '0.1' : '0')
                        }
                      }}
                    />
                    <VictoryAxis
                      dependentAxis={true}
                      tickValues={[-500, 0, 500, 1000, 1500, 2000, 2500]}
                      tickFormat={d => d.toLocaleString()}
                      label={'Emissions (ktCO2/yr)'}
                      axisLabelComponent={<GraphLabelMobile />}
                      style={{
                        axisLabel: {
                          fill: 'white',
                          fontSize: 16,
                          fontFamily: 'Inter-UI-Regular',
                          padding: isMobileUI ? 0 : 50
                        },
                        tickLabels: {
                          fill: 'white',
                          fontSize: 10,
                          fontFamily: 'Inter-UI-Regular'
                        },
                        grid: { stroke: 'white', strokeOpacity: '0.1' }
                      }}
                    />
                  </VictoryChart>
                </Box>
              )
            }}
          </AutoSizer>
        </Box>
      </Flex>
    )
  }
}

export default connect('selectIsMobileUI', Graph)
