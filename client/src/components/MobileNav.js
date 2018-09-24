import React from 'react'
import { Button } from 'rebass/emotion'

import FlexWithExtras from './FlexWithExtras'

export default ({ doToggleMobileGraphsMenu }) => {
  return (
    <FlexWithExtras display={['flex', 'none']}>
      <Button onClick={doToggleMobileGraphsMenu}>{'< Graphs'}</Button>
    </FlexWithExtras>
  )
}
