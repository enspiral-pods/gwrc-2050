import React from 'react'
import { connect } from 'redux-bundler-react'
import { Flex, Button } from 'rebass'
import navHelper from 'internal-nav-helper'
import InfoModal from '../components/InfoModal'

import FlexWithExtras from '../components/FlexWithExtras'

const Layout = ({
  doUpdateUrl,
  doInfoModalClose,
  route,
  routeInfo,
  isInfoModalOpen
}) => {
  const Page = route
  // TODO: move this logic to a property of a route itself?
  const isCalculatorPage = routeInfo.url !== '/' && routeInfo.url !== '/data'

  return (
    <FlexWithExtras
      height={isCalculatorPage ? '100%' : 'auto'}
      width={'100%'}
      bg={isCalculatorPage ? 'background' : 'white'}
      onClick={navHelper(doUpdateUrl)}
    >
      <Page />
      <InfoModal isInfoModalOpen={isInfoModalOpen} onClose={doInfoModalClose} />
    </FlexWithExtras>
  )
}

export default connect(
  'doUpdateUrl',
  'selectRoute',
  'selectRouteInfo',
  'selectIsInfoModalOpen',
  'doInfoModalClose',
  Layout
)
