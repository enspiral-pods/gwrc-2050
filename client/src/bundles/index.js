import {
  composeBundles,
  debugBundle,
  // createCacheBundle,
  createUrlBundle,
  asyncCountBundle
} from 'redux-bundler'
import routesBundle from '../routes'

export default composeBundles(
  routesBundle,
  asyncCountBundle,
  createUrlBundle(),
  // createCacheBundle(cache.set),
  debugBundle
)
