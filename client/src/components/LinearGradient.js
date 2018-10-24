import React from 'react'

export default ({ id, color }) => {
  return (
    <linearGradient id={id} x1={'0%'} y1={'0%'} x2={'0%'} y2={'100%'}>
      <stop offset={'0%'} stopColor={color} stopOpacity={1} />
      <stop offset={'100%'} stopColor={color} stopOpacity={0.5} />
    </linearGradient>
  )
}
