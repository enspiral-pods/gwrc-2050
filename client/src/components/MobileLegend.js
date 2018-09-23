import React from 'react'
import { Box, Flex, Heading, Text } from 'rebass/emotion'

export default ({ data }) => {
  if (!data) {
    return null
  }

  return (
    <Flex flexDirection={'row'} flexWrap={'wrap'}>
      {data.map(d => {
        return (
          <Flex alignItems={'center'} mr={20}>
            <Box width={14} css={{ height: 14 }} bg={'red'} mr={10} />
            <Text>{d}</Text>
          </Flex>
        )
      })}
    </Flex>
  )
}
