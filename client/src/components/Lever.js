import React from 'react'

export default ({ onValueChange, label, value }) => {
  return (
    <div>
      <p>{label}</p>
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
