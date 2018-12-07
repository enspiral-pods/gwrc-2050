import React from 'react'
import { Flex, Button, Image, Link, Box } from 'rebass'

import TextMedium from '../components/TextMedium'
import TextRegular from '../components/TextRegular'
import WorldLogo from '../components/WorldLogo'

export default () => {
  return (
    <Flex
      flexDirection={'row'}
      justifyContent={'space-between'}
      width={'100%'}
      py={40}
    >
      <Flex flexDirection={'row'} alignItems={'center'}>
        <WorldLogo />
        <TextMedium color={'black'} px={20}>
          Wellington Region 2050 Emissions Calculator
        </TextMedium>
      </Flex>
      <Flex flexDirection={'row'} alignItems={'center'}>
        <Link href={'/data'} css={{ minWidth: '120px' }}>
          <TextRegular
            fontFamily={'bold'}
            fontSize={16}
            color={'black'}
            css={{ textDecoration: 'underline', opacity: 0.6 }}
          >
            About the data
          </TextRegular>
        </Link>
        <Link href={'/calculator'}>
          <Button
            variant={'landingGray'}
            ml={40}
            css={{ height: '50px', minWidth: '100px' }}
          >
            <TextRegular fontFamily={'bold'} fontSize={16} color={'background'}>
              Launch
            </TextRegular>
          </Button>
        </Link>
      </Flex>
    </Flex>
  )
}
