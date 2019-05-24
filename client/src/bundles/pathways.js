import { createSelector, createAsyncResourceBundle } from 'redux-bundler'
import groupBy from 'lodash/groupBy'
import flatMap from 'lodash/flatMap'
import uniq from 'lodash/uniq'
import filter from 'lodash/filter'
import { oneLineTrim } from 'common-tags'
import leversState from './util/levers'

const bundle = createAsyncResourceBundle({
  name: 'pathways',
  getPromise: async ({ getState, apiFetch, store }) => {
    return apiFetch(
      `/pathways/${store.selectSelectedTerritorialAuthority()}/${store.selectLeverString()}/data`
    )
  },
  staleAfter: Infinity
})

const initialState = {
  // needed by createAsyncResourceBundle
  data: null,
  errorTimes: [],
  errorType: null,
  failedPermanently: false,
  isExpired: false,
  isLoading: false,
  isOutdated: false,
  lastSuccess: null,
  // other state
  levers: leversState,
  activeGraphArea: null
}

const baseReducer = bundle.reducer
bundle.reducer = (state = initialState, action) => {
  if (action.type === 'LEVER_UPDATE') {
    const { lever, value } = action.payload
    let levers = { ...state.levers }
    levers[lever].value = value
    return Object.assign({}, state, {
      levers
    })
  }
  if (action.type === 'LEVERS_UPDATE_FROM_URL') {
    return Object.assign({}, state, {
      levers: action.payload
    })
  }
  if (action.type === 'GRAPH_UPDATE_ACTIVE_AREA') {
    return Object.assign({}, state, {
      activeGraphArea: action.payload.keyName
    })
  }
  return baseReducer(state, action)
}

bundle.selectEmissionsDecrease = state =>
  state.pathways.data
    ? state.pathways.data.output_emissions_percentage_reduction
    : null
// TODO: IK: probably needs to be rolled into a single emissions selector once we figure out what data that should be
bundle.selectEnergyEmissions = state =>
  state.pathways.data ? state.pathways.data.ghg : null
bundle.selectEnergyDemand = state =>
  state.pathways.data ? state.pathways.data.final_energy_demand : null
bundle.selectEnergySupply = state =>
  state.pathways.data ? state.pathways.data.primary_energy_supply : null
bundle.selectElectricityDemand = state =>
  state.pathways.data ? state.pathways.data.electricity.demand : null
bundle.selectElectricitySupply = state =>
  state.pathways.data ? state.pathways.data.electricity.supply : null
bundle.selectSankeyData = state =>
  state.pathways.data ? state.pathways.data.sankey : null

bundle.selectSankeyDataNodes = createSelector('selectSankeyData', data => {
  if (!data) return []
  const nodeNames = uniq(
    flatMap(
      filter(data, d => {
        return (
          d[d.length - 1] !== 0 &&
          d[d.length - 1] !== null &&
          d[d.length - 1] !== 'na'
        )
      }),
      d => {
        return [d[0], d[1]]
      }
    )
  )
  return nodeNames
    .map(n => {
      return { name: n }
    })
    .slice(2) // remove the headers
})

bundle.selectSankeyDataLinks = createSelector('selectSankeyData', data => {
  if (!data) return []
  return data
    .filter(d => {
      return (
        d[d.length - 1] !== 0 &&
        d[d.length - 1] !== null &&
        d[d.length - 1] !== 'na'
      )
    })
    .map(d => {
      return {
        source: d[0],
        target: d[1],
        value: d[d.length - 1] // pick the 2050 value for now, this could be configurable with a year slider later
      }
    })
    .slice(1) // remove the headers
})

bundle.selectSankeyDataForGraph = createSelector(
  'selectSankeyDataNodes',
  'selectSankeyDataLinks',
  (nodes, links) => {
    if (!nodes || !links) return null
    return { nodes, links }
  }
)

bundle.selectLevers = state => state.pathways.levers
bundle.selectLeversByGroup = state =>
  groupBy(state.pathways.levers, lever => lever.group.label)
bundle.selectInfoModalLeverObject = state =>
  state.ui.infoModalLever
    ? state.pathways.levers[state.ui.infoModalLever]
    : null

bundle.selectLeverUrlObject = state => {
  let urlString = ''
  for (var key in state.pathways.levers) {
    if (urlString != '') {
      urlString += '&'
    }
    urlString +=
      key + '=' + encodeURIComponent(state.pathways.levers[key].value)
  }
  return urlString
}

