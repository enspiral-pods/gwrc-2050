import React, { useState } from 'react'
import { Flex, Image } from 'rebass'

import TextRegular from './TextRegular'
import Slider from './Slider'
import ToolTip from './ToolTip'

import infoIcon from '../assets/images/info-icon.svg'

export default ({
  onValueChange,
  onInfoClicked,
  label,
  value,
  maxLevel,
  leverDescriptions
}) => {
  const [hover, setHover] = useState(false)
  const sliderWidth = maxLevel === 2 ? 40 : maxLevel === 3 ? 69 : 100
  return (
    <Flex flexDirection={'column'} py={10}>
      {leverDescriptions ? (
        <ToolTip hover={hover}>
          <TextRegular fontSize={14} textAlign={'center'}>
            {leverDescriptions[value - 1]}
          </TextRegular>
          <div
            style={{
              marginLeft: '-10px',
              borderWidth: '15px 15px 0',
              borderColor: '#51575C transparent',
              borderStyle: 'solid',
              width: 0,
              marginBottom: '-15px'
            }}
          />
        </ToolTip>
      ) : null}
      {label ? (
        <Flex
          flexDirection={'row'}
          justifyContent={'space-between'}
          alignItems={'center'}
          mb={'20px'}
        >
          <TextRegular fontSize={16}>{label}</TextRegular>
          <Image
            src={infoIcon}
            height={24}
            width={24}
            onClick={onInfoClicked}
          />
        </Flex>
      ) : null}

      <Slider
        value={value}
        type='range'
        min='1'
        max={maxLevel}
        onChange={event => onValueChange(parseInt(event.target.value))}
        onMouseEnter={() => setHover(true)}
        onTouchStart={() => setHover(true)}
        onMouseLeave={() => setHover(false)}
        onTouchEnd={() => setHover(false)}
        // to show all lever steps as the same distance.
        style={{ width: `${sliderWidth}%` }}
      />
    </Flex>
  )
}
