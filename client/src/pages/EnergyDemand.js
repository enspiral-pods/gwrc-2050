import React from 'react'
import { connect } from 'redux-bundler-react'
import { Flex } from 'rebass'
import pick from 'lodash/pick'
import values from 'lodash/values'
import keys from 'lodash/keys'

import PageWrapper from '../components/PageWrapper'
import Table from '../components/Table'
import Graph from '../components/Graph'
import MobileLegend from '../components/MobileLegend'
import EmissionsBar from '../components/EmissionsBar'

const EnergyDemand = ({
  energyDemand,
  emissionsDecrease,
  doToggleMobileGraphsMenu
}) => {
  console.log('energyDemand', energyDemand)
  return (
    <Flex flexDirection={'column'}>
      <Table data={energyDemand} />
      {/* <Graph
        name={'Greenhouse Gas Emissions'}
        axes={'ktCO2/yr / Date'}
        data={graphAreas}
      />
      <MobileLegend data={graphNames} /> */}
      <EmissionsBar emissionsDecrease={emissionsDecrease} />
    </Flex>
  )
}

export default connect(
  'selectEnergyDemand',
  'selectEmissionsDecrease',
  EnergyDemand
)
