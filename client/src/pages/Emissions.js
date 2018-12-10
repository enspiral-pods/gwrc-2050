import React, { Fragment } from 'react'
import { connect } from 'redux-bundler-react'
import pick from 'lodash/pick'
import values from 'lodash/values'
import keys from 'lodash/keys'
import Onboarding from '../components/Onboarding'
import First from '../components/onboarding/first'
import Second from '../components/onboarding/second'
import Third from '../components/onboarding/third'
import Fourth from '../components/onboarding/fourth'

import Calculator from '../hocs/Calculator'
import Graph from '../components/Graph'
import MobileLegend from '../components/MobileLegend'
import EmissionsBar from '../components/EmissionsBar'

const Emissions = ({
  energyEmissions,
  emissionsDecrease,
  isMobileUI,
  isOnboardingOpen,
  onboardingCurrentStep,
  doOnBoardingNextStep,
  doOnBoardingPreviousStep,
  doOnBoardingClose
}) => {
  const usedData = pick(energyEmissions, [
    'Bioenergy credit',
    'LULUCF',
    'Fuel Combustion',
    'Solvent and Other Product Use',
    'Agriculture',
    'Waste'
  ])
  const graphAreas = values(usedData)
  const graphNames = keys(usedData)

  const colors = [
    '#FFC700',
    '#359AFF',
    '#316BFF',
    '#00C06F',
    '#FF6363',
    '#00B4C0',
    '#905BFF',
    '#FC5BFF'
  ]
  console.log('graphAreas', graphAreas)
  const tickValues = [
    -1500,
    -1000,
    -500,
    0,
    500,
    1000,
    1500,
    2000,
    2500,
    3000,
    3500,
    4000,
    4500,
    5000
  ]

  return (
    <Fragment>
      <Onboarding
        isOnboardingOpen={isOnboardingOpen}
        steps={[<First />, <Second />, <Third />, <Fourth />]}
        currentStep={onboardingCurrentStep}
        onNext={doOnBoardingNextStep}
        onBack={doOnBoardingPreviousStep}
        onClose={doOnBoardingClose}
      />
      <Calculator>
        {/* <Table data={usedData} /> */}
        <Graph
          name={'Greenhouse Gas Emissions'}
          axes={'ktCO2/yr / Date'}
          // axesTickValues={tickValues}
          data={graphAreas}
          labels={graphNames}
          colors={colors}
          isMobileUI={isMobileUI}
        />
        <MobileLegend data={graphNames} colors={colors} />
        <EmissionsBar
          emissionsDecrease={emissionsDecrease}
          isMobileUI={isMobileUI}
        />
      </Calculator>
    </Fragment>
  )
}

export default connect(
  'selectEnergyEmissions',
  'selectEmissionsDecrease',
  'selectIsMobileUI',
  'selectIsOnboardingOpen',
  'selectOnboardingCurrentStep',
  'doOnBoardingNextStep',
  'doOnBoardingPreviousStep',
  'doOnBoardingClose',
  Emissions
)
