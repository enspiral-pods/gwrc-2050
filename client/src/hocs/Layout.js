import React from 'react'
import { connect } from 'redux-bundler-react'
import { Flex, Button } from 'rebass/emotion'
import navHelper from 'internal-nav-helper'

import PageWrapper from '../components/PageWrapper'
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
    <FlexWithExtras
      flexDirection={['column', 'row']}
      height={'100%'}
      bg={'background'}
      onClick={navHelper(doUpdateUrl)}
    >
      <GraphSelector display={['none', 'flex']} />
      {isMobileGraphsMenuOpen ? (
        <GraphSelector
          display={['flex', 'none']}
          doToggleMobileGraphsMenu={doToggleMobileGraphsMenu}
        />
      ) : (
        <PageWrapper doToggleMobileGraphsMenu={doToggleMobileGraphsMenu}>
          <Page />
        </PageWrapper>
      )}
    </FlexWithExtras>
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
