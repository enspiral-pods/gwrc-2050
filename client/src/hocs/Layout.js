import React from 'react'
import { connect } from 'redux-bundler-react'
import navHelper from 'internal-nav-helper'

import Fela from './Fela'

const Layout = ({ doUpdateUrl, route }) => {
  const Page = route

  return (
    <Fela>
      <div onClick={navHelper(doUpdateUrl)}>
        <Page />
      </div>
    </Fela>
  )
}

export default connect(
  'doUpdateUrl',
  'selectRoute',
  Layout
)
