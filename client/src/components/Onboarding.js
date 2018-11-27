import React from 'react'
import { connect } from 'redux-bundler-react'
import { Flex, Button } from 'rebass'
import ReactModal from 'react-modal'

import TextRegular from '../components/TextRegular'

const Onboarding = props => {
  const {
    isOnboardingOpen,
    steps,
    currentStep,
    onNext,
    onBack,
    onClose
  } = props
  const lastStep = currentStep === steps.length - 1
  return (
    <ReactModal isOpen={isOnboardingOpen} onRequestClose={onClose}>
      <Flex flexDirection={'column'} width={'100%'} px={200}>
        <Flex flexDirection={'column'} width={'100%'}>
          {steps[currentStep]}
        </Flex>
        <Flex flexDirection={'row'} width={'100%'}>
          <Button
            variant={'landingGray'}
            mr={15}
            css={{ height: '50px' }}
            onClick={onBack}
          >
            {/* TODO: remove button when no step to go back to */}
            <TextRegular fontFamily={'bold'} fontSize={16} color={'background'}>
              Back
            </TextRegular>
          </Button>
          {steps.map(element => <span>o</span>)}
          <Button
            variant={'landingGreen'}
            mr={15}
            css={{ height: '50px' }}
            onClick={lastStep ? onClose : onNext}
          >
            <TextRegular fontFamily={'bold'} fontSize={16} color={'white'}>
              {lastStep ? 'Finish' : 'Next'}
            </TextRegular>
          </Button>
        </Flex>
      </Flex>
    </ReactModal>
  )
}

export default connect(Onboarding)
