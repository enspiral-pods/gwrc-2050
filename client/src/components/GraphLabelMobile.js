import React from 'react'
import { VictoryLabel } from 'victory'
import styled from 'styled-components'
import { display } from 'styled-system'

const VictoryLabelWithDisplay = styled(VictoryLabel)(display)

export default props => (
  <VictoryLabelWithDisplay display={['none', 'flex']} {...props} />
)
