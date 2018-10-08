const name = 'ui'

const initialState = {
  isMobileGraphsMenuOpen: false,
  isMobileLeversMenuOpen: false
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

  return state
}

const selectors = {
  selectIsMobileGraphsMenuOpen: state => state.ui.isMobileGraphsMenuOpen,
  selectIsMobileLeversMenuOpen: state => state.ui.isMobileLeversMenuOpen
}

const actionCreators = {
  doToggleMobileGraphsMenu: () => ({ dispatch }) =>
    dispatch({ type: 'TOGGLE_MOBILE_GRAPHS_MENU' }),
  doToggleMobileLeversMenu: () => ({ dispatch }) =>
    dispatch({ type: 'TOGGLE_MOBILE_LEVERS_MENU' })
}

const reactors = {}

export default {
  name,
  reducer,
  ...selectors,
  ...actionCreators,
  ...reactors
}
