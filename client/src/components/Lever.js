import React from 'react'
import { Flex, Image } from 'rebass'

import TextRegular from './TextRegular'
import Slider from './Slider'

import infoIcon from '../assets/images/info-icon.svg'

export default ({ onValueChange, label, value }) => {
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
          <Image src={infoIcon} height={24} width={24} />
        </Flex>
      ) : null}

      <Slider
        value={value}
        type='range'
        min='1'
        max='4'
        onChange={event => onValueChange(event.target.value)}
      />
    </Flex>
  )
}
