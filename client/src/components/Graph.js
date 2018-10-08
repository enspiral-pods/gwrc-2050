import React from 'react'
import { Flex, Heading } from 'rebass'
import {
  VictoryChart,
  VictoryAxis,
  VictoryStack,
  VictoryArea,
  VictoryLabel
} from 'victory'

import TextRegular from './TextRegular'
import LinearGradient from './LinearGradient'
import GraphLabelMobile from './GraphLabelMobile'

export default ({ name, axes, data, colors }) => {
  if (!data) {
    return null
  }

  return (
    <Flex flexDirection={'column'}>
      <Heading fontSize={20}>{name}</Heading>
      <TextRegular fontSize={12}>{axes}</TextRegular>
      <svg height={0} width={0}>
        <defs>
          {colors.map(color => (
            <LinearGradient id={`gradient-${color}`} color={color} />
          ))}
        </defs>
      </svg>
      <VictoryChart>
        <VictoryStack>
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
          tickFormat={['2010', '', '2020', '', '2030', '', '2040', '', '2050']}
          label={'Date'}
          axisLabelComponent={<GraphLabelMobile />}
          offsetY={50}
          style={{
            axisLabel: {
              fill: 'white',
              fontSize: 20,
              fontFamily: 'Inter-UI-Regular'
            },
            tickLabels: {
              fill: 'white',
              fontSize: 12,
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
              fontSize: 20,
              fontFamily: 'Inter-UI-Regular'
            },
            tickLabels: {
              fill: 'white',
              fontSize: 12,
              fontFamily: 'Inter-UI-Regular'
            },
            grid: { stroke: 'white', strokeOpacity: '0.1' }
          }}
        />
      </VictoryChart>
    </Flex>
  )
}
