import React from 'react'
import { Flex } from 'rebass/emotion'
import styled from 'react-emotion'
import { display } from 'styled-system'

const MobileFlex = styled(Flex)(display)

export default props => <MobileFlex display={['flex', 'none']} {...props} />
