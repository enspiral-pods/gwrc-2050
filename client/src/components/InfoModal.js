import React from 'react'
import { connect } from 'redux-bundler-react'
import { Flex, Heading, Box } from 'rebass'
import ReactModal from 'react-modal'

import TextRegular from '../components/TextRegular'

const InfoModal = props => {
  const { isInfoModalOpen, onClose, infoModalLeverObject } = props

  if (infoModalLeverObject === null) return null

  return (
    <ReactModal
      style={{
        content: {
          top: '20%',
          left: '0px',
          right: '0px',
          marginLeft: 'auto',
          marginRight: 'auto',
          maxHeight: '500px',
          maxWidth: '1000px',
          overflow: 'auto',
          WebkitOverflowScrolling: 'touch',
          padding: '20px'
        }
      }}
      isOpen={isInfoModalOpen}
      onRequestClose={onClose}
      shouldCloseOnOverlayClick
    >
      <Flex flexDirection={['column', 'row']} width={'100%'} mx={20}>
        <Flex flexDirection={'column'} width={'100%'} alignItems={'center'}>
          <Heading fontSize={18} textAlign={'center'} pb={10}>
            {infoModalLeverObject.label}
          </Heading>
          {infoModalLeverObject.content}
        </Flex>
        <Flex flexDirection={'column'} width={'100%'}>
          {infoModalLeverObject.leverDescriptions.map((description, index) => {
            return (
              <Box p={10}>
                <Heading fontSize={18} mb={10}>
                  Level {index + 1}
                </Heading>
                <TextRegular color={'black'} fontSize={18}>
                  {description}
                </TextRegular>
              </Box>
            )
          })}
        </Flex>
      </Flex>
    </ReactModal>
  )
}

export default connect('selectInfoModalLeverObject', InfoModal)
