import debounce from 'lodash/debounce'

const name = 'ui'

const initialState = {
  isMobileGraphsMenuOpen: false,
  isMobileLeversMenuOpen: false,
  windowWidth: null
}
const reducer = (state = initialState, action) => {
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
  selectIsMobileGraphsMenuOpen: state => state.ui.isMobileGraphsMenuOpen,
  selectIsMobileLeversMenuOpen: state => state.ui.isMobileLeversMenuOpen,
  selectWindowWidth: state => state.ui.windowWidth,
  selectIsMobileUI: state => state.ui.windowWidth < 800
}

const actionCreators = {
  doToggleMobileGraphsMenu: () => ({ dispatch }) =>
    dispatch({ type: 'TOGGLE_MOBILE_GRAPHS_MENU' }),
  doToggleMobileLeversMenu: () => ({ dispatch }) =>
    dispatch({ type: 'TOGGLE_MOBILE_LEVERS_MENU' })
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
