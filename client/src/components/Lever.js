import React, { useState, useRef, useEffect } from 'react'
import { Flex, Image, Box } from 'rebass'

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
  const [hoverTimeout, setHoverTimeout] = useState(null)
  const [sliderWidth, setSliderWidth] = useState(0)

  const sliderContainerEl = useRef(null)
  const toolTipEl = useRef(null)

  // N.B. (IK) hardcoded '4' in calculations here, was too tricky to retro-fit better calculations
  const buttonPosition = sliderContainerEl.current
    ? (value - 1) * (sliderContainerEl.current.offsetWidth / (4 - 1) - 8)
    : null
  // we don't easily know the 'width' of the tooltip to begin (due to the copy length), so for now just a simple decision as to whether left or right
  const isToolTipOnRight = value > (4 + 1) / 2

  useEffect(() => {
    setSliderWidth(
      maxLevel === 2
        ? sliderContainerEl.current.offsetWidth * 0.4
        : maxLevel === 3
          ? sliderContainerEl.current.offsetWidth * 0.69
          : sliderContainerEl.current.offsetWidth
    )
  })

  return (
    <Flex flexDirection={'column'} py={10}>
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
      <Box
        onMouseEnter={() => {
          if (hoverTimeout) window.clearTimeout(hoverTimeout)
          setHover(true)
        }}
        onTouchStart={() => {
          if (hoverTimeout) window.clearTimeout(hoverTimeout)
          setHover(true)
        }}
        onMouseLeave={() => {
          setHoverTimeout(
            window.setTimeout(() => {
              setHover(false)
            }, 1000)
          )
        }}
        onTouchEnd={() => {
          setHoverTimeout(
            window.setTimeout(() => {
              setHover(false)
            }, 1000)
          )
        }}
        css={{ position: 'relative' }}
        ref={sliderContainerEl}
      >
        {leverDescriptions ? (
          <ToolTip
            ref={toolTipEl}
            hover={hover}
            left={isToolTipOnRight ? 'auto' : `${buttonPosition}px`}
            right={isToolTipOnRight ? '0px' : 'auto'}
          >
            <TextRegular fontSize={14} textAlign={'center'}>
              {leverDescriptions[value - 1]}
            </TextRegular>
            <div
              style={{
                position: 'absolute',
                left: isToolTipOnRight ? 'auto' : 8,
                right:
                  isToolTipOnRight && sliderContainerEl.current
                    ? sliderContainerEl.current.offsetWidth -
                      buttonPosition -
                      20
                    : 'auto',
                bottom: '-5px',
                borderWidth: '5px 5px 0',
                borderColor: '#51575C transparent',
                borderStyle: 'solid',
                width: 0
              }}
            />
          </ToolTip>
        ) : null}
        <Slider
          value={value}
          type='range'
          min='1'
          max={maxLevel}
          onChange={event => onValueChange(parseInt(event.target.value))}
          // to show all lever steps as the same distance.
          style={{ width: `${sliderWidth}px` }}
        />
      </Box>
    </Flex>
  )
}
