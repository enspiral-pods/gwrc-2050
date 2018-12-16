import React from 'react'
import { Flex, Heading, Image, Button } from 'rebass'
import toCamelCase from 'lodash/camelCase'

import Lever from './Lever'

import leftArrow from '../assets/images/left-arrow.svg'

export default ({
  doToggleLeverGroup,
  selectedLeverGroup,
  levers,
  doUpdateLever,
  doInfoModalOpen
}) => {
  return (
    <Flex flexDirection={'column'}>
      <Button variant={'nav'} onClick={() => doToggleLeverGroup()} mb={40}>
        <Flex flexDirection={'row'} alignItems={'center'}>
          <Image src={leftArrow} height={24} width={24} mr={10} />
          <Heading color={'white'} fontSize={20}>
            {selectedLeverGroup}
          </Heading>
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
            onInfoClicked={() => {
              doInfoModalOpen(toCamelCase(lever.label))
            }}
          />
        )
      })}
    </Flex>
  )
}