bundle.selectLeverString = state => oneLineTrim`
  ${state.pathways.levers[leversOrder[0]].value}
  ${state.pathways.levers[leversOrder[1]].value}
  ${state.pathways.levers[leversOrder[2]].value}
  ${state.pathways.levers[leversOrder[3]].value}
  0
  ${state.pathways.levers[leversOrder[4]].value}
  ${state.pathways.levers[leversOrder[5]].value}
  ${state.pathways.levers[leversOrder[6]].value}
  ${state.pathways.levers[leversOrder[7]].value}
  ${state.pathways.levers[leversOrder[8]].value}
  0
  ${state.pathways.levers[leversOrder[9]].value}
  ${state.pathways.levers[leversOrder[10]].value}
  0
  ${state.pathways.levers[leversOrder[11]].value}
  0
  0
  ${state.pathways.levers[leversOrder[12]].value}
  ${state.pathways.levers[leversOrder[13]].value}
  ${state.pathways.levers[leversOrder[14]].value}
  ${state.pathways.levers[leversOrder[15]].value}
  ${state.pathways.levers[leversOrder[16]].value}
  ${state.pathways.levers[leversOrder[17]].value}
  0
  ${state.pathways.levers[leversOrder[18]].value}
  ${state.pathways.levers[leversOrder[19]].value}
  ${state.pathways.levers[leversOrder[20]].value}
  0
  ${state.pathways.levers[leversOrder[21]].value}
  ${state.pathways.levers[leversOrder[22]].value}
  ${state.pathways.levers[leversOrder[23]].value}
  0
  ${state.pathways.levers[leversOrder[24]].value}
  ${state.pathways.levers[leversOrder[25]].value}
  0
  ${state.pathways.levers[leversOrder[26]].value}
  ${state.pathways.levers[leversOrder[27]].value}
  0
  ${state.pathways.levers[leversOrder[28]].value}
  ${state.pathways.levers[leversOrder[29]].value}
  0
  ${state.pathways.levers[leversOrder[30]].value}
  ${state.pathways.levers[leversOrder[31]].value}
  0
  ${state.pathways.levers[leversOrder[32]].value}
  ${state.pathways.levers[leversOrder[33]].value}
  ${state.pathways.levers[leversOrder[34]].value}
`

bundle.selectActiveGraphArea = state => state.pathways.activeGraphArea

bundle.doUpdateLever = (lever, value) => ({ dispatch }) => {
  dispatch({ type: 'LEVER_UPDATE', payload: { lever, value } })
}

bundle.doUpdateLeversFromUrl = leverString => ({ dispatch, store }) => {
  let newlevers = {}

  leverString.split('').forEach((leverVal, i) => {
    // val of 0 does not correspond to a lever in the model
    if (leverVal !== '0') {
      const leverName = leversOrder[i]
      newlevers[leverName] = store.selectLevers()[leverName]
      newlevers[leverName].value = leverVal
    }
  })

  dispatch({ type: 'LEVERS_UPDATE_FROM_URL', payload: newlevers })
  store.doReplaceUrl('/calculator')
}

bundle.doUpdateActiveGraphArea = keyName => ({ dispatch, store }) => {
  dispatch({
    type: 'GRAPH_UPDATE_ACTIVE_AREA',
    payload: {
      keyName
    }
  })
}

bundle.reactRenderShareState = createSelector(
  'selectUrlObject',
  urlLocation => {
    if (urlLocation.pathname.includes('/share')) {
      // use the lever string part of the pathname with all 0's removed
      const leverString = urlLocation.pathname
        .split('/')
        .slice(-1)[0]
        .replace(/0/g, '')
      return { actionCreator: 'doUpdateLeversFromUrl', args: [leverString] }
    }
    return false
  }
)

bundle.reactInitialPathwaysFetch = createSelector(
  'selectPathwaysShouldUpdate',
  shouldUpdate => {
    if (shouldUpdate) {
      return { actionCreator: 'doFetchPathways' }
    }
  }
)

export default bundle

const leversOrder = [
  'biogasPowerGeneration',
  'solarPanelsForElectricity',
  'solarPanelsForHotWater',
  'nationalGridElectricity',
  'landUseChange',
  'forestType',
  'livestockStockingRates',
  'livestockEmissionsIntensityPracticeChange',
  'livestockEmissionsIntensityNewTech',
  'wasteVolumes',
  'landfillGasCaptureAndEnergyFromWaste',
  'biofuelSupply',
  'travelDemand',
  'modeShare',
  'vehicleOccupancy',
  'electrificationOfLightVehicles',
  'electrificationOfPublicTransport',
  'vehicleFuelEfficiencies',
  'freightVolume',
  'electrificationOfTrucks',
  'freightModeAndEfficiency',
  'demand',
  'efficiency',
  'nationalMarineTransport',
  'homeSpaceAndWaterHeatingDemand',
  'homeHeatingTechnology',
  'homeLightingAndAppliances',
  'electrificationOfHomeCooking',
  'growthInManufacturing',
  'energyEfficiencyAndFuelSwitching',
  'commercialSpaceAndWaterHeatingDemand',
  'commercialHeatingTechnology',
  'commercialLightingAndAppliances',
  'electrificationOfCommercialCooking',
  'refrigerantGases'
]
