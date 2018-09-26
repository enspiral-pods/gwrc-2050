import React from 'react'
import { connect } from 'redux-bundler-react'
import Lever from './Lever'
import FlexWithExtras from './FlexWithExtras'

const Levers = ({ levers, doUpdateLever }) => {
  return (
    <FlexWithExtras flexDirection={'column'} flexWrap={'wrap'}>
      {Object.keys(levers).map(leverKey => (
        <Lever
          value={levers[leverKey]}
          label={leverKey}
          onValueChange={value => doUpdateLever(leverKey, value)}
        />
      ))}
    </FlexWithExtras>
  )
}

export default connect('selectLevers', 'doUpdateLever', Levers)
