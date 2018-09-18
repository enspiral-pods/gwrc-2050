import React from 'react'
import { connect } from 'redux-bundler-react'
import navHelper from 'internal-nav-helper'

const Layout = ({ doUpdateUrl, route }) => {
  const Page = route

  return (
    <div onClick={navHelper(doUpdateUrl)}>
      <Page />
    </div>
  )
}

export default connect(
  'doUpdateUrl',
  'selectRoute',
  Layout
)
