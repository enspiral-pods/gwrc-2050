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

export default composeBundles(
  routesBundle,
  asyncCountBundle,
  extraArgs,
  pathways,
  createUrlBundle(),
  // createCacheBundle(cache.set),
  debugBundle
)
