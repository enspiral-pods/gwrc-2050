import React from 'react'
import { Flex, Heading, Button, Image } from 'rebass'

import Lever from './Lever'

import rightArrow from '../assets/images/right-arrow.svg'

export default ({ group, levers, doToggleLeverGroup }) => {
  return (
    <Button
      width={'100%'}
      bg={'darkBackground'}
      variant={'leverGroup'}
      onClick={() => doToggleLeverGroup(group)}
      mb={15}
    >
      <Flex flexDirection={'column'} width={'100%'} p={20}>
        <Flex
          flexDirection={'row'}
          justifyContent={'space-between'}
          width={'100%'}
          mb={10}
        >
          <Heading
            color={'white'}
            fontSize={16}
            textAlign={'left'}
          >{`${group} (${levers.length} levers)`}</Heading>
          <Image src={rightArrow} height={24} width={24} mr={10} />
        </Flex>
        <Lever />
      </Flex>
    </Button>
  )
}
