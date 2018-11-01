import React from 'react'
import { Box, Flex, Heading } from 'rebass'

import FlexWithExtras from './FlexWithExtras'

export default ({ emissionsDecrease }) => {
  if (!emissionsDecrease) {
    return null
  }

  const isDecrease = Math.sign(emissionsDecrease) === 1
  const prefix = isDecrease ? 'Decrease of' : 'Increase of'
  const roundedChange = (emissionsDecrease * 100).toFixed(2)
  const absoluteChange = Math.abs(roundedChange)
  const percentageChange = absoluteChange / 100

  return (
    <Flex
      flexDirection={'column'}
      justifyContent={'center'}
      width={'100%'}
      p={20}
    >
      <Heading>{`${prefix} ${absoluteChange}%`}</Heading>
      <svg height={'100%'} width={'100%'}>
        <rect x='0' y='0' width='100%' height='5' fill={'black'} />
        <rect
          x={isDecrease ? '50%' : `${(1 - percentageChange) * 50}%`}
          y='0'
          width={`${percentageChange * 50}%`}
          height='5'
          fill={'red'}
        />
      </svg>
    </Flex>
  )
}
