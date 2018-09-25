import React from 'react'
import { Flex, Text, Link, Image } from 'rebass'

export default ({ graphName, route, icon }) => {
  return (
    <Link href={route}>
      <Flex>
        <Image
          width={20}
          src={`${window.location.origin}/images/fire-solid.png`}
        />
        <Text>{graphName}</Text>
      </Flex>
    </Link>
  )
}
