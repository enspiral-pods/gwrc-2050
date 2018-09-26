import { createSelector, createAsyncResourceBundle } from 'redux-bundler'
import levers from './util/levers'

const bundle = createAsyncResourceBundle({
  name: 'pathways',
  getPromise: async ({ getState, apiFetch, store }) => {
    return apiFetch(`/pathways/${store.selectLeverString()}/data`)
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
  levers
}

const baseReducer = bundle.reducer
bundle.reducer = (state = initialState, action) => {
  if (action.type === 'LEVER_UPDATE') {
    const { lever, value } = action.payload
    let levers = { ...state.levers }
    levers[lever] = value
    return Object.assign({}, state, {
      levers
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

bundle.selectLevers = state => state.pathways.levers
bundle.selectLeverString = state =>
  `111101101101100${state.pathways.levers['Travel demand']}${
    state.pathways.levers['Public transport']
  }${state.pathways.levers['Active transport']}${
    state.pathways.levers['Vehicle occupancy']
  }${state.pathways.levers['Electrification of light vehicles']}${
    state.pathways.levers['Electrification of public transport']
  }${state.pathways.levers['Vehicle fuel efficiencies']}0${
    state.pathways.levers['Freight volume']
  }${state.pathways.levers['Freight Mode and efficiency']}${
    state.pathways.levers['Domestic aviation']
  }${state.pathways.levers['Domestic navigation']}0${
    state.pathways.levers['Space and water heating demand']
  }${state.pathways.levers['Heating technology']}0${
    state.pathways.levers['Home lighting & appliances']
  }${
    state.pathways.levers['Electrification of home cooking']
  }01101101110000000001`

bundle.doUpdateLever = (lever, value) => ({ dispatch, store }) => {
  dispatch({ type: 'LEVER_UPDATE', payload: { lever, value } })
  store.doMarkPathwaysAsOutdated()
}

bundle.reactInitialPathwaysFetch = createSelector(
  'selectPathwaysShouldUpdate',
  shouldUpdate => {
    if (shouldUpdate) {
      return { actionCreator: 'doFetchPathways' }
    }
  }
)

export default bundle
