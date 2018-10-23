import React from 'react'
import { Flex, Text, Image, Button } from 'rebass'
import toCamelCase from 'lodash/camelCase'

import Lever from './Lever'

import leftArrow from '../assets/images/left-arrow.svg'

export default ({
  doToggleLeverGroup,
  selectedLeverGroup,
  levers,
  doUpdateLever
}) => {
  return (
    <Flex flexDirection={'column'}>
      <Button variant={'nav'} onClick={() => doToggleLeverGroup()}>
        <Flex flexDirection={'row'}>
          <Image src={leftArrow} height={24} width={24} mr={10} />
          <Text>{selectedLeverGroup}</Text>
        </Flex>
      </Button>
      {levers.map(lever => {
        return (
          <Lever
            value={lever.value}
            label={lever.label}
            onValueChange={value =>
              doUpdateLever(toCamelCase(lever.label), value)
            }
          />
        )
      })}
    </Flex>
  )
}
