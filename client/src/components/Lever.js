import React from 'react'
import { Flex, Text } from 'rebass'

export default ({ onValueChange, label, value }) => {
  return (
    <Flex flexDirection={'column'}>
      <Text>{label}</Text>
      {/* MS: How do I style this with no rebass component? */}
      <input
        value={value}
        type='range'
        min='1'
        max='4'
        onChange={event => onValueChange(event.target.value)}
      />
    </Flex>
  )
}
