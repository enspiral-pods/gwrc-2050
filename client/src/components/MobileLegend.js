import React from 'react'
import { Box, Flex, Text } from 'rebass'

import FlexWithExtras from './FlexWithExtras'

export default ({ data }) => {
  if (!data) {
    return null
  }

  return (
    <FlexWithExtras
      display={['flex', 'none']}
      flexDirection={'row'}
      flexWrap={'wrap'}
    >
      {data.map((d, i) => {
        return (
          <Flex key={i} alignItems={'center'} mr={20}>
            <Box width={14} css={{ height: 14 }} bg={'red'} mr={10} />
            <Text>{d}</Text>
          </Flex>
        )
      })}
    </FlexWithExtras>
  )
}
