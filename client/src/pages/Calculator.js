import React from 'react'
import { connect } from 'redux-bundler-react'

import Graph from '../components/Graph'

const Calculator = props => {
  return (
    <div>
      <Graph />
    </div>
  )
}

export default connect(Calculator)
