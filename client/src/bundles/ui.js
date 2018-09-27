const name = 'ui'

const initialState = {
  isMobileGraphsMenuOpen: false
}
const reducer = (state = initialState, action) => {
  if (action.type === 'TOGGLE_MOBILE_GRAPHS_MENU') {
    return Object.assign({}, state, {
      isMobileGraphsMenuOpen: !state.isMobileGraphsMenuOpen
    })
  }

  if (action.type === 'URL_UPDATED') {
    return Object.assign({}, state, {
      isMobileGraphsMenuOpen: false
    })
  }

  return state
}

const selectors = {
  selectIsMobileGraphsMenuOpen: state => state.ui.isMobileGraphsMenuOpen
}

const actionCreators = {
  doToggleMobileGraphsMenu: () => ({ dispatch }) =>
    dispatch({ type: 'TOGGLE_MOBILE_GRAPHS_MENU' })
}

const reactors = {}

export default {
  name,
  reducer,
  ...selectors,
  ...actionCreators,
  ...reactors
}
