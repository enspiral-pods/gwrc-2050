import React from 'react'
import { VictoryLabel } from 'victory'
import styled from 'styled-components'
import { display } from 'styled-system'

const VictoryLabelWithDisplay = styled(VictoryLabel)(display)

export default props => {
  const texts = props.text.split(' ')
  const style = {
    fill: 'white',
    fontSize: 14,
    fontFamily: 'Inter-UI-Regular'
  }
  const styleBold = {
    fill: 'white',
    fontSize: 14,
    fontFamily: 'Inter-UI-Bold'
  }
  return (
    <VictoryLabelWithDisplay
      display={['none', 'flex']}
      {...props}
      text={texts}
      style={texts.length > 1 ? [styleBold, style] : styleBold}
    />
  )
}
