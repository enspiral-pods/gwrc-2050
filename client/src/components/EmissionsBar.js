import React from 'react'
import { Box, Flex } from 'rebass/emotion'

import FlexWithExtras from './FlexWithExtras'

export default ({ emissionsDecrease }) => {
  return (
    <Flex p={20}>
      <svg height={'100%'} width={'100%'}>
        <rect x='0' y='0' width='100%' height='10' fill={'black'} />
        <rect
          x='50%'
          y='0'
          width={emissionsDecrease}
          height='10'
          fill={'red'}
        />
      </svg>
    </Flex>
  )
}
