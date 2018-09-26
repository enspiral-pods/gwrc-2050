import React from 'react'
import { Box, Flex, Heading } from 'rebass'

import FlexWithExtras from './FlexWithExtras'

export default ({ emissionsDecrease }) => {
  if (!emissionsDecrease) {
    return null
  }
  const prefix =
    Math.sign(emissionsDecrease) === 1 ? 'Decrease of' : 'Increase of'
  return (
    <Flex justifyContent={'center'} p={20}>
      <Heading>{`${prefix} ${Math.abs(
        (emissionsDecrease * 100).toFixed(2)
      )}%`}</Heading>
      {/* <svg height={'100%'} width={'100%'}>
        <rect x='0' y='0' width='100%' height='10' fill={'black'} />
        <rect
          x='50%'
          y='0'
          width={emissionsDecrease}
          height='10'
          fill={'red'}
        />
      </svg> */}
    </Flex>
  )
}
