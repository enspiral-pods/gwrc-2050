import React from 'react'
import { Box, Flex, Heading, Text } from 'rebass'
import map from 'lodash/map'

// N.B. hardcoded as data doesn't come with years
const years = [
  '2010',
  '2015',
  '2020',
  '2025',
  '2030',
  '2035',
  '2040',
  '2045',
  '2050'
]

export default ({ data }) => {
  return (
    <Box
      css={{
        display: 'grid',
        gridTemplateColumns: `100px repeat(${years.length}, 50px)`,
        overflowX: 'scroll'
      }}
    >
      <Heading
        fontSize={[14, 18]}
        textAlign={'center'}
        css={{ border: '1px solid white' }}
      >
        Name
      </Heading>
      {years.map(year => {
        return (
          <Heading
            fontSize={[14, 18]}
            textAlign={'center'}
            css={{ border: '1px solid white' }}
          >
            {year}
          </Heading>
        )
      })}
      {map(data, (dataArray, name, i) => {
        return (
          <React.Fragment>
            <Heading
              fontSize={14}
              textAlign={'center'}
              css={{ border: '1px solid white' }}
            >
              {name}
            </Heading>
            {dataArray.map(d => {
              return (
                <Text
                  fontSize={14}
                  textAlign={'center'}
                  css={{ border: '1px solid white' }}
                >
                  {d.toFixed(2)}
                </Text>
              )
            })}
          </React.Fragment>
        )
      })}
    </Box>
  )
}
