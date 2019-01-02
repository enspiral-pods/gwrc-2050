import React from 'react'
import { Flex, Heading, Button, Image, Box } from 'rebass'

import Lever from './Lever'

import rightArrow from '../assets/images/right-arrow.svg'

export default ({
  group,
  levers,
  doToggleLeverGroup,
  doChangeGroupLeverValue
}) => {
  const groupLeverTotalValue = levers.reduce((previous, current) => {
    return previous + current.value
  }, 0)
  return (
    <Flex
      flexDirection={'column'}
      width={'100%'}
      bg={'darkBackground'}
      variant={'leverGroup'}
      css={{ minHeight: '130px' }}
      mb={15}
    >
      <Button bg={'darkBackground'} onClick={() => doToggleLeverGroup(group)}>
        <Flex flexDirection={'column'} width={'100%'} p={20}>
          <Flex
            flexDirection={'row'}
            justifyContent={'space-between'}
            width={'100%'}
          >
            <Heading
              color={'white'}
              fontSize={16}
              textAlign={'left'}
            >{`${group} (${levers.length} levers)`}</Heading>
            <Image src={rightArrow} height={24} width={24} mr={10} />
          </Flex>
          {levers.map(lever => (
            <Box
              bg={'#ddd'}
              width={lever.value / 4}
              mb={1}
              css={{ borderRadius: '5px', height: '5px' }}
            />
          ))}
        </Flex>
      </Button>
      <Lever
        value={groupLeverTotalValue / levers.length}
        onValueChange={doChangeGroupLeverValue}
        maxLevel={4}
      />
    </Flex>
  )
}
