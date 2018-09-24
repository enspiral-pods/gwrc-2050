import React from 'react'
import { connect } from 'redux-bundler-react'
import { Flex, Button } from 'rebass/emotion'
import navHelper from 'internal-nav-helper'

import MobileNav from '../components/MobileNav'
import FlexWithExtras from '../components/FlexWithExtras'
import GraphSelector from '../components/GraphSelector'

const Layout = ({
  doUpdateUrl,
  route,
  routeInfo,
  isMobileGraphsMenuOpen,
  doToggleMobileGraphsMenu
}) => {
  const Page = route

  return (
    <Flex flexDirection={['column', 'row']} onClick={navHelper(doUpdateUrl)}>
      <MobileNav doToggleMobileGraphsMenu={doToggleMobileGraphsMenu} />
      <GraphSelector
        isMobileGraphsMenuOpen={isMobileGraphsMenuOpen}
        doToggleMobileGraphsMenu={doToggleMobileGraphsMenu}
      />
      <Page />
    </Flex>
  )
}

export default connect(
  'doUpdateUrl',
  'selectRoute',
  'selectRouteInfo',
  'selectIsMobileGraphsMenuOpen',
  'doToggleMobileGraphsMenu',
  Layout
)
