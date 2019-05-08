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
import upperHutt from '../assets/images/upper-hutt.png'
import masterton from '../assets/images/masterton.png'
import kapitiCoast from '../assets/images/kapiti-coast.png'
import southWairarapa from '../assets/images/south-wairarapa.png'
import huttCity from '../assets/images/hutt-city.png'
import carterton from '../assets/images/carterton.png'
import porirua from '../assets/images/porirua.png'
import greaterWellington from '../assets/images/greater-wellington.png'
import bambooLogoWhite from '../assets/images/Bamboo-logo-white.png'
import enspiral from '../assets/images/enspiral.png'

const Landing = props => {
  return (
    <Flex flexDirection={'column'} width={'100%'} alignItems={'center'}>
      <Flex
        flexDirection={'column'}
        width={'100%'}
        px={[40, 200]}
        css={{ maxWidth: '1360px' }}
      >
        <Navbar />

        <Flex flexDirection={'row'} py={60}>
          <Flex flexDirection={'column'} width={'50%'}>
            <Heading fontSize={18} mb={10}>
              A.
            </Heading>
            <Heading fontSize={25}>Electrify 100% of light vehicles</Heading>
          </Flex>
          <Flex flexDirection={'column'} width={'50%'}>
            <Heading fontSize={18} mb={10}>
              B.
            </Heading>
            <Heading fontSize={25}>Convert 15% of all land to forestry</Heading>
          </Flex>
        </Flex>

        <TextRegular color={'black'} fontSize={18}>
          What choices will see the biggest reduction in the Wellington Region’s
          emissions? What do we need to do in order to meet emissions targets?
          The Wellington Region 2050 Emissions Calculator lets you model changes
          within the Greater Wellington Region in order to forecast our future
          emissions.
        </TextRegular>
        <Flex flexDirection={'row'} alignItems={'center'} py={20}>
          <Link href={'/calculator'}>
            <Button
              variant={'landingGreen'}
              mr={15}
              css={{ minHeight: '50px' }}
            >
              <TextRegular fontFamily={'bold'} fontSize={16} color={'white'}>
                Launch the Calculator
              </TextRegular>
            </Button>
          </Link>
          <Link href={'/data'}>
            <Button
              variant={'landingGray'}
              mr={15}
              css={{ minHeight: '50px', minWidth: '140px' }}
            >
              <TextRegular
                fontFamily={'bold'}
                fontSize={16}
                color={'background'}
              >
                Learn More
              </TextRegular>
            </Button>
          </Link>
        </Flex>

        <Image src={landingGraph} width={'1408px'} />

        <Flex flexDirection={'column'} alignItems={'center'}>
          <Text
            fontFamily={'black'}
            fontSize={14}
            mb={10}
            pt={35}
            css={{ opacity: 0.2 }}
          >
            A COLLABORATION BETWEEN
          </Text>
          <Flex
            flexDirection={['column', 'row']}
            justifyContent={'center'}
            alignItems={'center'}
            width={'100%'}
            py={20}
          >
            <Link href={'http://www.gw.govt.nz/'} target='_blank'>
              <Image src={gwrcLogo} px={[0, 30]} py={[30, 0]} />
            </Link>
            <Link href={'https://bamboocreative.nz/'} target='_blank'>
              <Image src={bambooLogo} px={[0, 30]} py={[30, 0]} />
            </Link>
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
            The New Zealand Government has stated its ambition to reduce
            emissions to{' '}
            <Text fontFamily={'bold'} css={{ display: 'inline' }}>
              net zero by 2050.
            </Text>{' '}
            By achieving this target, we will fulfil our obligations as set out
            in the Paris Agreement, of which New Zealand is a signatory. But in
            order to meet get to net zero by 2050, we need to be bold, we need
            to work together and we need to start now.<br />
            <br />
            Government, businesses, communities and individuals all need to play
            their part in order to make this happen but in order to get there,
            we need to understand where we’re at and the opportunities in front
            of us.<br />
            <br />
            This tool ebnables you to model our emissions future by adjusting
            key levers relating to energy supply & demand, transport, land use &
            agrciulture and more. By adjusting these levers (which have varying
            levels of ambition) we’re able to see effect this would have on the
            total emissions of the Greater Wellington region and the individual
            territorial authorities.<br />
            <br />
            Once we understand what we can do, we can work seriously towards the
            policies and actions needed to make these changes happen.
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
            To read more about the assumptions made by this calculator, click
            the button below to go to the data page.
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
          <Flex
            my={90}
            flexDirection={'row'}
            flexWrap={'wrap'}
            alignItems={'center'}
            justifyContent={'center'}
          >
            <Link
              href={'https://upperhuttcity.com/'}
              target='_blank'
              mr={50}
              mb={50}
              ml={[50, 0]}
            >
              <Image src={upperHutt} />
            </Link>
            <Link
              href={'https://mstn.govt.nz/'}
              target='_blank'
              mr={50}
              mb={50}
              ml={[50, 0]}
            >
              <Image src={masterton} />
            </Link>
            <Link
              href={'https://www.kapiticoast.govt.nz/'}
              target='_blank'
              mr={50}
              mb={50}
              ml={[50, 0]}
            >
              <Image src={kapitiCoast} />
            </Link>
            <Link
              href={'https://www.swdc.govt.nz/'}
              target='_blank'
              mr={50}
              mb={50}
              ml={[50, 0]}
            >
              <Image src={southWairarapa} />
            </Link>
            <Link
              href={'http://www.huttcity.govt.nz/'}
              target='_blank'
              mr={50}
              mb={50}
              ml={[50, 0]}
            >
              <Image src={huttCity} />
            </Link>
            <Link
              href={'http://cdc.govt.nz/'}
              target='_blank'
              mr={50}
              mb={50}
              ml={[50, 0]}
            >
              <Image src={carterton} />
            </Link>
            <Link
              href={'https://poriruacity.govt.nz/'}
              target='_blank'
              mr={50}
              mb={50}
              ml={[50, 0]}
            >
              <Image src={porirua} />
            </Link>
            <Link
              href={'http://www.gw.govt.nz/'}
              target='_blank'
              mr={50}
              mb={50}
              ml={[50, 0]}
            >
              <Image src={greaterWellington} />
            </Link>
          </Flex>
          <Text fontFamily={'black'} color={'white'} fontSize={14}>
            BROUGHT TO YOU BY:
          </Text>
          <Flex flexDirection={'row'} alignItems={'center'}>
            <Link href={'https://bamboocreative.nz/'} target='_blank'>
              <Image src={bambooLogoWhite} mr={50} />
            </Link>
            <Link href={'https://enspiral.com/'} target='_blank'>
              <Image src={enspiral} mr={50} />
            </Link>
          </Flex>
        </Box>
      </Flex>
    </Flex>
  )
}

export default connect(Landing)
