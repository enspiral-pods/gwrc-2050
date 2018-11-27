import debounce from 'lodash/debounce'

const name = 'ui'

const initialState = {
  selectedTerritorialAuthority: 'greater_wellington',
  isMobileGraphsMenuOpen: false,
  isMobileLeversMenuOpen: false,
  isLeverGroupOpen: false,
  selectedLeverGroup: null,
  windowWidth: null
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
  selectIsMobileUI: state => state.ui.windowWidth < 800
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
    dispatch({ type: 'TOGGLE_LEVER_GROUP', payload: leverGroup })
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
