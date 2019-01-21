import React from 'react'
import { Box, Flex, Heading } from 'rebass'
import { VictoryChart, VictoryAxis, VictoryStack, VictoryArea } from 'victory'
import AutoSizer from 'react-virtualized/dist/commonjs/AutoSizer'

import Legend from '../components/Legend'
import EmissionsBar from '../components/EmissionsBar'

import TextRegular from './TextRegular'
import LinearGradient from './LinearGradient'
import GraphLabelMobile from './GraphLabelMobile'

export default ({
  isMobileUI,
  name,
  axes,
  axesTickValues,
  data,
  colors,
  labels,
  emissionsDecrease
}) => {
  if (!data) {
    return null
  }
  return (
    <Flex flexDirection={'column'} width={'100%'}>
      <Heading color={'white'} fontSize={20} py={'5px'}>
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
                >
                  <VictoryStack
                    animate={{
                      onLoad: {
                        duration: 500
                      },
                      onExit: {
                        duration: 100
                      }
                    }}
                    style={{ labels: { fill: 'white' } }}
                  >
                    {data.map((d, i) => (
                      <VictoryArea
                        key={i}
                        data={d}
                        events={[
                          {
                            target: 'data',
                            eventHandlers: {
                              onMouseOver: () => {
                                return [
                                  {
                                    target: 'data',
                                    mutation: () => ({
                                      style: {
                                        opacity: 1,
                                        fill: `url(#gradient-${
                                          colors[i % colors.length]
                                        })`
                                      }
                                    })
                                  }
                                ]
                              },
                              onMouseOut: () => {
                                return [
                                  {
                                    target: 'data',
                                    mutation: () => {}
                                  }
                                ]
                              }
                            }
                          }
                        ]}
                        style={{
                          data: {
                            fill: d =>
                              `url(#gradient-${colors[i % colors.length]})`,
                            opacity: 0.8
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
                    dependentAxis
                    tickValues={axesTickValues}
                    tickFormat={d => d.toLocaleString()}
                    label={axes}
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
                <Legend data={labels} colors={colors} />
                <EmissionsBar
                  emissionsDecrease={emissionsDecrease}
                  isMobileUI={isMobileUI}
                />
              </Box>
            )
          }}
        </AutoSizer>
      </Box>
    </Flex>
  )
}
