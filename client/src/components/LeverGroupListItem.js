import React, { useState, useRef } from 'react'
import { Flex, Image, Box } from 'rebass'

import TextRegular from '../components/TextRegular'
import Lever from './Lever'
import ToolTip from './ToolTip'

import rightArrow from '../assets/images/right-arrow.svg'

export default ({
  group,
  levers,
  doToggleLeverGroup,
  doChangeGroupLeverValue
}) => {
  const [hover, setHover] = useState(false)
  const [hoverTimeout, setHoverTimeout] = useState(null)
  const [leverValue, setLeverValue] = useState(1)
  const maxLevel = 4

  const sliderContainerEl = useRef(null)
  const toolTipEl = useRef(null)

  const buttonPosition = sliderContainerEl.current
    ? (leverValue - 1) *
      (sliderContainerEl.current.offsetWidth / (maxLevel - 1) - 8)
    : null
  // we don't easily know the 'width' of the tooltip to begin (due to the copy length), so for now just a simple decision as to whether left or right
  const isToolTipOnRight = leverValue > (maxLevel + 1) / 2

  return (
    <Flex
      flexDirection={'column'}
      width={'100%'}
      bg={'darkBackground'}
      variant={'leverGroup'}
      p={15}
      mb={15}
    >
      <Box bg={'darkBackground'} onClick={() => doToggleLeverGroup(group)}>
        <Flex
          flexDirection={'row'}
          justifyContent={'space-between'}
          width={'100%'}
          pb={'10px'}
        >
          <TextRegular
            color={'white'}
            fontSize={16}
            textAlign={'left'}
            fontWeight='bold'
          >
            {group}{' '}
            <span style={{ fontWeight: 'normal' }}>{`(${
              levers.length
            } levers)`}</span>
          </TextRegular>
          <Image src={rightArrow} height={24} width={24} mr={10} />
        </Flex>
        {levers.map(lever => (
          <Box
            bg={'rgba(255,255,255,0.2)'}
            width={lever.value / 4}
            mb={1}
            css={{ borderRadius: '4px', height: '4px' }}
          />
        ))}
      </Box>
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
        <ToolTip
          ref={toolTipEl}
          hover={hover}
          left={isToolTipOnRight ? 'auto' : `${buttonPosition}px`}
          right={isToolTipOnRight ? '0px' : 'auto'}
        >
          <TextRegular fontSize={14} textAlign={'center'}>
            {levers[0].group.leverDescriptions[leverValue - 1]}
          </TextRegular>
          <div
            style={{
              position: 'absolute',
              left: isToolTipOnRight ? 'auto' : 8,
              right: isToolTipOnRight
                ? sliderContainerEl.current.offsetWidth - buttonPosition - 20
                : 'auto',
              bottom: '-5px',
              borderWidth: '5px 5px 0',
              borderColor: '#51575C transparent',
              borderStyle: 'solid',
              width: 0
            }}
          />
        </ToolTip>
        <Lever
          value={leverValue}
          onValueChange={value => {
            setLeverValue(value)
            doChangeGroupLeverValue(value)
          }}
          maxLevel={maxLevel}
        />
      </Box>
    </Flex>
  )
}
