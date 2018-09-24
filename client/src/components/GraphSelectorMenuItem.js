import React from 'react'
import { Flex, Text } from 'rebass/emotion'

import Image from './Image'

export default ({ graphName, icon }) => {
  return (
    <Flex>
      <Image
        width={20}
        src={`${window.location.origin}/images/fire-solid.png`}
      />
      <Text>{graphName}</Text>
    </Flex>
  )
}
