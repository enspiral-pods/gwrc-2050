import React from 'react'
import { connect } from 'redux-bundler-react'
import { Flex, Button, Image, Heading, Text, Link, Box } from 'rebass'

import Navbar from '../components/Navbar'
import TextMedium from '../components/TextMedium'
import TextRegular from '../components/TextRegular'

import landingGraph from '../assets/images/landing-graph.jpg'
import bambooLogo from '../assets/images/Bamboo-logo.png'
import gwrcLogo from '../assets/images/GRWC-logo.png'
import nz from '../assets/images/landing-nz.jpg'
import tas from '../assets/images/tas.png'
import bambooLogoWhite from '../assets/images/Bamboo-logo-white.png'
import enspiral from '../assets/images/enspiral.png'

const Landing = props => {
  return (
    <Flex flexDirection={'column'} width={'100%'} alignItems={'center'}>
      <Flex
        flexDirection={'column'}
        width={'100%'}
        px={[20, 200]}
        css={{ maxWidth: '1360px' }}
      >
        <Navbar />

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
          How much would you need to to do to hit climate targets? 2050
          Emissions Calculator lets you simulate changes to the economy in the
          Wellington Region to forecast our emissions leading up to 2050 to help
          you consider the challenges and opportunities in front of us.{' '}
        </TextRegular>
        <Flex flexDirection={'row'} alignItems={'center'} py={20}>
          <Link href={'/calculator'}>
            <Button variant={'landingGreen'} mr={15} css={{ height: '50px' }}>
              <TextRegular fontFamily={'bold'} fontSize={16} color={'white'}>
                Launch the Calculator
              </TextRegular>
            </Button>
          </Link>
          <Button
            variant={'landingGray'}
            mr={15}
            css={{ height: '50px', minWidth: '140px' }}
          >
            <TextRegular fontFamily={'bold'} fontSize={16} color={'background'}>
              Learn More
            </TextRegular>
          </Button>
        </Flex>

        <Image src={landingGraph} />

        <Flex flexDirection={'column'} alignItems={'center'}>
          <Text
            fontFamily={'black'}
            fontSize={14}
            mb={10}
            css={{ opacity: 0.2 }}
          >
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

        <Flex flexDirection={'column'} py={80}>
          <Heading fontSize={25} mb={20}>
            Our Challenge
          </Heading>
          <TextRegular
            color={'black'}
            fontSize={18}
            css={{ whiteSpace: 'pre-line' }}
          >
            {`The New Zealand Government has stated its ambition to reduce emissions to become net zero by 2050.  By achieving this target, we would fulfil our contribution to achieving the goal of the Paris Agreement, becoming part of the climate solution rather than part of the climate problem. But changes need to start happening today to get there.

            Everyone, from central, regional and local government, businesses, community groups and individuals, needs to play their part. This tool lets you take control and make your own choices for things like where we get out energy, how we get about and what land is used for, and then see what effect this would have on the emissions of the region and individual districts.

            When we understand what needs to change in practice, we can talk seriously about the policies that  could be used to make these changes happen.`}
          </TextRegular>
        </Flex>
      </Flex>

      <Flex
        flexDirection={'column'}
        alignItems={'center'}
        width={'100%'}
        px={[20, 200]}
        py={60}
        css={{
          backgroundImage: `url(${nz})`,
          backgroundSize: 'cover',
          backgroundPosition: 'center'
        }}
      >
        <Box width={'100%'} css={{ maxWidth: '960px' }}>
          <Heading color={'white'} mt={50} mb={20}>
            The Data
          </Heading>
          <TextRegular color={'white'} fontSize={18}>
            The Wellington Region 2050 Emissions Calculator also draws upon
            data, modelling and input from government and research entities at
            various levels of scope ranging from local to regional to national.
            To read more about the assumptions made by this calculator here.{' '}
          </TextRegular>
          <Link href={'/data'}>
            <Button
              variant={'landingTransparent'}
              my={30}
              width={140}
              css={{ height: '50px' }}
            >
              <TextRegular fontFamily={'bold'} fontSize={16} color={'white'}>
                Read more
              </TextRegular>
            </Button>
          </Link>
          <Image my={90} src={tas} />
          <Text fontFamily={'black'} color={'white'} fontSize={14}>
            BROUGHT TO YOU BY:
          </Text>
          <Flex flexDirection={'row'} alignItems={'center'}>
            <Image src={bambooLogoWhite} pr={30} />
            <Image src={enspiral} pr={30} />
          </Flex>
        </Box>
      </Flex>
    </Flex>
  )
}

export default connect(Landing)
