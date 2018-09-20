import React from 'react'
import { VictoryStack, VictoryArea } from 'victory'

export default ({ data }) => {
  if (!data) {
    return null
  }

  return (
    <VictoryStack>
      <VictoryArea data={data['Bioenergy credit']} />
      <VictoryArea data={data['LULUCF']} />
      <VictoryArea data={data['Fuel Combustion']} />
      <VictoryArea data={data['Solvent and Other Product Use']} />
      <VictoryArea data={data['Agriculture']} />
      <VictoryArea data={data['Waste']} />
    </VictoryStack>
  )
}
