import React from 'react'
import ReactModal from 'react-modal'
import { connect } from 'redux-bundler-react'
import { Flex, Button, Box, Heading, Image, Text, Link } from 'rebass'

import TextRegular from './TextRegular'
import FlexWithExtras from './FlexWithExtras'

import twitterLogo from '../assets/images/twitter.png'
import facebookLogo from '../assets/images/facebook.png'
import linkedinLogo from '../assets/images/linkedin.png'
import emailLogo from '../assets/images/email.png'

const ShareModal = ({
  isShareModalOpen,
  doCloseShareModal,
  doCopyShareLink,
  isShareModalLinkCopying,
  didShareModalLinkCopySuccessfully,
  leverString
}) => {
  const copyText = isShareModalLinkCopying
    ? 'Copying...'
    : didShareModalLinkCopySuccessfully ? 'Copied!' : 'Copy Link'
  const encodedUrl = encodeURIComponent(
    `${window.location.origin}/share/${leverString}`
  )
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
        p={20}
        alignItems={'center'}
      >
        <Heading color={'black'} fontSize={22} pt={'5px'} pb={20}>
          Share your Scenario
        </Heading>
        <TextRegular
          color={'black'}
          fontSize={16}
          py={'5px'}
          textAlign={'center'}
        >
          Copy this custom link to share your 2050 emissions scenario or use the
          buttons to share directly via email or social media.
        </TextRegular>
        <TextRegular
          color={'black'}
          fontSize={16}
          py={'5px'}
          textAlign={'center'}
        >
          What will it take to make your scenario a reality?
        </TextRegular>
        <Flex flexDirection={'row'} width={'100%'} my={20}>
          <Box
            py={2}
            px={2}
            bg={'#F4F4F4'}
            css={{
              maxHeight: '60px',
              alignItems: 'flex-start',
              border: '2px solid #E8E8E8',
              overflowX: 'hidden',
              whiteSpace: 'nowrap'
            }}
          >
            <TextRegular id={'shared-link'} fontSize={14} color={'black'}>
              {`${window.location.origin}/share/${leverString}`}
            </TextRegular>
          </Box>
          <Button
            variant={'landingGreen'}
            css={{
              cursor: 'pointer',
              maxHeight: '60px',
              whiteSpace: 'nowrap'
            }}
            onClick={doCopyShareLink}
            p={1}
            fontSize={13}
          >
            <TextRegular fontSize={14}>{copyText}</TextRegular>
          </Button>
        </Flex>
        <Flex flexDirection={'column'}>
          <Text
            fontFamily={'black'}
            fontSize={12}
            letterSpacing={'2px'}
            color={'#262D33'}
            mb={10}
            css={{ opacity: 0.5 }}
          >
            SOCIAL SHARING
          </Text>
          <Flex flexDirection={'row'} flexWrap={'wrap'}>
            <Link
              href={`https://twitter.com/share?url=${encodedUrl}`}
              target='_blank'
              flex={1}
              css={{ textDecoration: 'none', minWidth: '200px' }}
            >
              <FlexWithExtras
                alignItems={'center'}
                height={45}
                px={10}
                mr={10}
                mb={10}
                bg={'#38A1F3'}
                css={{
                  borderRadius: '3px',
                  cursor: 'pointer',
                  ':hover': { opacity: 0.7 }
                }}
              >
                <Image src={twitterLogo} width={26} height={26} mr={15} />
                <TextRegular fontSize={14} color={'white'}>
                  Share on Twitter
                </TextRegular>
              </FlexWithExtras>
            </Link>
            <Link
              href={`https://facebook.com/`}
              target='_blank'
              flex={1}
              css={{ textDecoration: 'none', minWidth: '200px' }}
            >
              <FlexWithExtras
                alignItems={'center'}
                height={45}
                px={10}
                mr={10}
                mb={10}
                bg={'#4267B2'}
                css={{
                  borderRadius: '3px',
                  cursor: 'pointer',
                  ':hover': { opacity: 0.7 }
                }}
              >
                <Image src={facebookLogo} width={26} height={30} mr={15} />
                <TextRegular fontSize={14} color={'white'}>
                  Share on Facebook
                </TextRegular>
              </FlexWithExtras>
            </Link>
            <Link
              href={`mailto:?body=${encodedUrl}`}
              target='_blank'
              flex={1}
              css={{ textDecoration: 'none', minWidth: '200px' }}
            >
              <FlexWithExtras
                alignItems={'center'}
                height={45}
                px={10}
                mr={10}
                mb={10}
                bg={'#333333'}
                css={{
                  borderRadius: '3px',
                  cursor: 'pointer',
                  ':hover': { opacity: 0.7 }
                }}
              >
                <Image src={emailLogo} width={26} height={26} mr={15} />
                <TextRegular fontSize={14} color={'white'}>
                  Share via email
                </TextRegular>
              </FlexWithExtras>
            </Link>
            <Link
              href={`https://www.linkedin.com/shareArticle?mini=true&url=${encodedUrl}`}
              target='_blank'
              flex={1}
              css={{ textDecoration: 'none', minWidth: '200px' }}
            >
              <FlexWithExtras
                alignItems={'center'}
                height={45}
                px={10}
                mr={10}
                mb={10}
                bg={'#4B5E6F'}
                css={{
                  borderRadius: '3px',
                  cursor: 'pointer',
                  ':hover': { opacity: 0.7 }
                }}
              >
                <Image src={linkedinLogo} width={26} height={30} mr={15} />
                <TextRegular fontSize={14} color={'white'}>
                  Share on Linkedin
                </TextRegular>
              </FlexWithExtras>
            </Link>
          </Flex>
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
  'selectLeverString',
  ShareModal
)
