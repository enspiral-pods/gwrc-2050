import React from 'react'
import { Flex, Heading, Text } from 'rebass'

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

export default props => {
  return (
    <Flex flexDirection={'column'}>
      <Flex css={{ border: '1px solid white' }}>
        {years.map(year => {
          return (
            <Text
              fontSize={[14]}
              width={50}
              css={{ borderRight: '1px solid white' }}
            >
              {year}
            </Text>
          )
        })}
      </Flex>
    </Flex>
  )
}
