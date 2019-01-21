import React from 'react'
import { Box, Flex } from 'rebass'

import FlexWithExtras from './FlexWithExtras'
import TextRegular from './TextRegular'

export default ({ data, colors }) => {
  if (!data) {
    return null
  }

  return (
    <Flex flexDirection={'column'} alignItems={'center'}>
      <FlexWithExtras
        display={'flex'}
        flexDirection={'row'}
        flexWrap={'wrap'}
        alignItems={'center'}
      >
        {data.map((d, i) => {
          return (
            <Flex
              key={i}
              alignItems={'center'}
              width={'50%'}
              pr={20}
              pb={'5px'}
            >
              <Box
                width={14}
                css={{ height: '14px', minWidth: '14px' }}
                bg={colors[i % colors.length]}
                mr={10}
              />
              <TextRegular fontSize={11}>{d}</TextRegular>
            </Flex>
          )
        })}
      </FlexWithExtras>
    </Flex>
  )
}
