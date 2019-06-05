import React from 'react'
import styled, { keyframes, css } from 'styled-components'

const easeIn = keyframes`
  0%    { opacity: 0; }
  100%  { opacity: 1; }
`
const ToolTip = styled.span`
  position: absolute;
  left: ${props => props.left};
  right: ${props => props.right};
  bottom: 100%;
  background-color: #51575c;
  padding: 10px;
  max-width: 100%;
  ${props =>
    !props.hover &&
    css`
      display: none;
    `} ${props =>
  props.hover &&
      css`
        display: initial;
      `} animation: ${easeIn} 0.5s ease-in-out both;
`

export default ToolTip
