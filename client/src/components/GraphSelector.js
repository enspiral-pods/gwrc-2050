import React from 'react'
import { connect } from 'redux-bundler-react'
import { Flex, Heading, Button, Image } from 'rebass'

import TextRegular from './TextRegular'
import FlexWithExtras from './FlexWithExtras'
import GraphSelectorMenuItem from './GraphSelectorMenuItem'

import rightArrow from '../assets/images/right-arrow.svg'

const GraphSelector = ({
  display,
  doToggleMobileGraphsMenu,
  selectedTerritorialAuthority,
  doSelectTerritorialAuthority
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

      <Flex flexDirection={'column'}>
        <GraphSelectorMenuItem
          graphName={'Emissions'}
          route={'/calculator/emissions'}
        />
        <GraphSelectorMenuItem
          graphName={'Energy Demand'}
          route={'/calculator/energy-demand'}
        />
        <GraphSelectorMenuItem
          graphName={'Energy Supply'}
          route={'/calculator/energy-supply'}
        />
        <GraphSelectorMenuItem
          graphName={'Electricity Demand'}
          route={'/calculator/electricity-demand'}
        />
        <GraphSelectorMenuItem
          graphName={'Electricity Supply'}
          route={'/calculator/electricity-supply'}
        />
        <GraphSelectorMenuItem
          graphName={'Flows'}
          route={'/calculator/flows'}
        />
        <GraphSelectorMenuItem
          graphName={'Overview'}
          route={'/calculator/overview'}
        />
      </Flex>

      <Flex py={20}>
        <Button>Share your scenario</Button>
      </Flex>
    </FlexWithExtras>
  )
}

export default connect(
  'selectSelectedTerritorialAuthority',
  'doSelectTerritorialAuthority',
  GraphSelector
)
