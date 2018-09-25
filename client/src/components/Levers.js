import React from 'react'
import { connect } from 'redux-bundler-react'
import Lever from './Lever'
import FlexWithExtras from './FlexWithExtras'

const Levers = ({
  travelDemand,
  activeTransport,
  publicTransport,
  doUpdateLever
}) => {
  return (
    <FlexWithExtras flexDirection={'column'} flexWrap={'wrap'}>
      <Lever
        value={travelDemand}
        label='Travel Demand'
        onValueChange={value => doUpdateLever('travelDemand', value)}
      />
      <Lever
        value={activeTransport}
        label='Active Transport'
        onValueChange={value => doUpdateLever('activeTransport', value)}
      />
      <Lever
        value={publicTransport}
        label='Public Transport'
        onValueChange={value => doUpdateLever('publicTransport', value)}
      />
    </FlexWithExtras>
  )
}

export default connect(
  'selectTravelDemand',
  'selectActiveTransport',
  'selectPublicTransport',
  'doUpdateLever',
  Levers
)
