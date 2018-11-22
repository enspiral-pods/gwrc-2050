import React from 'react'
import { connect } from 'redux-bundler-react'
import { Flex } from 'rebass'

import TextMedium from './TextMedium'

const Navbar = props => {
  return (
    <Flex flexDirection='row'>
      <TextMedium>Wellington Region</TextMedium>
    </Flex>
  )
}

export default Navbar
