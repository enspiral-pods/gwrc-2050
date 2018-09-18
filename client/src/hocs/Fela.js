import React from 'react'
import { Component } from 'react'
import { createRenderer } from 'fela'
import webPreset from 'fela-preset-web'
import { Provider } from 'react-fela'
import PropTypes from 'prop-types'

let renderer = createRenderer({
  plugins: [
    ...webPreset
  ]
})

export default class Fela extends Component {
  static contextTypes = {
    renderer: PropTypes.object
  }

  render () {
    if (this.context.renderer) {
      return this.props.children
    }

    renderer = this.props.renderer || renderer

    renderer.renderStatic({ boxSizing: 'border-box' }, '*')
    renderer.renderStatic(
      {
        width: '100%',
        height: '100%',
        margin: 0,
        padding: 0
      },
      'html,body,#root'
    )

    return (
      <Provider renderer={renderer}>
        {this.props.children}
      </Provider>
    )
  }
}
