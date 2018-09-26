import React from 'react'
import { Flex, Text, Link, Image } from 'rebass'

export default ({ graphName, route, icon }) => {
  return (
    <Link href={route} css={{ ':hover': { backgroundColor: '#262D33' } }}>
      <Flex py={10} alignItems={'center'}>
        <Image
          width={20}
          src={`${window.location.origin}/images/fire-solid.png`}
          mr={10}
        />
        <Text>{graphName}</Text>
      </Flex>
    </Link>
  )
}
