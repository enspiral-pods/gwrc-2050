import styled from 'styled-components'
import downArrow from '../assets/images/active-down-arrow.svg'

export default styled.select`
  webkit-appearance: none;
  -moz-appearance: none;
  appearance: none;
  background-color: #262d33;
  border-style: hidden;
  padding: 10px;
  color: #fff;
  background-image: url(${downArrow});
  background-repeat: no-repeat;
  background-position: right;
`
