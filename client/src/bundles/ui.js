import { createSelector } from 'redux-bundler'
import debounce from 'lodash/debounce'
import concat from 'lodash/concat'

const name = 'ui'

const initialState = {
  selectedTerritorialAuthority: 'greater_wellington',
  isMobileGraphsMenuOpen: false,
  isMobileLeversMenuOpen: false,
  isLeverGroupOpen: false,
  selectedLeverGroup: null,
  windowWidth: null,
<<<<<<< HEAD
  isOnboardingOpen: true,
  onBoardingCurrentStep: 0,
  isInfoModalOpen: false,
  infoModalLever: null,
  isShareModalLinkCopying: false,
  didShareModalLinkCopySuccessfully: null,
  isShareModalOpen: false
=======
  hoveredSankeyData: null
>>>>>>> add hover states to the sankey
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

  if (action.type === 'SHARE_OPEN') {
    return Object.assign({}, state, { isShareModalOpen: true })
  }
  if (action.type === 'SHARE_CLOSE') {
    return Object.assign({}, state, {
      isShareModalOpen: false,
      didShareModalLinkCopySuccessfully: null
    })
  }
  if (action.type === 'SHARE_LINK_COPY_START') {
    return Object.assign({}, state, { isShareModalLinkCopying: true })
  }
  if (action.type === 'SHARE_LINK_COPY_SUCCESS') {
    return Object.assign({}, state, {
      isShareModalLinkCopying: false,
      didShareModalLinkCopySuccessfully: true
    })
  }
  if (action.type === 'SHARE_LINK_COPY_ERROR') {
    return Object.assign({}, state, {
      isShareModalLinkCopying: false,
      didShareModalLinkCopySuccessfully: false
    })
  if (action.type === 'SANKEY_DATA_HOVER') {
    return { ...state, hoveredSankeyData: action.payload }
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
  selectIsInfoModalOpen: state => state.ui.isInfoModalOpen,
  selectIsShareModalOpen: state => state.ui.isShareModalOpen,
  selectIsShareModalLinkCopying: state => state.ui.isShareModalLinkCopying,
  selectDidShareModalLinkCopySuccessfully: state =>
    state.ui.didShareModalLinkCopySuccessfully,
  selectHoveredSankeyData: state => state.ui.hoveredSankeyData,
  selectSankeyDataToHighlight: createSelector(
    'selectHoveredSankeyData',
    'selectSankeyDataNodes',
    'selectSankeyDataLinks',
    (hovered, nodes, links) => {
      if (!hovered) return null
      if (hovered.type === 'node') {
        const primaryNode = nodes[hovered.index]
        const highlightedLinksIndicies = concat(
          primaryNode.sourceLinks,
          primaryNode.targetLinks
        ).map(l => l.index)
        const linkedNodesIndicies = concat(
          primaryNode.sourceLinks.map(l => l.target.index),
          primaryNode.targetLinks.map(l => l.source.index)
        )
        const highlightedNodesIndicies = concat(
          linkedNodesIndicies,
          primaryNode.index
        )

        return {
          nodes: highlightedNodesIndicies,
          links: highlightedLinksIndicies
        }
      } else {
        const primaryLink = links[hovered.index]
        const highlightedNodesIndicies = [
          primaryLink.source.index,
          primaryLink.target.index
        ]
        const highlightedLinksIndicies = [primaryLink.index]

        return {
          nodes: highlightedNodesIndicies,
          links: highlightedLinksIndicies
        }
      }
    }
  )
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
    dispatch({ type: 'INFO_MODAL_CLOSE' }),
  doOpenShareModal: () => ({ dispatch }) => dispatch({ type: 'SHARE_OPEN' }),
  doCloseShareModal: () => ({ dispatch }) => dispatch({ type: 'SHARE_CLOSE' }),
  doCopyShareLink: () => ({ dispatch }) => {
    dispatch({ type: 'SHARE_LINK_COPY_START' })
    const linkEl = document.getElementById('shared-link')
    const range = document.createRange()
    const selection = window.getSelection()
    range.selectNodeContents(linkEl)
    selection.removeAllRanges()
    selection.addRange(range)

    try {
      const success = document.execCommand('copy')
      if (success) {
        dispatch({ type: 'SHARE_LINK_COPY_SUCCESS' })
      }
    } catch (e) {
      dispatch({ type: 'SHARE_LINK_COPY_ERROR' })
    }
  },
  doHoverSankeyData: data => ({ dispatch }) =>
    dispatch({ type: 'SANKEY_DATA_HOVER', payload: data })
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
