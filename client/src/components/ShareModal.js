import React from 'react'
import ReactModal from 'react-modal'
import { connect } from 'redux-bundler-react'
import { Flex, Button, Box, Heading } from 'rebass'

import TextRegular from './TextRegular'

const ShareModal = ({
  isShareModalOpen,
  doCloseShareModal,
  doCopyShareLink,
  isShareModalLinkCopying,
  didShareModalLinkCopySuccessfully,
  leverUrlObject
}) => {
  const copyText = isShareModalLinkCopying
    ? 'Copying...'
    : didShareModalLinkCopySuccessfully ? 'Copied!' : 'Copy Link'
  return (
    <ReactModal
      isOpen={isShareModalOpen}
      onRequestClose={doCloseShareModal}
      shouldCloseOnOverlayClick
      style={{
        content: {
          top: '50%',
          left: '0px',
          right: '0px',
          marginLeft: 'auto',
          marginRight: 'auto',
          transform: 'translate(0, -50%)',
          maxWidth: '513px',
          maxHeight: '410px',
          border: '1px solid #ccc',
          background: '#fff',
          overflow: 'auto',
          WebkitOverflowScrolling: 'touch',
          borderRadius: '4px',
          outline: 'none',
          padding: '20px'
        }
      }}
    >
      <Flex
        flexDirection={'column'}
        width={'100%'}
        css={{ height: '100%' }}
        p={20}
        justifyContent={'space-between'}
        alignItems={'center'}
      >
        <Heading color={'black'} fontSize={20} py={'5px'}>
          Share you Scenario
        </Heading>
        <TextRegular color={'black'} fontSize={[16, 18]}>
          Copy the custom link (below) to share your 2050 emissions scenario or
          use the buttons to share directly via email or social media.
        </TextRegular>
        <Flex flexDirection={'row'} width={'100%'}>
          <Box
            py={2}
            px={2}
            css={{
              flex: 0.8,
              maxHeight: '50px',
              alignItems: 'flex-start',
              border: '2px solid #E8E8E8',
              overflowX: 'scroll',
              whiteSpace: 'nowrap'
            }}
          >
            <TextRegular id={'shared-link'} fontSize={16} color={'black'}>
              {`${window.location.origin}/share?${leverUrlObject}`}
            </TextRegular>
          </Box>
          <Button
            variant={'landingGreen'}
            css={{
              cursor: 'pointer',
              maxHeight: '50px',
              flex: 0.2
            }}
            onClick={doCopyShareLink}
            p={1}
            fontSize={13}
          >
            {copyText}
          </Button>
        </Flex>
      </Flex>
    </ReactModal>
  )
}

export default connect(
  'selectIsShareModalOpen',
  'doCloseShareModal',
  'doCopyShareLink',
  'selectIsShareModalLinkCopying',
  'selectDidShareModalLinkCopySuccessfully',
  'selectLeverUrlObject',
  ShareModal
)
