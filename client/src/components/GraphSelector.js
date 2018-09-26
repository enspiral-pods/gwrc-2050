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
      p={20}
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

      <Flex flexDirection={'column'} py={20}>
        <Text fontSize={12}>Select Region</Text>
        <Text>All of Wellington</Text>
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

      <Flex py={20}>
        <Button>Share your scenario</Button>
      </Flex>
    </FlexWithExtras>
  )
}

export default connect(GraphSelector)
