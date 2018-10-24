import React from 'react'
import { Flex, Image } from 'rebass'

import TextRegular from './TextRegular'

import infoIcon from '../assets/images/info-icon.svg'

export default ({ onValueChange, label, value }) => {
  return (
    <Flex flexDirection={'column'} py={10}>
      {label ? (
        <Flex
          flexDirection={'row'}
          justifyContent={'space-between'}
          alignItems={'center'}
          mb={'5px'}
        >
          <TextRegular fontSize={16}>{label}</TextRegular>
          <Image src={infoIcon} height={24} width={24} />
        </Flex>
      ) : null}

      {/* MS: How do I style this with no rebass component? */}
      <input
        value={value}
        type='range'
        min='1'
        max='4'
        onChange={event => onValueChange(event.target.value)}
      />
    </Flex>
  )
}
