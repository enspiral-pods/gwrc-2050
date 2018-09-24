import React from 'react'
import { Flex, Heading, Text } from 'rebass/emotion'
import { VictoryChart, VictoryAxis, VictoryStack, VictoryArea } from 'victory'

export default ({ name, axes, data }) => {
  if (!data) {
    return null
  }

  return (
    <Flex flexDirection={'column'}>
      <Heading>{name}</Heading>
      <Text>{axes}</Text>
      <VictoryChart>
        <VictoryStack>
          {data.map((d, i) => (
            <VictoryArea key={i} data={d} />
          ))}
        </VictoryStack>
      </VictoryChart>
    </Flex>
  )
}
