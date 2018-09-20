import React from 'react'
import { VictoryStack, VictoryArea } from 'victory'

export default ({ data }) => {
  if (!data) {
    return null
  }

  return (
    <VictoryStack>
      {data.map((d, i) => (
        <VictoryArea key={i} data={d} />
      ))}
    </VictoryStack>
  )
}
