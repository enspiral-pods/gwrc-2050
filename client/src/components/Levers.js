import React from 'react'
import { connect } from 'redux-bundler-react'
import Lever from './Lever'

const Levers = ({ travelDemand, doUpdateTravelDemand }) => {
  return (
    <div>
      <Lever
        value={travelDemand}
        label='Travel Demand'
        onValueChange={value => doUpdateTravelDemand(value)}
      />
    </div>
  )
}

export default connect('selectTravelDemand', 'doUpdateTravelDemand', Levers)
