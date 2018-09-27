import { createSelector, createAsyncResourceBundle } from 'redux-bundler'

const bundle = createAsyncResourceBundle({
  name: 'pathways',
  getPromise: async ({ getState, apiFetch }) => {
    const leversId = getState().pathways
      .string_REPLACE_ME_WITH_INDIVIDUAL_LEVER_STATE
    return apiFetch(`/pathways/${leversId}/data`)
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
    '11111111111111111111111111111111111111111111111111111'
}

const baseReducer = bundle.reducer
bundle.reducer = (state = initialState, action) => {
  return baseReducer(state, action)
}

// TODO: IK: probably needs to be rolled into a single emissions selector once we figure out what data that should be
bundle.selectEnergyEmissions = state =>
  state.pathways.data ? state.pathways.data.ghg : null
bundle.selectEmissionsDecrease = state =>
  state.pathways.data
    ? state.pathways.data.output_emissions_percentage_reduction
    : null

bundle.reactInitialPathwaysFetch = createSelector(
  'selectPathwaysShouldUpdate',
  shouldUpdate => {
    if (shouldUpdate) {
      return { actionCreator: 'doFetchPathways' }
    }
  }
)

export default bundle
