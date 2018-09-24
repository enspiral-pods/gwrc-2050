import React from 'react'
import { Box, Flex, Text } from 'rebass/emotion'

import MobileFlex from './MobileFlex'

export default ({ data }) => {
  if (!data) {
    return null
  }

  return (
    <MobileFlex flexDirection={'row'} flexWrap={'wrap'}>
      {data.map((d, i) => {
        return (
          <Flex key={i} alignItems={'center'} mr={20}>
            <Box width={14} css={{ height: 14 }} bg={'red'} mr={10} />
            <Text>{d}</Text>
          </Flex>
        )
      })}
    </MobileFlex>
  )
}
