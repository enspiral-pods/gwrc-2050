import React from 'react'
import { connect } from 'redux-bundler-react'
import { Flex, Heading, Text, Button } from 'rebass/emotion'

import MobileFullScreen from './MobileFullScreen'
import FlexWithExtras from './FlexWithExtras'
import GraphSelectorMenuItem from './GraphSelectorMenuItem'

const GraphSelector = ({
  isMobileGraphsMenuOpen,
  doToggleMobileGraphsMenu
}) => {
  const mobileDisplay = isMobileGraphsMenuOpen ? 'flex' : 'none'

  return (
    <MobileFullScreen
      mobileDisplay={mobileDisplay}
      desktopWidth={256}
      bg={'darkBackground'}
    >
      <FlexWithExtras
        display={['flex', 'none']}
        flexDirection={'row'}
        justifyContent={'space-between'}
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
        <GraphSelectorMenuItem graphName={'Emissions'} />
        <GraphSelectorMenuItem graphName={'Energy Demand'} />
        <GraphSelectorMenuItem graphName={'Energy Supply'} />
        <GraphSelectorMenuItem graphName={'Electricity Demand'} />
        <GraphSelectorMenuItem graphName={'Electricity Supply'} />
        <GraphSelectorMenuItem graphName={'Flows'} />
        <GraphSelectorMenuItem graphName={'Overview'} />
      </Flex>

      <Button>Share your scenario</Button>
    </MobileFullScreen>
  )
}

export default connect(GraphSelector)
