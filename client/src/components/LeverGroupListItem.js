import React, { useState } from 'react'
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
  const [leverValue, setLeverValue] = useState(1)

  return (
    <Flex
      flexDirection={'column'}
      width={'100%'}
      bg={'darkBackground'}
      variant={'leverGroup'}
      p={15}
      mb={15}
    >
      <ToolTip hover={hover}>
        <TextRegular fontSize={14} textAlign={'center'}>
          {levers[0].group.leverDescriptions[leverValue - 1]}
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
        onMouseEnter={() => setHover(true)}
        onTouchStart={() => setHover(true)}
        onMouseLeave={() => window.setTimeout(() => setHover(false), 1000)}
        onTouchEnd={() => window.setTimeout(() => setHover(false), 1000)}
      >
        <Lever
          value={leverValue}
          onValueChange={value => {
            setLeverValue(value)
            doChangeGroupLeverValue(value)
          }}
          maxLevel={4}
        />
      </Box>
    </Flex>
  )
}
