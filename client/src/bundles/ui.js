import debounce from 'lodash/debounce'

const name = 'ui'

const initialState = {
  selectedTerritorialAuthority: 'greater_wellington',
  isMobileGraphsMenuOpen: false,
  isMobileLeversMenuOpen: false,
  isLeverGroupOpen: false,
  selectedLeverGroup: null,
  windowWidth: null,
  isOnboardingOpen: true,
  onBoardingCurrentStep: 0,
  isInfoModalOpen: false,
  infoModalLever: null
}
const reducer = (state = initialState, action) => {
  if (action.type === 'SELECT_TERRITORIAL_AUTHORITY') {
    return Object.assign({}, state, {
      selectedTerritorialAuthority: action.payload
    })
  }

  if (action.type === 'TOGGLE_MOBILE_GRAPHS_MENU') {
    return Object.assign({}, state, {
      isMobileGraphsMenuOpen: !state.isMobileGraphsMenuOpen
    })
  }
  if (action.type === 'TOGGLE_MOBILE_LEVERS_MENU') {
    return Object.assign({}, state, {
      isMobileLeversMenuOpen: !state.isMobileLeversMenuOpen
    })
  }
  if (action.type === 'TOGGLE_LEVER_GROUP') {
    return Object.assign({}, state, {
      isLeverGroupOpen: !state.isLeverGroupOpen,
      selectedLeverGroup: action.payload || null
    })
  }

  if (action.type === 'URL_UPDATED') {
    return Object.assign({}, state, {
      isMobileGraphsMenuOpen: false,
      isMobileLeversMenuOpen: false
    })
  }

  if (action.type === 'ONBOARDING_OPEN') {
    return Object.assign({}, state, {
      isOnboardingOpen: true
    })
  }

  if (action.type === 'ONBOARDING_CLOSE') {
    return Object.assign({}, state, {
      isOnboardingOpen: false,
      onBoardingCurrentStep: 0
    })
  }

  if (action.type === 'ONBOARDING_NEXT_STEP') {
    return Object.assign({}, state, {
      onBoardingCurrentStep: state.onBoardingCurrentStep + 1
    })
  }

  if (action.type === 'ONBOARDING_PREVIOUS_STEP') {
    return Object.assign({}, state, {
      onBoardingCurrentStep: state.onBoardingCurrentStep - 1
    })
  }

  if (action.type === 'INFO_MODAL_OPEN') {
    return Object.assign({}, state, {
      isInfoModalOpen: true,
      infoModalLever: action.payload
    })
  }

  if (action.type === 'INFO_MODAL_CLOSE') {
    return Object.assign({}, state, {
      isInfoModalOpen: false
    })
  }

  if (action.type === 'WINDOW_RESIZE_WIDTH') {
    return { ...state, windowWidth: action.payload }
  }

  return state
}

const selectors = {
  selectSelectedTerritorialAuthority: state =>
    state.ui.selectedTerritorialAuthority,
  selectIsMobileGraphsMenuOpen: state => state.ui.isMobileGraphsMenuOpen,
  selectIsMobileLeversMenuOpen: state => state.ui.isMobileLeversMenuOpen,
  selectIsLeverGroupOpen: state => state.ui.isLeverGroupOpen,
  selectSelectedLeverGroup: state => state.ui.selectedLeverGroup,
  selectWindowWidth: state => state.ui.windowWidth,
  selectIsMobileUI: state => state.ui.windowWidth < 800,
  selectIsOnboardingOpen: state => state.ui.isOnboardingOpen,
  selectOnboardingCurrentStep: state => state.ui.onBoardingCurrentStep,
  selectIsInfoModalOpen: state => state.ui.isInfoModalOpen
}

const actionCreators = {
  doSelectTerritorialAuthority: territorialAuthority => ({
    dispatch,
    store
  }) => {
    dispatch({
      type: 'SELECT_TERRITORIAL_AUTHORITY',
      payload: territorialAuthority
    })
    store.doMarkPathwaysAsOutdated()
  },
  doToggleMobileGraphsMenu: () => ({ dispatch }) =>
    dispatch({ type: 'TOGGLE_MOBILE_GRAPHS_MENU' }),
  doToggleMobileLeversMenu: () => ({ dispatch }) =>
    dispatch({ type: 'TOGGLE_MOBILE_LEVERS_MENU' }),
  doToggleLeverGroup: leverGroup => ({ dispatch }) =>
    dispatch({ type: 'TOGGLE_LEVER_GROUP', payload: leverGroup }),
  doOnBoardingNextStep: () => ({ dispatch }) =>
    dispatch({ type: 'ONBOARDING_NEXT_STEP' }),
  doOnBoardingPreviousStep: () => ({ dispatch }) =>
    dispatch({ type: 'ONBOARDING_PREVIOUS_STEP' }),
  doOnBoardingOpen: () => ({ dispatch }) =>
    dispatch({ type: 'ONBOARDING_OPEN' }),
  doOnBoardingClose: () => ({ dispatch }) =>
    dispatch({ type: 'ONBOARDING_CLOSE' }),
  doInfoModalOpen: lever => ({ dispatch }) =>
    dispatch({ type: 'INFO_MODAL_OPEN', payload: lever }),
  doInfoModalClose: () => ({ dispatch }) =>
    dispatch({ type: 'INFO_MODAL_CLOSE' })
}

const reactors = {}

const init = store => {
  store.dispatch({ type: 'WINDOW_RESIZE_WIDTH', payload: window.innerWidth })
  window.addEventListener(
    'resize',
    debounce(e => {
      const width = e.target.innerWidth
      store.dispatch({ type: 'WINDOW_RESIZE_WIDTH', payload: width })
    }),
    100
  )
}

export default {
  name,
  reducer,
  ...selectors,
  ...actionCreators,
  ...reactors,
  init
}
