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
    <Flex
      flexDirection={['column', 'row']}
      alignItems={'center'}
      pt={[0, 50]}
      pl={[0, 30]}
    >
      <FlexWithExtras
        display={'flex'}
        flexDirection={['row', 'column']}
        flexWrap={'wrap'}
        // alignItems={'center'}
      >
        {data
          .slice(0)
          .reverse()
          .map((d, i) => {
            return (
              <Flex
                key={i}
                alignItems={'center'}
                width={'50%'}
                pr={20}
                pb={['5px', '15px']}
                css={{
                  opacity:
                    activeGraphArea === d || activeGraphArea === null ? 1 : 0.4
                }}
              >
                <Box
                  width={14}
                  css={{ height: '14px', minWidth: '14px' }}
                  bg={colors.slice(0).reverse()[i % colors.length]}
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
