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

const ElectricitySupply = ({
  electricitySupply,
  emissionsDecrease,
  doToggleMobileGraphsMenu
}) => {
  return (
    <Calculator>
      <Table data={electricitySupply} />
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
  'selectElectricitySupply',
  'selectEmissionsDecrease',
  ElectricitySupply
)