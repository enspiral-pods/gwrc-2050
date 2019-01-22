import React from 'react'
import { connect } from 'redux-bundler-react'
import { Box, Flex } from 'rebass'

import FlexWithExtras from './FlexWithExtras'
import TextRegular from './TextRegular'

const Legend = ({ data, colors, activeGraphArea }) => {
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
              css={{
                opacity:
                  activeGraphArea === d || activeGraphArea === null ? 1 : 0.4
              }}
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

export default connect('selectActiveGraphArea', Legend)
