import React from 'react'
import { connect } from 'redux-bundler-react'
import { Flex, Heading, Button, Image, Box } from 'rebass'

import TextRegular from './TextRegular'
import TextMedium from './TextMedium'
import FlexWithExtras from './FlexWithExtras'
import GraphSelectorMenuItem from './GraphSelectorMenuItem'

import rightArrow from '../assets/images/right-arrow.svg'
import EmissionsIcon from './graphSelectorIcons/emissionsIcon'
import EnergyDemandIcon from './graphSelectorIcons/energyDemandIcon'
import EnergySupplyIcon from './graphSelectorIcons/energySupplyIcon'
import ElectricityDemandIcon from './graphSelectorIcons/electricityDemandIcon'
import ElectricitySupplyIcon from './graphSelectorIcons/electricitySupplyIcon'
import FlowsIcon from './graphSelectorIcons/flowsIcon'
import OverviewIcon from './graphSelectorIcons/overviewIcon'
import helpIcon from '../assets/images/question-circle-solid.svg'
import shareIcon from '../assets/images/share.svg'

const GraphSelector = ({
  display,
  doToggleMobileGraphsMenu,
  selectedTerritorialAuthority,
  pathname,
  doSelectTerritorialAuthority,
  doOnBoardingOpen,
  doOpenShareModal
}) => {
  return (
    <FlexWithExtras
      display={display}
      flexDirection={'column'}
      width={['100%', 256]}
      bg={'darkBackground'}
      p={15}
    >
      <FlexWithExtras
        display={['flex', 'none']}
        flexDirection={'row'}
        justifyContent={'space-between'}
        alignItems={'center'}
        pb={20}
      >
        <Heading color={'white'} css={{ visibility: 'hidden' }}>
          Back >
        </Heading>
        <Heading color={'white'} fontSize={16}>
          Graphs
        </Heading>
        <Button onClick={doToggleMobileGraphsMenu} variant={'nav'}>
          <Flex alignItems={'center'}>
            <Heading color={'white'} fontSize={14}>
              {'Back'}
            </Heading>
            <Image src={rightArrow} height={24} width={24} />
          </Flex>
        </Button>
      </FlexWithExtras>
      <FlexWithExtras display={['none', 'flex']} mb={40}>
        <Heading color={'white'} fontSize={20}>
          Graphs
        </Heading>
      </FlexWithExtras>

      <Flex flexDirection={'column'} py={20}>
        <Heading color={'white'} fontSize={12}>
          Select Region
        </Heading>
        <select
          value={selectedTerritorialAuthority}
          onChange={e => doSelectTerritorialAuthority(e.target.value)}
        >
          <option value={'greater_wellington'}>Greater Wellington</option>
          <option value={'wellington_city'}>Wellington City</option>
          <option value={'porirua'}>Porirua</option>
          <option value={'kapiti_coast'}>Kapiti Coast</option>
          <option value={'lower_hutt'}>Lower Hutt</option>
          <option value={'upper_hutt'}>Upper Hutt</option>
          <option value={'wairarapa'}>Wairarapa</option>
        </select>
      </Flex>

      <Flex flexDirection={'column'} pb={15}>
        <GraphSelectorMenuItem
          graphName={'Emissions'}
          route={'/calculator/emissions'}
        >
          <EmissionsIcon
            active={
              pathname === '/calculator/emissions' || pathname === '/calculator'
            }
          />
        </GraphSelectorMenuItem>
        <GraphSelectorMenuItem
          graphName={'Energy Demand'}
          route={'/calculator/energy-demand'}
        >
          <EnergyDemandIcon active={pathname === '/calculator/energy-demand'} />
        </GraphSelectorMenuItem>

        <GraphSelectorMenuItem
          graphName={'Energy Supply'}
          route={'/calculator/energy-supply'}
        >
          <EnergySupplyIcon active={pathname === '/calculator/energy-supply'} />
        </GraphSelectorMenuItem>
        <GraphSelectorMenuItem
          graphName={'Electricity Demand'}
          route={'/calculator/electricity-demand'}
        >
          <ElectricityDemandIcon
            active={pathname === '/calculator/electricity-demand'}
          />
        </GraphSelectorMenuItem>

        <GraphSelectorMenuItem
          graphName={'Electricity Supply'}
          route={'/calculator/electricity-supply'}
        >
          <ElectricitySupplyIcon
            active={pathname === '/calculator/electricity-supply'}
          />
        </GraphSelectorMenuItem>

        <GraphSelectorMenuItem graphName={'Flows'} route={'/calculator/flows'}>
          <FlowsIcon active={pathname === '/calculator/flows'} />
        </GraphSelectorMenuItem>

        <GraphSelectorMenuItem
          graphName={'Overview'}
          route={'/calculator/overview'}
        >
          <OverviewIcon active={pathname === '/calculator/overview'} />
        </GraphSelectorMenuItem>
      </Flex>

      <Flex
        p={10}
        css={{
          textDecoration: 'none',
          cursor: 'pointer',
          backgroundColor: '#262D33'
        }}
        onClick={doOpenShareModal}
      >
        <Image src={shareIcon} width={25} mr={15} />
        <TextMedium fontSize={16}>Share your scenario</TextMedium>
      </Flex>
      <Flex
        py={20}
        css={{
          textDecoration: 'none',
          cursor: 'pointer',
          ':hover': { backgroundColor: '#262D33' }
        }}
        onClick={doOnBoardingOpen}
      >
        <Image src={helpIcon} height={18} width={18} mr={'5px'} />
        <TextRegular>Help</TextRegular>
      </Flex>
    </FlexWithExtras>
  )
}

export default connect(
  'selectSelectedTerritorialAuthority',
  'selectPathname',
  'doSelectTerritorialAuthority',
  'doOnBoardingOpen',
  'doOpenShareModal',
  GraphSelector
)
