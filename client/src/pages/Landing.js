import React from 'react'
import { connect } from 'redux-bundler-react'
import { Flex, Button, Image, Heading, Text } from 'rebass'

import Navbar from '../components/Navbar'
import TextMedium from '../components/TextMedium'
import TextRegular from '../components/TextRegular'

import landingGraph from '../assets/images/landing-graph.png'
import bambooLogo from '../assets/images/Bamboo-logo.png'
import gwrcLogo from '../assets/images/GRWC-logo.png'

const Landing = props => {
  return (
    <Flex flexDirection={'column'} width={'100%'} px={200}>
      <Flex
        flexDirection={'row'}
        justifyContent={'space-between'}
        width={'100%'}
        py={40}
      >
        <Flex flexDirection={'row'} alignItems={'center'}>
          <Image src={'https://via.placeholder.com/48'} />
          <TextMedium color={'black'} px={20}>
            Wellington Region 2050 Emissions Calculator
          </TextMedium>
        </Flex>
        <Flex flexDirection={'row'} alignItems={'center'}>
          <Button>About the data</Button>
          <Button>Launch</Button>
        </Flex>
      </Flex>

      <Flex flexDirection={'row'} py={60}>
        <Flex flexDirection={'column'} width={'50%'}>
          <Heading fontSize={18} mb={10}>
            A.
          </Heading>
          <Heading fontSize={25}>Electrify 100% of light vehicles?</Heading>
        </Flex>
        <Flex flexDirection={'column'} width={'50%'}>
          <Heading fontSize={18} mb={10}>
            B.
          </Heading>
          <Heading fontSize={25}>
            Convert all marginal land to native forestry?
          </Heading>
        </Flex>
      </Flex>

      <TextRegular color={'black'} fontSize={18}>
        What choices would reduce the emissions most in the Wellington Region?
        How much would you need to to do to hit climate targets? 2050 Emissions
        Calculator lets you simulate changes to the economy in the Wellington
        Region to forecast our emissions leading up to 2050 to help you consider
        the challenges and opportunities in front of us.{' '}
      </TextRegular>
      <Flex flexDirection={'row'} alignItems={'center'} py={20}>
        <Button mr={15}>Launch the Calculator</Button>
        <Button>Learn More</Button>
      </Flex>

      <Image src={landingGraph} />

      <Flex flexDirection={'column'} alignItems={'center'}>
        <Text fontFamily={'black'} fontSize={14} mb={10} css={{ opacity: 0.2 }}>
          A COLLABORATION BETWEEN
        </Text>
        <Flex
          flexDirection={'row'}
          justifyContent={'center'}
          alignItems={'center'}
          width={'100%'}
          py={20}
        >
          <Image src={gwrcLogo} px={30} />
          <Image src={bambooLogo} px={30} />
        </Flex>
      </Flex>
    </Flex>
  )
}

export default connect(Landing)
