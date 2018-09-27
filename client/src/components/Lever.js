import React from 'react'
import { Text } from 'rebass'

export default ({ onValueChange, label, value }) => {
  return (
    <div>
      <Text>{label}</Text>
      <input
        value={value}
        type='range'
        min='1'
        max='4'
        onChange={event => onValueChange(event.target.value)}
      />
    </div>
  )
}
