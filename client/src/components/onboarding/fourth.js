import React from 'react'
import { Image, Flex } from 'rebass'
import TextRegular from '../TextRegular'

import fourth from '../../assets/images/onboarding-fourth.svg'

export default () => {
  return (
    <Flex flexDirection={'column'} alignItems={'center'}>
      <Image src={fourth} width={'100%'} m={[10, 20]} />
      <TextRegular color={'black'} fontSize={[16, 18]} textAlign={'center'}>
        As you adjust the levers, you can see changes in total emissions for the
        region as well as changes in energy supply & demand. So, are you ready?
        Let’s go!
      </TextRegular>
    </Flex>
  )
}
