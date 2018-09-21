import React from 'react'
import { connect } from 'redux-bundler-react'

import Emissions from '../hocs/Emissions'
import Levers from '../components/Levers'

const Calculator = props => {
  return (
    <div>
      <Emissions />
      <Levers />
    </div>
  )
}

export default connect(Calculator)
