import React from 'react'
import { Flex, Heading, Text } from 'rebass'
import { VictoryChart, VictoryAxis, VictoryStack, VictoryArea } from 'victory'

import LinearGradient from './LinearGradient'

export default ({ name, axes, data }) => {
  if (!data) {
    return null
  }
  const areaColors = ['#FFC700', '#3285D9', '#00C06F']

  return (
    <Flex flexDirection={'column'}>
      <Heading>{name}</Heading>
      <Text>{axes}</Text>
      <svg>
        <defs>
          {areaColors.map(color => (
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
                  fill: d => `url(#gradient-${areaColors[i % 3]})`
                }
              }}
            />
          ))}
        </VictoryStack>
        <VictoryAxis
          tickValues={[0, 1, 2, 3, 4, 5, 6, 7, 8]}
          tickFormat={[
            '2010',
            '2015',
            '2020',
            '2025',
            '2030',
            '2035',
            '2040',
            '2045',
            '2050'
          ]}
          label={'Date'}
          offsetY={50}
          style={{
            axisLabel: { fill: 'white', fontSize: 20 },
            tickLabels: { fill: 'white', fontSize: 15 },
            grid: { stroke: 'white', strokeOpacity: '0.1' }
          }}
        />
        <VictoryAxis
          dependentAxis={true}
          tickValues={[-500, 0, 500, 1000, 1500, 2000, 2500]}
          label={'Emissions (ktCO2/yr)'}
          style={{
            axisLabel: { fill: 'white', fontSize: 20 },
            tickLabels: { fill: 'white', fontSize: 15 },
            grid: { stroke: 'white', strokeOpacity: '0.1' }
          }}
        />
      </VictoryChart>
    </Flex>
  )
}
