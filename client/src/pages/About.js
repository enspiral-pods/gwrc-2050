import React from 'react'
import { connect } from 'redux-bundler-react'
import { Box, Flex, Button, Image, Heading, Text, Link } from 'rebass'

import Navbar from '../components/Navbar'
import TextMedium from '../components/TextMedium'
import TextRegular from '../components/TextRegular'

import map from '../assets/images/map.svg'

const About = props => {
  return (
    <Flex flexDirection={'column'} width={'100%'}>
      <Flex flexDirection={'column'} width={'100%'} px={[40, 200]}>
        <Navbar />

        <Box mt={60}>
          <Heading fontSize={30} mb={20}>
            How does the Calculator work?
          </Heading>

          <TextRegular
            color={'black'}
            fontSize={18}
            css={{ whiteSpace: 'pre-line' }}
          >
            {`The Calculator works out how greenhouse gas emissions in the Wellington region will be affected by changes in:

              - activities (such as the mode and amount of travel)
              - technologies and fuels (such as switching to electric vehicles or wood boilers)
              - emissions factors (such as methane emissions per dairy cow)

            It uses a 'bottom-up' model that covers all emitting sectors and captures key linkages between them (for example, the level of agriculture and forestry activity is linked to demand for electricity and diesel, as well as potential supply of biofuels). The Calculator relies on a large number of assumptions about potential future changes, most of which the user controls through the dashboard of levers.`}
          </TextRegular>
        </Box>

        <Box mt={60}>
          <Heading fontSize={30} mb={20}>
            About the Calculator
          </Heading>

          <TextRegular
            color={'black'}
            fontSize={18}
            css={{ whiteSpace: 'pre-line', marginBottom: '16px' }}
          >
            {`The model is based on the Open Source tool originally created for the United Kingdom by the Department of Energy & Climate Change in 2008. The open source code and assumptions for the UK model are available `}
            <Link
              href='https://github.com/decc/twenty-fifty'
              target='_blank'
            >{`here.`}</Link>
          </TextRegular>
          <TextRegular
            color={'black'}
            fontSize={18}
            css={{ whiteSpace: 'pre-line' }}
          >
            {`The Wellington Region 2050 Emissions Calculator has been redesigned with a more user-friendly interface allowing people to access it via mobile devices. It draws upon emissions data and modelling from government, commercial and research entities at the local, regional and national level. To read more about the assumptions made and data sources used by this calculator click `}
            <Link href='/data'>{`here.`}</Link>
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
            {`We need to rapidly reduce our emissions of greenhouse gases to prevent the worst effects of climate change. The Paris Agreement, which NZ is a signatory of, agrees the whole world must achieve net-zero emissions by the second half of this century, if not sooner.  This calculator allows us to adjust the future 'settings' of the Wellington Region and the technologies and changes that support those, to see what effect these have on our emissions out to 2050.`}
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
            {`The ‘levers’ model aspects of supply and demand that users can adjust. Each lever (actually a slider) has up to four positions. The further the slider is set to the right, the larger the change is compared to the present  ‘business as usual’ trajectory we are on, and the larger the resulting emissions reduction is. These levers and their specific impact are determined by the state of other levers. For example, if by 2050, 100% of passenger land transport is electric vehicles, but the energy mix of the National grid is similar to current levels, then total reduction in emissions from Passenger Land Transport won't be as great, as a proportion of the National grid electricity supply will still be from non-renewable sources.`}
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
            {`Each level of each lever has an explanation of what change is being made. This explanation appears when you interact with the lever. Levers can be moved in aggregate to rapidly make adjustments, but can also be adjusted individually by clicking the small arrow beside the group’s name to show the full suite of options.`}
          </TextRegular>
        </Box>

        <Box my={60}>
          <Heading fontSize={30} mb={20}>
            Related links & tools
          </Heading>

          <TextRegular
            color={'black'}
            fontSize={18}
            css={{ whiteSpace: 'pre-line', marginBottom: '10px' }}
          >
            {`- The model is based on an open source tool originally created for the United Kingdom by the Department of Energy & Climate Change (DECC) in 2008. The open source code and assumptions for the UK model are available `}
            <Link
              href='https://github.com/decc/twenty-fifty'
              target='_blank'
            >{`here.`}</Link>
          </TextRegular>
          <TextRegular
            color={'black'}
            fontSize={18}
            css={{ whiteSpace: 'pre-line', marginBottom: '10px' }}
          >
            <Link
              href='https://www.futurefit.nz/'
              target='_blank'
            >{`- FutureFit`}</Link>
            {` - FutureFit provides a snapshot of your impact on the planet and helps you make some really positive changes in the way you live to help reduce your footprint. FutureFit is a collaboration between Wellington City Council and Auckland Council.`}
          </TextRegular>
          <TextRegular
            color={'black'}
            fontSize={18}
            css={{ whiteSpace: 'pre-line', marginBottom: '10px' }}
          >
            <Link
              href='https://emissionstracker.mfe.govt.nz/'
              target='_blank'
            >{`- Emissions Tracker tool`}</Link>
            {` - These graphs and tables summarise the data from `}
            <Link
              href='https://www.mfe.govt.nz/climate-change/state-of-our-atmosphere-and-climate/new-zealands-greenhouse-gas-inventory'
              target='_blank'
            >{`New Zealand's Greenhouse Gas Inventory.`}</Link>
            {` New Zealand's Greenhouse Gas Inventory is the official annual report of human-cause greenhouse gas emissions in New Zealand. This tool shows the data from the latest Inventory report.`}
          </TextRegular>
        </Box>
      </Flex>
    </Flex>
  )
}

export default connect(About)
