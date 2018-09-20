import React from 'react'
import { connect } from 'redux-bundler-react'

import Emissions from '../hocs/Emissions'

const Calculator = props => {
  return (
    <div>
      <Emissions />
    </div>
  )
}

export default connect(Calculator)
