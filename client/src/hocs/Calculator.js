import React from 'react'
import { connect } from 'redux-bundler-react'
import { Box, Flex, Button, Image, Heading } from 'rebass'

import TextMedium from '../components/TextMedium'
import FlexWithExtras from '../components/FlexWithExtras'
import GraphSelector from '../components/GraphSelector'
import Levers from '../components/Levers'

import leftArrow from '../assets/images/left-arrow.svg'
import upArrow from '../assets/images/up-arrow.svg'

const Layout = ({
  children,
  isMobileGraphsMenuOpen,
  doToggleMobileGraphsMenu,
  isMobileLeversMenuOpen,
  doToggleMobileLeversMenu
}) => {
  return (
    <Flex
      flexDirection={['column', 'row']}
      width={'100%'}
      justifyContent={'center'}
      css={{ minHeight: '100%' }}
    >
      <GraphSelector display={['none', 'flex']} />
      {isMobileGraphsMenuOpen ? (
        <GraphSelector
          display={['flex', 'none']}
          doToggleMobileGraphsMenu={doToggleMobileGraphsMenu}
        />
      ) : isMobileLeversMenuOpen ? (
        <Levers
          display={['flex', 'none']}
          doToggleMobileLeversMenu={doToggleMobileLeversMenu}
        />
      ) : (
        <Flex
          flexDirection={'column'}
          alignItems={'center'}
          width={'100%'}
          ml={[0, '256px']}
          mr={[0, '400px']}
          css={{ maxWidth: '1000px' }}
          p={15}
        >
          <FlexWithExtras display={['flex', 'none']} width={'100%'} mb={10}>
            <Button onClick={doToggleMobileGraphsMenu} variant={'nav'}>
              <Flex alignItems={'center'}>
                <Image src={leftArrow} height={24} width={24} />
                <Heading color={'white'} fontSize={14}>
                  {'Graphs'}
                </Heading>
              </Flex>
            </Button>
          </FlexWithExtras>
          {children}
          <FlexWithExtras display={['flex', 'none']} width={'100%'}>
            <Button
              onClick={doToggleMobileLeversMenu}
              bg={'darkFluroGreen'}
              width={'100%'}
            >
              <Flex justifyContent={'center'} alignItems={'center'}>
                <Image src={upArrow} height={24} width={24} mr={10} />
                <TextMedium fontSize={16}>{'Choose your actions'}</TextMedium>
              </Flex>
            </Button>
          </FlexWithExtras>
        </Flex>
      )}
      <Levers display={['none', 'flex']} />
    </Flex>
  )
}

export default connect(
  'selectIsMobileGraphsMenuOpen',
  'doToggleMobileGraphsMenu',
  'selectIsMobileLeversMenuOpen',
  'doToggleMobileLeversMenu',
  Layout
)
