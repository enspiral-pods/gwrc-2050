import React from 'react'
import { connect } from 'redux-bundler-react'
import { Flex, Heading, Text, Button } from 'rebass'

import FlexWithExtras from './FlexWithExtras'
import GraphSelectorMenuItem from './GraphSelectorMenuItem'

const GraphSelector = ({ display, doToggleMobileGraphsMenu }) => {
  return (
    <FlexWithExtras
      display={display}
      flexDirection={'column'}
      width={['100%', 256]}
    >
      <FlexWithExtras
        display={['flex', 'none']}
        flexDirection={'row'}
        justifyContent={'space-between'}
        p={20}
      >
        <Text css={{ visibility: 'hidden' }}>Back ></Text>
        <Heading>Graphs</Heading>
        <Button onClick={doToggleMobileGraphsMenu}>Back ></Button>
      </FlexWithExtras>
      <FlexWithExtras display={['none', 'flex']}>
        <Heading>Graphs</Heading>
      </FlexWithExtras>

      <Flex flexDirection={'column'}>
        <Text>Select Region</Text>
        <Text>DROPDOWN PLACEHOLDER</Text>
      </Flex>

      <Flex flexDirection={'column'}>
        <GraphSelectorMenuItem graphName={'Emissions'} route={'/emissions'} />
        <GraphSelectorMenuItem
          graphName={'Energy Demand'}
          route={'/energy-demand'}
        />
        <GraphSelectorMenuItem
          graphName={'Energy Supply'}
          route={'/energy-supply'}
        />
        <GraphSelectorMenuItem
          graphName={'Electricity Demand'}
          route={'/electricity-demand'}
        />
        <GraphSelectorMenuItem
          graphName={'Electricity Supply'}
          route={'/electricity-supply'}
        />
        <GraphSelectorMenuItem graphName={'Flows'} route={'/flows'} />
        <GraphSelectorMenuItem graphName={'Overview'} route={'/overview'} />
      </Flex>

      <Button>Share your scenario</Button>
    </FlexWithExtras>
  )
}

export default connect(GraphSelector)
