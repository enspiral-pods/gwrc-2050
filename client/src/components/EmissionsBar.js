import React from 'react'
import { Box, Flex } from 'rebass/emotion'

import FlexWithExtras from './FlexWithExtras'

export default props => {
  return (
    <Flex p={20}>
      <FlexWithExtras height={5} width={'100%'} bg={'red'} />
      <FlexWithExtras height={5} width={'100%'} bg={'darkBackground'} />
    </Flex>
  )
}
