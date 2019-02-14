import React from 'react'
import { connect } from 'redux-bundler-react'
import { Flex, Heading, Button, Image } from 'rebass'
import keys from 'lodash/keys'
import debounce from 'lodash/debounce'
import toCamelCase from 'lodash/camelCase'

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
  doMarkPathwaysAsOutdated,
  isLeverGroupOpen,
  doInfoModalOpen,
  selectedLeverGroup,
  doToggleLeverGroup
}) => {
  const debouncedMarkAsOutdated = debounce(doMarkPathwaysAsOutdated, 500)
  return (
    <FlexWithExtras
      display={display}
      width={['100%', 400]}
      p={20}
      borderLeft={'1px solid rgb(255,255,255,0.1)'}
      css={{ overflowX: 'auto' }}
    >
      {isLeverGroupOpen ? (
        <LeverGroup
          doToggleLeverGroup={doToggleLeverGroup}
          selectedLeverGroup={selectedLeverGroup}
          levers={leversByGroup[selectedLeverGroup]}
          doUpdateLever={(lever, value) => {
            doUpdateLever(lever, value)
            debouncedMarkAsOutdated()
          }}
          doInfoModalOpen={doInfoModalOpen}
        />
      ) : (
        <FlexWithExtras flexDirection={'column'} width={'100%'}>
          <FlexWithExtras display={['none', 'flex']} mb={40}>
            <Heading color={'white'} fontSize={20}>
              Options
            </Heading>
          </FlexWithExtras>

          <Flex
            flexDirection={'column'}
            css={{ overflowY: 'scroll', overflowX: 'hidden' }}
          >
            {keys(leversByGroup).map(group => (
              <LeverGroupListItem
                group={group}
                levers={leversByGroup[group]}
                doToggleLeverGroup={doToggleLeverGroup}
                doChangeGroupLeverValue={value => {
                  leversByGroup[group].forEach(lever => {
                    const valueForLever =
                      value > lever.leverDescriptions.length
                        ? lever.leverDescriptions.length
                        : value
                    doUpdateLever(toCamelCase(lever.label), valueForLever)
                    debouncedMarkAsOutdated()
                  })
                }}
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
  'doMarkPathwaysAsOutdated',
  'selectIsLeverGroupOpen',
  'selectSelectedLeverGroup',
  'doToggleLeverGroup',
  'doInfoModalOpen',
  Levers
)
