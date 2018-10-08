import React from 'react'
import { Flex, Text, Link, Image } from 'rebass'

import fireSolid from '../assets/images/fire-solid.png'

export default ({ graphName, route, icon }) => {
  return (
    <Link href={route} css={{ ':hover': { backgroundColor: '#262D33' } }}>
      <Flex py={10} alignItems={'center'}>
        <Image width={20} src={fireSolid} mr={10} />
        <Text>{graphName}</Text>
      </Flex>
    </Link>
  )
}
