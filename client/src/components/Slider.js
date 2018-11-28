import styled from 'styled-components'

export default styled.input`
  width: 100%;
  -webkit-appearance: none;
  &::-moz-range-track,
  &::-webkit-slider-runnable-track {
    height: 8px;
    background: #000000;
    border-radius: 1.3px;
  }
  &::-moz-range-thumb {
    height: 20px;
    width: 20px;
    border-radius: 12px;
    background: #00ffc2;
    cursor: pointer;
  }
  &::-webkit-slider-runnable-track {
    height: 8px;
    background: #000000;
    border-radius: 1.3px;
  }
  &::-webkit-slider-thumb {
    height: 20px;
    width: 20px;
    border-radius: 12px;
    background: #00ffc2;
    cursor: pointer;
    -webkit-appearance: none;
    margin-top: -8px;
  }
`
