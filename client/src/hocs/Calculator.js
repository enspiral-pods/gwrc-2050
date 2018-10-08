import React from 'react'
import { connect } from 'redux-bundler-react'
import { Box, Flex, Button } from 'rebass'

import FlexWithExtras from '../components/FlexWithExtras'
import GraphSelector from '../components/GraphSelector'
import Levers from '../components/Levers'

const Layout = ({
  children,
  isMobileGraphsMenuOpen,
  doToggleMobileGraphsMenu,
  isMobileLeversMenuOpen,
  doToggleMobileLeversMenu
}) => {
  return (
    <Flex flexDirection={['column', 'row']} width={'100%'}>
      <GraphSelector display={['none', 'flex']} />
      {isMobileGraphsMenuOpen ? (
        <GraphSelector
          display={['flex', 'none']}
          doToggleMobileGraphsMenu={doToggleMobileGraphsMenu}
        />
      ) : isMobileLeversMenuOpen ? (
        <Levers
          display={['flex', 'none']}
          doToggleMobileLeversMenu={doToggleMobileLeversMenu}
        />
      ) : (
        <Flex
          flexDirection={'column'}
          alignItems={'center'}
          width={'100%'}
          p={15}
        >
          <FlexWithExtras display={['flex', 'none']}>
            <Button onClick={doToggleMobileGraphsMenu}>{'< Graphs'}</Button>
          </FlexWithExtras>
          {children}
          <FlexWithExtras display={['flex', 'none']}>
            <Button onClick={doToggleMobileLeversMenu}>
              {'Choose your actions'}
            </Button>
          </FlexWithExtras>
        </Flex>
      )}
      <Levers display={['none', 'flex']} />
    </Flex>
  )
}

export default connect(
  'selectIsMobileGraphsMenuOpen',
  'doToggleMobileGraphsMenu',
  'selectIsMobileLeversMenuOpen',
  'doToggleMobileLeversMenu',
  Layout
)
