import {
  composeBundles,
  debugBundle,
  // createCacheBundle,
  createUrlBundle,
  asyncCountBundle
} from 'redux-bundler'
import routesBundle from '../routes'
import extraArgs from './extra-args'
import pathways from './pathways'
import ui from './ui'

export default composeBundles(
  routesBundle,
  asyncCountBundle,
  extraArgs,
  pathways,
  ui,
  createUrlBundle(),
  // createCacheBundle(cache.set),
  debugBundle
)
