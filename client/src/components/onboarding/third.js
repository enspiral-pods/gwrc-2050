import React from 'react'
import { Image, Flex } from 'rebass'
import TextRegular from '../TextRegular'

import leverBarDemo from '../../assets/images/onboarding-third.svg'

export default () => {
  return (
    <Flex flexDirection={'column'} alignItems={'center'}>
      <Image
        src={leverBarDemo}
        height={91}
        width={453}
        m={['5px', 20]}
        mb={['5px', 40]}
      />
      <TextRegular color={'black'} fontSize={[16, 18]} textAlign={'center'}>
        Choices are made by adjusting ‘levers’. Each lever has different levels
        from 1 (minimal effort) to 4 (exceptional effort). As you make changes,
        they are visualised in real-time.
      </TextRegular>
    </Flex>
  )
}
