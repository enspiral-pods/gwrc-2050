import React from 'react'
import { connect } from 'redux-bundler-react'
import { Flex } from 'rebass'
import pick from 'lodash/pick'
import values from 'lodash/values'
import keys from 'lodash/keys'

import Calculator from '../hocs/Calculator'
import Table from '../components/Table'
import Graph from '../components/Graph'
import MobileLegend from '../components/MobileLegend'
import EmissionsBar from '../components/EmissionsBar'

const ElectricityDemand = ({
  electricityDemand,
  emissionsDecrease,
  doToggleMobileGraphsMenu
}) => {
  return (
    <Calculator>
      <Table data={electricityDemand} />
      {/* <Graph
        name={'Greenhouse Gas Emissions'}
        axes={'ktCO2/yr / Date'}
        data={graphAreas}
      />
      <MobileLegend data={graphNames} /> */}
      <EmissionsBar emissionsDecrease={emissionsDecrease} />
    </Calculator>
  )
}

export default connect(
  'selectElectricityDemand',
  'selectEmissionsDecrease',
  ElectricityDemand
)
