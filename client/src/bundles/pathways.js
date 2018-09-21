import { createSelector, createAsyncResourceBundle } from 'redux-bundler'

const bundle = createAsyncResourceBundle({
  name: 'pathways',
  getPromise: async ({ getState, apiFetch }) => {
    const travelDemand = getState().pathways.levers.travelDemand
    const publicTransport = getState().pathways.levers.publicTransport
    const activeTransport = getState().pathways.levers.activeTransport
    return apiFetch(
      `/pathways/111101101101100${travelDemand}${publicTransport}${activeTransport}11110111101101101101101110000000001/data`
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
  string_REPLACE_ME_WITH_INDIVIDUAL_LEVER_STATE:
    '11111111111111111111111111111111111111111111111111111',
  levers: {
    travelDemand: 1,
    activeTransport: 1,
    publicTransport: 1
  }
}

const baseReducer = bundle.reducer
bundle.reducer = (state = initialState, action) => {
  if (action.type === 'LEVER_UPDATE_TRAVEL_DEMAND') {
    return Object.assign({}, state, {
      levers: { ...state.levers, travelDemand: action.payload }
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

bundle.selectTravelDemand = state => state.pathways.levers.travelDemand

bundle.doUpdateTravelDemand = value => ({ dispatch, store }) => {
  dispatch({ type: 'LEVER_UPDATE_TRAVEL_DEMAND', payload: value })
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
