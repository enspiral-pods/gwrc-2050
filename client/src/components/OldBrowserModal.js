import React from 'react'
import { connect } from 'redux-bundler-react'
import { Flex, Button, Image } from 'rebass'
import ReactModal from 'react-modal'

import TextRegular from '../components/TextRegular'

import oldComputer from '../assets/images/old-computer.png'

export default props => {
  const { isOpen, setModalOpenState } = props

  return (
    <ReactModal
      style={{
        content: {
          top: '20%',
          left: '0px',
          right: '0px',
          marginLeft: 'auto',
          marginRight: 'auto',
          maxWidth: '513px',
          maxHeight: '410px',
          overflow: 'auto',
          WebkitOverflowScrolling: 'touch',
          padding: '20px'
        }
      }}
      isOpen={isOpen}
      onRequestClose={() => {
        window.localStorage.GWRC_SEEN_OLD_BROWSER = true
        setModalOpenState(false)
      }}
      shouldCloseOnOverlayClick
    >
      <Flex flexDirection={'column'} alignItems='center' width={'100%'} p={20}>
        <Image width='181px' height='137px' src={oldComputer} mb={20} ml={30} />
        <TextRegular
          fontFamily='bold'
          color='black'
          textAlign='center'
          css={{ maxWidth: '100px' }}
        >
          This application has been optimised for Google Chrome and Firefox -
          for best results, open the calculator in those browsers.
        </TextRegular>
        <Button
          variant={'landingGreen'}
          mt={20}
          css={{ height: '50px' }}
          onClick={() => setModalOpenState(false)}
        >
          <TextRegular fontFamily={'bold'} fontSize={16} color={'white'}>
            'Go!'
          </TextRegular>
        </Button>
      </Flex>
    </ReactModal>
  )
}
