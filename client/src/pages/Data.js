import React from 'react'
import { connect } from 'redux-bundler-react'
import { Box, Flex, Button, Image, Heading, Text, Link } from 'rebass'

import Navbar from '../components/Navbar'
import TextMedium from '../components/TextMedium'
import TextRegular from '../components/TextRegular'

import map from '../assets/images/map.svg'

const Data = props => {
  return (
    <Flex flexDirection={'column'} width={'100%'}>
      <Flex flexDirection={'column'} width={'100%'} px={[40, 200]}>
        <Navbar />

        <Box mt={60}>
          <Heading fontSize={30} mb={20}>
            About the Calculator
          </Heading>

          <TextRegular
            color={'black'}
            fontSize={18}
            css={{ whiteSpace: 'pre-line' }}
          >
            {`The model is based on the Open Source tool originally created for the United Kingdom by the Department of Energy & Climate Change in 2008. The open source code and assumptions for the UK model are available here.
            
            The Wellington Region 2050 Emissions Calculator also draws upon data, modelling and input from government and research entities at various levels of scope ranging from local to regional to national. To read more about the assumptions made by this calculator here.`}
          </TextRegular>
        </Box>

        <Box mt={60}>
          <Heading fontSize={30} mb={20}>
            About the Model
          </Heading>

          <TextRegular
            color={'black'}
            fontSize={18}
            css={{ whiteSpace: 'pre-line' }}
          >
            {`We need to rapidly reduce our emissions of greenhouse gases to prevent the worst effects of climate change. The Paris Agreement which NZ is a party to says the whole world must have net-zero emissions by the second half of this century, if not sooner.  This calculator lets adjust the economy of the Wellington Region and the technologies that support it to see what effect this has on our emissions out to 2050.`}
          </TextRegular>
        </Box>

        <Image src={map} my={40} />

        <Box>
          <Heading fontSize={20} mb={20}>
            Levers
          </Heading>

          <TextRegular
            color={'black'}
            fontSize={18}
            css={{ whiteSpace: 'pre-line' }}
          >
            {`The ‘levers’ are the aspects of our economy in the Calculator that users can adjust. Each lever (actually a slider) has up to four positions. The further the slider is set to the right, the larger the change is compared to the present  ‘business as usual’ trajectory we are on, and the larger the resulting emissions reduction is. The effect of certain levers is related to where other levers are set. For example, if all transport is electricified, the emissions reduction from increasing renewable energy supply is larger, but the reduction in emissions from switching more car journeys to walking and public transport is reduced.`}
          </TextRegular>
        </Box>

        <Box mt={30}>
          <Heading fontSize={18} mb={18}>
            Supply
          </Heading>
          <Flex flexDirection={'row'} flexWrap={'wrap'}>
            <Flex
              flexDirection={'column'}
              bg={'lightBackground'}
              p={15}
              mr={15}
              mb={15}
              width={290}
            >
              <Heading fontSize={16} mb={'10px'}>
                Agriculture & Forestry
              </Heading>
              <TextRegular color={'black'} mb={'6px'}>
                Landuse change
              </TextRegular>
              <TextRegular color={'black'} mb={'6px'}>
                Forest type
              </TextRegular>
              <TextRegular color={'black'} mb={'6px'}>
                Livestock stocking rates
              </TextRegular>
              <TextRegular color={'black'} mb={'6px'}>
                Livestock emissions intensity - practice change
              </TextRegular>
              <TextRegular color={'black'} mb={'6px'}>
                Livestock emissions intensity - new tech
              </TextRegular>
            </Flex>
            <Flex
              flexDirection={'column'}
              bg={'lightBackground'}
              p={15}
              mr={15}
              mb={15}
              width={290}
            >
              <Heading fontSize={16} mb={'10px'}>
                Waste & BioFuels
              </Heading>
              <TextRegular color={'black'} mb={'6px'}>
                Waste volumes
              </TextRegular>
              <TextRegular color={'black'} mb={'6px'}>
                Landfill gas capture and Energy from Waste (EFW)
              </TextRegular>
              <TextRegular color={'black'} mb={'6px'}>
                Biofuel supply
              </TextRegular>
            </Flex>
            <Flex
              flexDirection={'column'}
              bg={'lightBackground'}
              p={15}
              mr={15}
              mb={15}
              width={290}
            >
              <Heading fontSize={16} mb={'10px'}>
                Electricity Supply
              </Heading>
              <TextRegular color={'black'} mb={'6px'}>
                Biogas power generation
              </TextRegular>
              <TextRegular color={'black'} mb={'6px'}>
                Solar panels for electricity
              </TextRegular>
              <TextRegular color={'black'} mb={'6px'}>
                Solar panels for hot water
              </TextRegular>
              <TextRegular color={'black'} mb={'6px'}>
                National grid electricity
              </TextRegular>
            </Flex>
          </Flex>
        </Box>

        <Box mt={30}>
          <Heading fontSize={18} mb={18}>
            Demand
          </Heading>
          <Flex flexDirection={'row'} flexWrap={'wrap'}>
            <Flex
              flexDirection={'column'}
              bg={'lightBackground'}
              p={15}
              mr={15}
              mb={15}
              width={290}
            >
              <Heading fontSize={16} mb={'10px'}>
                Transport (Light Vehicles)
              </Heading>
              <TextRegular color={'black'} mb={'6px'}>
                Travel demand
              </TextRegular>
              <TextRegular color={'black'} mb={'6px'}>
                Mode share
              </TextRegular>
              <TextRegular color={'black'} mb={'6px'}>
                Vehicle occupancy
              </TextRegular>
              <TextRegular color={'black'} mb={'6px'}>
                Electrification of light vehicles
              </TextRegular>
              <TextRegular color={'black'} mb={'6px'}>
                Electrification of public transport
              </TextRegular>
              <TextRegular color={'black'} mb={'6px'}>
                Vehicle fuel efficiencies
              </TextRegular>
            </Flex>
            <Flex
              flexDirection={'column'}
              bg={'lightBackground'}
              p={15}
              mr={15}
              mb={15}
              width={290}
            >
              <Heading fontSize={16} mb={'10px'}>
                Transport (Heavy Vehicles)
              </Heading>
              <TextRegular color={'black'} mb={'6px'}>
                Freight volumes
              </TextRegular>
              <TextRegular color={'black'} mb={'6px'}>
                Electrification of trucks
              </TextRegular>
              <TextRegular color={'black'} mb={'6px'}>
                Freight mode and efficiency
              </TextRegular>
              <TextRegular color={'black'} mb={'6px'}>
                Demand
              </TextRegular>
              <TextRegular color={'black'} mb={'6px'}>
                Efficiency
              </TextRegular>
              <TextRegular color={'black'} mb={'6px'}>
                National marine transport
              </TextRegular>
            </Flex>
            <Flex
              flexDirection={'column'}
              bg={'lightBackground'}
              p={15}
              mr={15}
              mb={15}
              width={290}
            >
              <Heading fontSize={16} mb={'10px'}>
                Industry
              </Heading>
              <TextRegular color={'black'} mb={'6px'}>
                Refrigerant gases
              </TextRegular>
              <TextRegular color={'black'} mb={'6px'}>
                Energy efficiency and fuel switching
              </TextRegular>
              <TextRegular color={'black'} mb={'6px'}>
                Refrigerant gases
              </TextRegular>
            </Flex>
            <Flex
              flexDirection={'column'}
              bg={'lightBackground'}
              p={15}
              mr={15}
              mb={15}
              width={290}
            >
              <Heading fontSize={16} mb={'10px'}>
                Buildings
              </Heading>
              <TextRegular color={'black'} mb={'6px'}>
                Home space & water heating demand
              </TextRegular>
              <TextRegular color={'black'} mb={'6px'}>
                Home heating technology
              </TextRegular>
              <TextRegular color={'black'} mb={'6px'}>
                Home lighting & appliances
              </TextRegular>
              <TextRegular color={'black'} mb={'6px'}>
                Electrification of home cooking
              </TextRegular>
              <TextRegular color={'black'} mb={'6px'}>
                Commercial space & water heating demand
              </TextRegular>
              <TextRegular color={'black'} mb={'6px'}>
                Commercial heating technology
              </TextRegular>
              <TextRegular color={'black'} mb={'6px'}>
                Commercial lighting & appliances
              </TextRegular>
              <TextRegular color={'black'} mb={'6px'}>
                Electrification of commercial cooking
              </TextRegular>
            </Flex>
          </Flex>
        </Box>

        <Box mt={40}>
          <TextRegular
            color={'black'}
            fontSize={18}
            css={{ whiteSpace: 'pre-line' }}
          >
            {`Each setting of each lever has an explanation of what change it is making within the emissions calculation which appears when you select it. Levers can be moved as a group to rapidly make adjustments, but you can also adjust them individually by clicking the small arrow beside the group’s name to show the full suite of options.`}
          </TextRegular>
        </Box>

        <Box my={60}>
          <Heading fontSize={30} mb={20}>
            Related links & tools
          </Heading>

          <TextRegular
            color={'black'}
            fontSize={18}
            css={{ whiteSpace: 'pre-line' }}
          >
            {`This project was partly based on the Open Souce project initiated by the Department of Energy & Climate Change in the UK.`}
          </TextRegular>
        </Box>
      </Flex>
    </Flex>
  )
}

export default connect(Data)
