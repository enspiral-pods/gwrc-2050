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
            How were the Wellington region’s current emissions estimated?
          </Heading>

          <TextRegular
            color={'black'}
            fontSize={18}
            css={{ whiteSpace: 'pre-line' }}
          >
            {`The Calculator is calibrated to regional greenhouse gas inventories produced for the 2012/13 and 2014/15 financial years. These inventories estimated the region’s greenhouse gas emissions in line with international emissions reporting guidelines. Emissions were calculated from a range of measured activity data (such as electricity consumption, fuel sales and livestock numbers) and estimates. The Calculator draws on these same data alongside a wide range of complementary data sources. Results align with the inventory estimates except where there are differences in accounting methods (such as forestry accounting rules) or updates to underlying data sources.

            For energy and road transport emissions, the inventories only provide data at an aggregated level (i.e. total consumption of electricity, natural gas, petrol and diesel). Where necessary, we have used other data sources and assumptions to disaggregate the inventory data into segments (such as household energy use and light vehicle transport). These disaggregated estimates are less reliable and should be treated as indicative.`}
          </TextRegular>
        </Box>

        <Box mt={60}>
          <Heading fontSize={30} mb={20}>
            How were emissions estimated for the territorial authorities?
          </Heading>

          <TextRegular
            color={'black'}
            fontSize={18}
            css={{ whiteSpace: 'pre-line' }}
          >
            {`Emissions at the territorial authority (TA) level are more uncertain than at the regional level and should be treated as indicative only.

            In some sectors (such as agriculture, forestry and waste), robust data are available for individual TAs. In other sectors (such as energy and transport) sub-regional data are not available or are subject to problems such as boundary issues. For these sectors, TA level emissions estimates are therefore more reliant on assumptions. For example, household and commercial energy demand are assumed proportional to the TA’s share of regional population and employment respectively.

            Future changes were largely assumed to be uniform across the TAs – such as travel patterns, electric vehicle uptake and household energy use. Exceptions to this include land use change, where regional changes were allocated according to current land use patterns, and landfill gas capture, where each landfill was considered separately.`}
          </TextRegular>
        </Box>

        <Box mt={60}>
          <Heading fontSize={30} mb={20}>
            How were the lever assumptions determined?
          </Heading>

          <TextRegular
            color={'black'}
            fontSize={18}
            css={{ whiteSpace: 'pre-line' }}
          >
            {`The Calculator is designed for exploring a range of plausible future pathways depending on choices and developments that happen over the next 30 years. Most levers can be varied between Level 1, representing the potential change in that variable with no effort to reduce emissions, and Level 4, representing the potential change with maximum effort to reduce emissions. Some levers can be varied between Options A to C or D, representing different choices that are not necessarily related to efforts to reduce emissions.

            Where possible, the lever assumptions have been set based on published reports and projections from credible New Zealand sources such as government agencies and research institutes. However, in many cases such data were either unavailable or outdated. In these cases, assumptions were set by informed judgement based on analysis of historical trends and underlying drivers. A list of data and information sources used is provided below. The evidence base on emissions reduction options for New Zealand is evolving rapidly, and several new pieces of analysis have been published since this version of the Calculator model was completed (for example, reports from the Government’s Biological Emissions Reference Group).`}
          </TextRegular>
        </Box>

        <Box mt={30}>
          <Heading fontSize={18} mb={18}>
            List of data and information sources
          </Heading>

          <Heading
            color={'black'}
            fontSize={18}
            mb={'8px'}
            mt={'14px'}
            css={{ whiteSpace: 'pre-line', fontStyle: 'italic' }}
          >
            {`Cross-cutting`}
          </Heading>
          <TextRegular
            color={'black'}
            fontSize={18}
            css={{ whiteSpace: 'pre-line' }}
          >
            {`URS New Zealand (2014), Greenhouse Gas Inventory for the Wellington Region
            AECOM (2016), Community Greenhouse Gas Inventory for Wellington City and the Greater Wellington Region 2000-2015
            StatsNZ, Subnational population and household projections`}
          </TextRegular>
          <Heading
            color={'black'}
            fontSize={18}
            mb={'8px'}
            mt={'14px'}
            css={{ whiteSpace: 'pre-line', fontStyle: 'italic' }}
          >
            {`Transport`}
          </Heading>
          <TextRegular
            color={'black'}
            fontSize={18}
            css={{ whiteSpace: 'pre-line' }}
          >
            {`MoT, Transport indicators (various)
            MoT, Future Demand
            MoT, New Zealand Household Travel Survey
            NZTA, Public Transport Performance Data
            MoT, New Zealand Vehicle Fleet Statistics
            MoT, regional VKT
            NZTA, regional VKT
            Kiwirail, data on passenger and freight movements and energy consumption
            GWRC, Wellington Transport Strategy Model
            MoT, Transport Outlook
            Productivity Commission Low Emissions Economy report (EV scenarios)
            MoT, National Freight Demand Survey
            MBIE, Energy in New Zealand (to calculate road freight fuel efficiency)
            Sobiecki & Chapman
            UK 2050 Calculator (potential vehicle efficiency improvements)
            Wellington International Airport annual reports`}
          </TextRegular>
          <Heading
            color={'black'}
            fontSize={18}
            mb={'8px'}
            mt={'14px'}
            css={{ whiteSpace: 'pre-line', fontStyle: 'italic' }}
          >
            {`Household and commercial energy`}
          </Heading>
          <TextRegular
            color={'black'}
            fontSize={18}
            css={{ whiteSpace: 'pre-line' }}
          >
            {`EECA, Energy End Use Database`}
          </TextRegular>
          <Heading
            color={'black'}
            fontSize={18}
            mb={'8px'}
            mt={'14px'}
            css={{ whiteSpace: 'pre-line', fontStyle: 'italic' }}
          >
            {`Industry`}
          </Heading>
          <TextRegular
            color={'black'}
            fontSize={18}
            css={{ whiteSpace: 'pre-line' }}
          >
            {`Infometrics, Wellington Region Economic Profile
            MBIE, Modelled Territorial Authority GDP`}
          </TextRegular>
          <Heading
            color={'black'}
            fontSize={18}
            mb={'8px'}
            mt={'14px'}
            css={{ whiteSpace: 'pre-line', fontStyle: 'italic' }}
          >
            {`Electricity supply`}
          </Heading>
          <TextRegular
            color={'black'}
            fontSize={18}
            css={{ whiteSpace: 'pre-line' }}
          >
            {`MBIE, Electricity Demand and Generation Scenarios
            Electricity Authority, distributed generation data (solar PV)`}
          </TextRegular>
          <Heading
            color={'black'}
            fontSize={18}
            mb={'8px'}
            mt={'14px'}
            css={{ whiteSpace: 'pre-line', fontStyle: 'italic' }}
          >
            {`Agriculture`}
          </Heading>
          <TextRegular
            color={'black'}
            fontSize={18}
            css={{ whiteSpace: 'pre-line' }}
          >
            {`StatsNZ agricultural census
            New Zealand Dairy Statistics
            Vivid Economics`}
          </TextRegular>
          <Heading
            color={'black'}
            fontSize={18}
            mb={'8px'}
            mt={'14px'}
            css={{ whiteSpace: 'pre-line', fontStyle: 'italic' }}
          >
            {`Forestry`}
          </Heading>
          <TextRegular
            color={'black'}
            fontSize={18}
            css={{ whiteSpace: 'pre-line' }}
          >
            {`GWRC land use data
            MPI, National Exotic Forest Description reports
            Land Cover Database 4.1
            Scion Bionergy Options Transition Analysis`}
          </TextRegular>
        </Box>
      </Flex>
    </Flex>
  )
}

export default connect(Data)
