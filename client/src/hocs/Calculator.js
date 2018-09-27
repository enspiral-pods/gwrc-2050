import React from 'react'
import { connect } from 'redux-bundler-react'
import { Box, Flex, Button } from 'rebass'

import FlexWithExtras from '../components/FlexWithExtras'
import GraphSelector from '../components/GraphSelector'

const Layout = ({
  children,
  isMobileGraphsMenuOpen,
  doToggleMobileGraphsMenu
}) => {
  return (
    <Flex flexDirection={['column', 'row']}>
      <GraphSelector display={['none', 'flex']} />
      {isMobileGraphsMenuOpen ? (
        <GraphSelector
          display={['flex', 'none']}
          doToggleMobileGraphsMenu={doToggleMobileGraphsMenu}
        />
      ) : (
        <Flex flexDirection={'column'} p={15}>
          <FlexWithExtras display={['flex', 'none']}>
            <Button onClick={doToggleMobileGraphsMenu}>{'< Graphs'}</Button>
          </FlexWithExtras>
          {children}
        </Flex>
      )}
    </Flex>
  )
}

export default connect(
  'selectIsMobileGraphsMenuOpen',
  'doToggleMobileGraphsMenu',
  Layout
)
