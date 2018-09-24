import React from 'react'

import FlexWithExtras from './FlexWithExtras'

export default props => {
  const { mobileDisplay, desktopWidth } = props
  return (
    <FlexWithExtras
      flexDirection={'column'}
      position={['absolute', 'static']}
      display={[mobileDisplay, 'flex']}
      width={['100%', desktopWidth]}
      top={0}
      left={0}
      right={0}
      bottom={0}
      zIndex={100}
      {...props}
    />
  )
}
