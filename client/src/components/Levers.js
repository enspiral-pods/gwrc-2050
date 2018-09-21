import React from 'react'
import { connect } from 'redux-bundler-react'
import Lever from './Lever'

const Levers = ({
  travelDemand,
  activeTransport,
  publicTransport,
  doUpdateTravelDemand,
  doUpdateActiveTransport,
  doUpdatePublicTransport
}) => {
  return (
    <div>
      <Lever
        value={travelDemand}
        label='Travel Demand'
        onValueChange={doUpdateTravelDemand}
      />
      <Lever
        value={activeTransport}
        label='Active Transport'
        onValueChange={doUpdateActiveTransport}
      />
      <Lever
        value={publicTransport}
        label='Public Transport'
        onValueChange={doUpdatePublicTransport}
      />
    </div>
  )
}

export default connect(
  'selectTravelDemand',
  'selectActiveTransport',
  'selectPublicTransport',
  'doUpdateTravelDemand',
  'doUpdateActiveTransport',
  'doUpdatePublicTransport',
  Levers
)
