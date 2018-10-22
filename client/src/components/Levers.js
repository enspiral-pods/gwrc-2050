import React from 'react'
import { connect } from 'redux-bundler-react'
import { Flex, Heading, Button, Image } from 'rebass'
import toCamelCase from 'lodash/camelCase'
import keys from 'lodash/keys'

import LeverGroup from './LeverGroup'
import FlexWithExtras from './FlexWithExtras'
import TextMedium from './TextMedium'

import downArrow from '../assets/images/down-arrow.svg'

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
      p={20}
    >
      <FlexWithExtras display={['none', 'flex']}>
        <Heading>Options</Heading>
      </FlexWithExtras>

      <Flex flexDirection={'column'}>
        {/* TODO: MS: top level groups */}
        {keys(leversByGroup).map(group => (
          <LeverGroup group={group} levers={leversByGroup[group]} />
        ))}
      </Flex>

      <FlexWithExtras display={['flex', 'none']}>
        <Button
          onClick={doToggleMobileLeversMenu}
          bg={'darkFluroGreen'}
          width={'100%'}
        >
          <Flex justifyContent={'center'} alignItems={'center'}>
            <Image src={downArrow} height={24} width={24} mr={10} />
            <TextMedium fontSize={16}>{'View your impact'}</TextMedium>
          </Flex>
        </Button>
      </FlexWithExtras>
    </FlexWithExtras>
  )
}

export default connect('selectLeversByGroup', 'doUpdateLever', Levers)

{
  /* <LeverGroup
  value={lever.value}
  label={lever.label}
  onValueChange={value =>
    doUpdateLever(toCamelCase(lever.label), value)
  }
/> */
}
