import React from 'react'
import ReactModal from 'react-modal'
import { connect } from 'redux-bundler-react'

const ShareModal = ({
  isShareModalOpen,
  doCloseShareModal,
  isCreatingSharedLinkToken,
  sharedLink,
  doCopyShareLink,
  isShareModalLinkCopying,
  didShareModalLinkCopySuccessfully
}) => {
  const linkContent = isCreatingSharedLinkToken ? 'Loading...' : sharedLink
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
      <Paragraph id={'shared-link'} fontSize={14}>
        {linkContent}
      </Paragraph>
    </ReactModal>
  )
}

export default connect(
  'selectIsShareModalOpen',
  'doCloseShareModal',
  'selectIsCreatingSharedLinkToken',
  'selectSharedLink',
  'doCopyShareLink',
  'selectIsShareModalLinkCopying',
  'selectDidShareModalLinkCopySuccessfully',
  ShareModal
)
