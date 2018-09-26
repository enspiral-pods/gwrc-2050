import React from 'react'
import { Flex, Button } from 'rebass'

import FlexWithExtras from './FlexWithExtras'

export default props => {
  const { doToggleMobileGraphsMenu } = props
  return (
    <FlexWithExtras flexDirection={'column'} height={'100%'} p={15}>
      <FlexWithExtras display={['flex', 'none']}>
        <Button onClick={doToggleMobileGraphsMenu}>{'< Graphs'}</Button>
      </FlexWithExtras>
      {props.children}
    </FlexWithExtras>
  )
}
