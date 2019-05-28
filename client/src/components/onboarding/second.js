import React from 'react'
import { Image, Flex } from 'rebass'
import TextRegular from '../TextRegular'

import emissionsBarDemo from '../../assets/images/onboarding-second.svg'

export default () => {
  return (
    <Flex flexDirection={'column'} alignItems={'center'}>
      <Image src={emissionsBarDemo} width={'100%'} m={[10, 20]} mb={[10, 40]} />
      <TextRegular color={'black'} fontSize={[16, 18]} textAlign={'center'}>
        This tool allows you to make choices that will impact projected
        emissions for the Wellington Region. By 2050, we need to achieve
        net-zero greenhouse gas emissions to stop runaway climate change.
      </TextRegular>
    </Flex>
  )
}
