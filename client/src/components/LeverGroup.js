import React from 'react'
import { Flex, Text, Image, Button } from 'rebass'

import leftArrow from '../assets/images/left-arrow.svg'

export default ({ doToggleLeverGroup, selectedLeverGroup, levers }) => {
  return (
    <Flex flexDirection={'column'}>
      <Button variant={'nav'} onClick={() => doToggleLeverGroup()}>
        <Flex flexDirection={'row'}>
          <Image src={leftArrow} height={24} width={24} mr={10} />
          <Text>{selectedLeverGroup}</Text>
        </Flex>
      </Button>
    </Flex>
  )
}
