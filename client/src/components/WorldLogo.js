import styled, { keyframes } from 'styled-components'
import worldImage from '../assets/images/world.png'

const world = keyframes`
    0%    { background-position: 0px 0px; }
    100%  { background-position: 76px 0px; }
`

export default styled.div`
  width: 42px;
  min-width: 42px;
  height: 42px;
  border: 3px solid #262d33;
  border-radius: 48px;
  background-image: url(${worldImage});
  background-repeat: repeat;
  background-position: 0% 0%;
  animation-name: ${world};
  animation-duration: 8s;
  animation-iteration-count: infinite;
  animation-timing-function: linear;
`
