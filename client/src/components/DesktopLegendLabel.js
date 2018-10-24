import React from 'react'

import GraphLabelMobile from './GraphLabelMobile'

// TODO: IK:
// could compute the scaled start and end Y coords of each area in the stack, as we have access to the scale func and the originalData?
// we can have the height in here too
// either find an algorithm that does this, or write one, shouldn't be too tricky
// or come up with some other way of presenting the labels

function computeMiddleY (originalData, index, scale) {
  const dataSoFar = originalData.slice(0, parseInt(index) + 1)
  return dataSoFar
    .map(d => {
      return d[d.length - 1]
    })
    .reduce((acc, d, i) => {
      if (i === dataSoFar.length - 1) {
        return Math.max(acc + d / 2, acc + 100)
      }
      return acc + d
    }, 0)
}

export default props => {
  const { originalData, index, scale } = props
  const labelY = computeMiddleY(originalData, index, scale)
  return <GraphLabelMobile {...props} y={scale.y(labelY)} />
}
