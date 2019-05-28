import React from 'react'
import { connect } from 'redux-bundler-react'
import { Box, Flex, Button, Image, Heading, Text, Link } from 'rebass'

import Navbar from '../components/Navbar'
import TextMedium from '../components/TextMedium'
import TextRegular from '../components/TextRegular'

import map from '../assets/images/map.svg'

import DataSource from '../components/data-source'

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
            {`The Calculator is designed for exploring a range of plausible future pathways depending on choices and developments that happen over the next 30 years. Most levers can be varied between Level 1, representing the potential change in that variable with no effort to reduce emissions, and Level 4, representing the potential change with maximum effort to reduce emissions. Some levers can be adjusted between Levels 1 to 3 or 4, representing different choices that are not necessarily related to efforts to reduce emissions.

            Where possible, the lever assumptions have been set based on published reports and projections from credible New Zealand sources such as government agencies and research institutes. However, in many cases such data were either unavailable or outdated. In these cases, assumptions were set by informed judgement based on analysis of historical trends and underlying drivers. A list of data and information sources used is provided below. The evidence base on emissions reduction options for New Zealand is evolving rapidly, and several new pieces of analysis have been published since this version of the Calculator model was completed (for example, `}
            <Link
              href='https://www.mpi.govt.nz/protection-and-response/environment-and-natural-resources/biological-emissions-reference-group/'
              target='_blank'
            >{`reports from the Government’s Biological Emissions Reference Group`}</Link>
            {`).`}
          </TextRegular>
        </Box>

        <Box mt={30} mb={60}>
          <Heading fontSize={18} mb={18}>
            List of data and information sources
          </Heading>

          <Heading
            color={'black'}
            fontSize={18}
            mb={10}
            mt={24}
            css={{ whiteSpace: 'pre-line', fontStyle: 'italic' }}
          >
            {`Cross-cutting`}
          </Heading>
          <DataSource
            source={
              'URS New Zealand (2014), Greenhouse Gas Inventory for the Wellington Region'
            }
            link={
              'http://www.gw.govt.nz/assets/About-GW-the-region/WellingtonRegionGHGInventoryReportFINALVERSION7April2014.PDF'
            }
          />
          <DataSource
            source={
              'AECOM (2016), Community Greenhouse Gas Inventory for Wellington City and the Greater Wellington Region 2000-2015'
            }
            link={
              'http://www.gw.govt.nz/assets/Climate-change/CommuntityGHGInventoryWlgtnCityRegion2016.pdf'
            }
          />
          <DataSource
            source={'StatsNZ, Subnational population and household projections'}
            link={
              'http://archive.stats.govt.nz/browse_for_stats/population/estimates_and_projections/subnational-family-and-household-projections-info-releases.aspx'
            }
          />

          <Heading
            color={'black'}
            fontSize={18}
            mb={10}
            mt={24}
            css={{ whiteSpace: 'pre-line', fontStyle: 'italic' }}
          >
            {`Transport`}
          </Heading>
          <DataSource
            source={'MoT, Transport indicators (various)'}
            link={
              'https://www.transport.govt.nz/mot-resources/transport-dashboard/'
            }
          />
          <DataSource
            source={'MoT, Future Demand'}
            link={
              'https://www.transport.govt.nz/multi-modal/keystrategiesandplans/strategic-policy-programme/future-demand/'
            }
          />
          <DataSource
            source={'MoT, New Zealand Household Travel Survey'}
            link={
              'https://www.transport.govt.nz/mot-resources/household-travel-survey/'
            }
          />
          <DataSource
            source={'NZTA, Public Transport Performance Data'}
            link={'https://nzta.govt.nz/resources/public-transport-data/'}
          />
          <DataSource
            source={'MoT, New Zealand Vehicle Fleet Statistics'}
            link={
              'https://www.transport.govt.nz/mot-resources/vehicle-fleet-statistics/'
            }
          />
          <DataSource
            source={'MoT, regional VKT'}
            link={
              'https://www.transport.govt.nz/mot-resources/transport-dashboard/2-road-transport/rd023-vehicle-fleet-composition-by-region/rd016-vehicle-kilometres-travelled-by-vehicle-type-billion-km/'
            }
          />
          <DataSource
            source={'NZTA, regional VKT'}
            link={
              'http://www.nzta.govt.nz/assets/userfiles/transport-data/VKT.html'
            }
          />
          <DataSource
            source={
              'Kiwirail, data on passenger and freight movements and energy consumption'
            }
          />
          <DataSource
            source={'GWRC, Wellington Transport Strategy Model'}
            link={
              'http://www.gw.govt.nz/wellington-transport-models-technical-reports/'
            }
          />
          <DataSource
            source={'MoT, Transport Outlook'}
            link={
              'https://www.transport.govt.nz/mot-resources/transport-outlook/'
            }
          />
          <DataSource
            source={
              'Productivity Commission Low Emissions Economy report (EV scenarios)'
            }
            link={
              'https://www.productivity.govt.nz/sites/default/files/Productivity%20Commission_Low-emissions%20economy_Final%20Report_FINAL.pdf'
            }
          />
          <DataSource
            source={'MoT, National Freight Demand Survey'}
            link={
              'https://www.transport.govt.nz/mot-resources/freight-resources/nationalfreightdemandsstudy'
            }
          />
          <DataSource
            source={
              'MBIE, Energy in New Zealand (to calculate road freight fuel efficiency)'
            }
            link={
              'https://www.mbie.govt.nz/building-and-energy/energy-and-natural-resources/energy-statistics-and-modelling/energy-publications-and-technical-papers/energy-in-new-zealand/'
            }
          />
          <DataSource
            source={
              'Sobiecki & Chapman: The future of Wellington’s bus fleet: The environmental and health implications of different upgrade options for Wellington’s bus fleet'
            }
            attribution={
              'NZCSC Policy Paper, Victoria University of Wellington and New Zealand Centre for Sustainable Cities, Wellington, May 2016'
            }
          />
          <DataSource
            source={
              'UK 2050 Calculator (potential vehicle efficiency improvements)'
            }
            link={'http://2050-calculator-tool.decc.gov.uk/#/home'}
          />
          <DataSource
            source={'Wellington International Airport annual reports'}
            link={
              'https://www.wellingtonairport.co.nz/business/investor-services/annual-reports/'
            }
          />

          <Heading
            color={'black'}
            fontSize={18}
            mb={10}
            mt={24}
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
            <sup style={{ fontFamily: 'Inter-UI-Regular', fontSize: '12px' }}>
              1
            </sup>
          </TextRegular>

          <Heading
            color={'black'}
            fontSize={18}
            mb={10}
            mt={24}
            css={{ whiteSpace: 'pre-line', fontStyle: 'italic' }}
          >
            {`Industry`}
          </Heading>
          <DataSource
            source={'Infometrics, Wellington Region Economic Profile'}
            link={'https://ecoprofile.infometrics.co.nz/Wellington%20Region'}
          />
          <DataSource
            source={'MBIE, Modelled Territorial Authority GDP'}
            link={
              'https://www.mbie.govt.nz/business-and-employment/economic-development/regional-economic-development/modelled-territorial-authority-gross-domestic-product/'
            }
          />

          <Heading
            color={'black'}
            fontSize={18}
            mb={10}
            mt={24}
            css={{ whiteSpace: 'pre-line', fontStyle: 'italic' }}
          >
            {`Electricity supply`}
          </Heading>
          <DataSource
            source={'MBIE, Electricity Demand and Generation Scenarios'}
            link={
              'https://www.mbie.govt.nz/building-and-energy/energy-and-natural-resources/energy-statistics-and-modelling/energy-modelling/electricity-demand-and-generation-scenarios/'
            }
          />
          <DataSource
            source={
              'Electricity Authority, distributed generation data (solar PV)'
            }
            link={
              'https://www.ea.govt.nz/operations/distribution/distributed-generation/'
            }
          />

          <Heading
            color={'black'}
            fontSize={18}
            mb={10}
            mt={24}
            css={{ whiteSpace: 'pre-line', fontStyle: 'italic' }}
          >
            {`Agriculture`}
          </Heading>
          <DataSource
            source={'StatsNZ agricultural census'}
            link={'https://www.stats.govt.nz/topics/agriculture'}
          />
          <DataSource
            source={'New Zealand Dairy Statistics'}
            link={
              'https://www.dairynz.co.nz/publications/dairy-industry/new-zealand-dairy-statistics-2017-18/'
            }
          />
          <DataSource source={'Vivid Economics'} />

          <Heading
            color={'black'}
            fontSize={18}
            mb={10}
            mt={24}
            css={{ whiteSpace: 'pre-line', fontStyle: 'italic' }}
          >
            {`Forestry`}
          </Heading>
          <DataSource
            source={'GWRC land use data'}
            link={
              'http://www.gw.govt.nz/selected-land-use-register-slur-register-search/'
            }
          />
          <DataSource
            source={'MPI, National Exotic Forest Description reports'}
            link={
              'https://www.mpi.govt.nz/news-and-resources/open-data-and-forecasting/forestry/new-zealands-forests/'
            }
          />
          <DataSource
            source={'Land Cover Database 4.1'}
            link={
              'https://lris.scinfo.org.nz/layer/48423-lcdb-v41-land-cover-database-version-41-mainland-new-zealand/'
            }
          />
          <DataSource
            source={'Scion Bionergy Options Transition Analysis'}
            link={
              'https://www.scionresearch.com/science/bioenergy/bioenergy-options'
            }
          />

          <hr style={{ marginTop: '20px' }} />
          <sub style={{ fontFamily: 'Inter-UI-Regular', fontSize: '12px' }}>
            1. The Energy End Use Database previously included regional
            estimates for the 2012 year. This function has since been removed as
            the methodology is under review.
          </sub>
        </Box>
      </Flex>
    </Flex>
  )
}

export default connect(Data)
