import React from 'react'
import { connect } from 'redux-bundler-react'
import { Flex, Heading, Button, Image } from 'rebass'
import keys from 'lodash/keys'

import LeverGroupListItem from './LeverGroupListItem'
import LeverGroup from './LeverGroup'
import FlexWithExtras from './FlexWithExtras'
import TextMedium from './TextMedium'

import downArrow from '../assets/images/down-arrow.svg'

const Levers = ({
  display,
  doToggleMobileLeversMenu,
  leversByGroup,
  doUpdateLever,
  isLeverGroupOpen,
  selectedLeverGroup,
  doToggleLeverGroup
}) => {
  return (
    <FlexWithExtras
      display={display}
      width={['100%', 350]}
      p={20}
      borderLeft={'1px solid rgb(255,255,255,0.1)'}
    >
      {isLeverGroupOpen ? (
        <LeverGroup
          doToggleLeverGroup={doToggleLeverGroup}
          selectedLeverGroup={selectedLeverGroup}
          levers={leversByGroup[selectedLeverGroup]}
          doUpdateLever={doUpdateLever}
        />
      ) : (
        <FlexWithExtras flexDirection={'column'} width={'100%'}>
          <FlexWithExtras display={['none', 'flex']} mb={40}>
            <Heading fontSize={20}>Options</Heading>
          </FlexWithExtras>

          <Flex flexDirection={'column'}>
            {/* TODO: MS: top level groups */}
            {keys(leversByGroup).map(group => (
              <LeverGroupListItem
                group={group}
                levers={leversByGroup[group]}
                doToggleLeverGroup={doToggleLeverGroup}
              />
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
      )}
    </FlexWithExtras>
  )
}

export default connect(
  'selectLeversByGroup',
  'doUpdateLever',
  'selectIsLeverGroupOpen',
  'selectSelectedLeverGroup',
  'doToggleLeverGroup',
  Levers
)
