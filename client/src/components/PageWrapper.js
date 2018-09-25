import React from 'react'
import { Flex, Button } from 'rebass/emotion'

import FlexWithExtras from './FlexWithExtras'

export default props => {
  const { doToggleMobileGraphsMenu } = props
  return (
    <Flex flexDirection={'column'} p={15}>
      <FlexWithExtras display={['flex', 'none']}>
        <Button onClick={doToggleMobileGraphsMenu}>{'< Graphs'}</Button>
      </FlexWithExtras>
      <Flex flexDirection={'row'} p={15}>
        {props.children}
      </Flex>
    </Flex>
  )
}
