import React from 'react'
import { connect } from 'redux-bundler-react'
import { Flex, Button } from 'rebass'
import navHelper from 'internal-nav-helper'

import FlexWithExtras from '../components/FlexWithExtras'

const Layout = ({ doUpdateUrl, route, routeInfo }) => {
  const Page = route
  // TODO: move this logic to a property of a route itself?
  const isCalculatorPage = routeInfo.url !== '/'

  return (
    <FlexWithExtras
      height={isCalculatorPage ? '100%' : 'auto'}
      width={'100%'}
      bg={isCalculatorPage ? 'background' : 'white'}
      onClick={navHelper(doUpdateUrl)}
    >
      <Page />
    </FlexWithExtras>
  )
}

export default connect('doUpdateUrl', 'selectRoute', 'selectRouteInfo', Layout)
