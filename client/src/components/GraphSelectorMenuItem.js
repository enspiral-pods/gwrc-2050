import React from 'react'
import { Flex, Text, Link, Image } from 'rebass'

import TextRegular from './TextRegular'

export default ({ graphName, route, icon }) => {
  return (
    <Link
      href={route}
      css={{ textDecoration: 'none', ':hover': { backgroundColor: '#262D33' } }}
    >
      <Flex py={10} alignItems={'center'}>
        <Image width={20} src={icon} mr={10} />
        <TextRegular fontSize={16}>{graphName}</TextRegular>
      </Flex>
    </Link>
  )
}
