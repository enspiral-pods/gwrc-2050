import React from 'react'
import { connect } from 'redux-bundler-react'
import toCamelCase from 'lodash/camelCase'
import Lever from './Lever'
import FlexWithExtras from './FlexWithExtras'
import { Flex, Heading, Button } from 'rebass'

const Levers = ({
  display,
  doToggleMobileLeversMenu,
  leversByGroup,
  doUpdateLever
}) => {
  return (
    <FlexWithExtras
      display={display}
      flexDirection={'column'}
      width={['100%', 350]}
      bg={'darkBackground'}
      p={20}
    >
      <FlexWithExtras display={['none', 'flex']}>
        <Heading>Options</Heading>
      </FlexWithExtras>

      <Flex flexDirection={'column'} css={{ overflowY: 'scroll' }}>
        {/* TODO: MS: top level groups */}
        {leversByGroup['Demand'].map(lever => (
          <Lever
            value={lever.value}
            label={lever.label}
            onValueChange={value =>
              doUpdateLever(toCamelCase(lever.label), value)
            }
          />
        ))}
      </Flex>

      <FlexWithExtras display={['flex', 'none']}>
        <Button onClick={doToggleMobileLeversMenu}>View your impact</Button>
      </FlexWithExtras>
    </FlexWithExtras>
  )
}

export default connect('selectLeversByGroup', 'doUpdateLever', Levers)
