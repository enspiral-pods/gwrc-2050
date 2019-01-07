import React from 'react'
import { Flex, Link } from 'rebass'

import TextRegular from './TextRegular'

export default ({ graphName, route, children }) => {
  return (
    <Link
      href={route}
      css={{ textDecoration: 'none', ':hover': { backgroundColor: '#262D33' } }}
    >
      <Flex py={10} alignItems={'center'}>
        {children}
        <TextRegular fontSize={16}>{graphName}</TextRegular>
      </Flex>
    </Link>
  )
}
