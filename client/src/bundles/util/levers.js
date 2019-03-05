// Adding another lever? Make sure to add to `selectLeverString` in the correct location
// Label must match the key of each object. TODO: fix

import React from 'react'
import TextRegular from '../../components/TextRegular'
import { Image, Heading } from 'rebass'
import biogasPowerGenImage from '../../assets/images/info-modal-images/biogas-power-generation.png'
import solarPanelsForElectricityImage from '../../assets/images/info-modal-images/solarPanelsForElectricity.png'
import solarPanelsForHotWaterImage from '../../assets/images/info-modal-images/solarPanelsForHotWater.png'
import nationalGridElectricityImage from '../../assets/images/info-modal-images/nationalGridElectricity.png'
import landUseChange from '../../assets/images/info-modal-images/landUseChange.png'
import landUseChangeTwo from '../../assets/images/info-modal-images/landUseChangeTwo.png'
import forestType from '../../assets/images/info-modal-images/forestType.png'
import livestockStockingRates from '../../assets/images/info-modal-images/livestockStockingRates.png'
import livestockEmissionsIntensityPracticeChange from '../../assets/images/info-modal-images/livestockEmissionsIntensityPracticeChange.png'
import livestockEmissionsIntensityNewTech from '../../assets/images/info-modal-images/livestockEmissionsIntensityNewTech.png'
import wasteVolumes from '../../assets/images/info-modal-images/wasteVolumes.png'
import wasteVolumesTwo from '../../assets/images/info-modal-images/wasteVolumesTwo.png'
import landfillGasCaptureAndEfw from '../../assets/images/info-modal-images/landfillGasCaptureAndEfw.png'
import landfillGasCaptureAndEfwTwo from '../../assets/images/info-modal-images/landfillGasCaptureAndEfwTwo.png'
import biofuelSupply from '../../assets/images/info-modal-images/biofuelSupply.png'
import travelDemand from '../../assets/images/info-modal-images/travelDemand.png'
import modeShare from '../../assets/images/info-modal-images/modeShare.png'
import vehicleOccupancy from '../../assets/images/info-modal-images/vehicleOccupancy.png'
import electrificationOfLightVehicles from '../../assets/images/info-modal-images/electrificationOfLightVehicles.png'
import electrificationOfPublicTransport from '../../assets/images/info-modal-images/electrificationOfPublicTransport.png'
import vehicleFuelEfficiencies from '../../assets/images/info-modal-images/vehicleFuelEfficiencies.png'
import freightVolume from '../../assets/images/info-modal-images/freightVolume.png'
import electrificationOfTrucks from '../../assets/images/info-modal-images/electrificationOfTrucks.png'
import freightModeAndEfficiency from '../../assets/images/info-modal-images/freightModeAndEfficiency.png'
import demand from '../../assets/images/info-modal-images/demand.png'
import efficiency from '../../assets/images/info-modal-images/efficiency.png'
import nationalMarineTransport from '../../assets/images/info-modal-images/nationalMarineTransport.png'
import homeSpaceAndWaterHeatingDemand from '../../assets/images/info-modal-images/homeSpaceAndWaterHeatingDemand.png'

const groups = {
  electricitySupply: {
    label: 'Electricity Supply',
    leverDescriptions: [
      'Minimal change to existing Electricity Supply trends',
      'Moderate change to existing Electricity Supply trends',
      'Significant change to existing Electricity Supply trends',
      'Exceptional change to existing Electricity Supply trends'
    ]
  },
  agricultureAndLandUse: {
    label: 'Agriculture & Forestry',
    leverDescriptions: [
      'Minimal change to existing Agriculture & Forestry trends',
      'Moderate change to existing Agriculture & Forestry trends',
      'Significant change to existing Agriculture & Forestry trends',
      'Exceptional change to existing Agriculture & Forestry trends'
    ]
  },
  wasteAndBiofuel: {
    label: 'Waste & Biofuel',
    leverDescriptions: [
      'Minimal change to existing Waste & BioFuel trends',
      'Moderate change to existing Waste & BioFuel trends',
      'Significant change to existing Waste & BioFuel trends',
      'Exceptional change to existing Waste & BioFuel trends'
    ]
  },
  passengerLandTransport: {
    label: 'Passenger Land Transport',
    leverDescriptions: [
      'Minimal change to existing Passenger Land Transport trends',
      'Moderate change to existing Passenger Land Transport trends',
      'Significant change to existing Passenger Land Transport trends',
      'Exceptional change to existing Passenger Land Transport trends'
    ]
  },
  freightAviationAndMarineTransport: {
    label: 'Freight, Aviation and Marine Transport',
    leverDescriptions: [
      'Minimal change to existing Freight, Aviation & Marine Transport trends',
      'Moderate change to existing Freight, Aviation & Marine Transport trends',
      'Significant change to existing Freight, Aviation & Marine Transport trends',
      'Exceptional change to existing Freight, Aviation & Marine Transport trends'
    ]
  },
  buildings: {
    label: 'Buildings',
    leverDescriptions: [
      'Minimal change to existing Building trends',
      'Moderate change to existing Building trends',
      'Significant change to existing Building trends',
      'Exceptional change to existing Building trends'
    ]
  },
  industry: {
    label: 'Industry',
    leverDescriptions: [
      'Minimal change to existing Industry trends',
      'Moderate change to existing Industry trends',
      'Significant change to existing Industry trends',
      'Exceptional change to existing Industry trends'
    ]
  }
}

export default {
  biogasPowerGeneration: {
    label: 'Biogas power generation',
    value: 1,
    group: groups.electricitySupply,
    leverDescriptions: [
      '100% of local biogas supply used for electricity generation',
      '50% of local biogas supply used for electricity generation, 50% replaces natural gas',
      '100% of local biogas supply used to replace natural gas'
    ],
    content: (
      <React.Fragment>
        <TextRegular color={'black'} fontSize={16} pb={10}>
          The local supply of biogas is determined by the user’s choices for the
          waste sector. This lever determines whether that biogas is used to
          generate electricity (as is currently the case at Southern and
          Silverstream Landfills) or used directly in the residential,
          commercial and industrial sectors (assuming it can be fed into the gas
          distribution network).
        </TextRegular>
        <Image src={biogasPowerGenImage} width={'447px'} />
      </React.Fragment>
    )
  },
  solarPanelsForElectricity: {
    label: 'Solar panels for electricity',
    value: 1,
    group: groups.electricitySupply,
    leverDescriptions: [
      'In 2050, 4% of households have solar PV and other installations total 3.2 MW',
      '9% of households have solar PV and other installations total 7.1 MW',
      '15% of households have solar PV and other installations total 11.9 MW',
      '25% of households have solar PV and other installations total 19.8 MW'
    ],
    content: (
      <React.Fragment>
        <TextRegular color={'black'} fontSize={16} pb={10}>
          In 2015, the Wellington region produced an estimated 2.5 GWh of
          electricity through the use of solar photovoltaic (PV) panels. Around
          0.3% of households had installed solar PV, with an average system size
          of 3.3 kW, each producing around 3,900 kWh. Other installations (e.g.
          on commercial buildings) totalled around 0.2 MW.
        </TextRegular>
        <Heading fontSize={16} mb={10}>
          Interactions with other choices
        </Heading>
        <TextRegular color={'black'} fontSize={16} pb={10}>
          Selecting level 4 on this lever at the same time as selecting level 4
          on the ‘Solar panels for hot water’ lever may yield an unrealistic
          result, as the two will be competing for roof space.
        </TextRegular>
        <Image src={solarPanelsForElectricityImage} width={'522px'} />
      </React.Fragment>
    )
  },
  solarPanelsForHotWater: {
    label: 'Solar panels for hot water',
    value: 1,
    group: groups.electricitySupply,
    leverDescriptions: [
      'In 2050, 3.2% of households have solar hot water',
      '5% of households have solar hot water',
      '10% of households have solar hot water',
      '20% of households have solar hot water'
    ],
    content: (
      <React.Fragment>
        <TextRegular color={'black'} fontSize={16} pb={10}>
          Solar water heating systems (also known as ‘solar thermal’) use solar
          panels to heat water which is stored in a hot water cylinder. In 2015
          an estimated 1.4% of households in the Wellington region had solar hot
          water systems, with an assumed average panel area of 3.0 m² producing
          around 2160 kWh of heat.
        </TextRegular>
        <Image src={solarPanelsForHotWaterImage} width={'532px'} />
      </React.Fragment>
    )
  },
  nationalGridElectricity: {
    label: 'National grid electricity',
    value: 1,
    group: groups.electricitySupply,
    leverDescriptions: [
      'Electricity mix remains similar to today; emissions factor increases to 0.17 kgCO2e/kWh',
      'Electricity mix 85% renewable by 2025 and then steady; 2050 emissions factor of 0.085 kgCO2e/kWh',
      'Electricity mix 90% renewable by 2025 and then steady; 2050 emissions factor of 0.053 kgCO2e/kWh',
      'Electricity mix 100% renewable by 2030; emissions factor of 0.023 kgCO2e/kWh in 2050.'
    ],
    content: (
      <React.Fragment>
        <TextRegular color={'black'} fontSize={16} pb={10}>
          In the Calculator, any electricity demand not met by local distributed
          generation (solar and biogas) is supplied from the national grid.
          Emissions are allocated using an average national grid emissions
          factor. In 2015, the grid emissions factor was 0.123 kgCO 2 e per kWh
          consumed. This has halved since 2005 as the proportion of generation
          from renewable sources has increased. Level assumptions below are
          informed by several recent modelling studies.
        </TextRegular>
        <Image src={nationalGridElectricityImage} width={'538px'} />
      </React.Fragment>
    )
  },
  landUseChange: {
    label: 'Land use change',
    value: 1,
    group: groups.agricultureAndLandUse,
    leverDescriptions: [
      '20,000 ha (6%) of sheep & beef land converted to dairy (+60%); no net change in forest land',
      '5,000 ha of sheep & beef land converted to dairy (+15%), 45,000 ha planted in forest',
      '65,000 ha (20%) of sheep & beef land planted in forest; no net change in dairy land',
      '125,000 ha (38%) of sheep & beef land planted in forest; no net change in dairy land'
    ],
    content: (
      <React.Fragment>
        <TextRegular color={'black'} fontSize={16} pb={10}>
          In 2015 Wellington had an estimated 33,600 hectares (ha) of dairy
          land, 332,000 ha of sheep &amp; beef land, 77,000 ha of exotic forest,
          and 318,000 ha of native forest &amp; other vegetation. Total carbon
          sequestration from forests was estimated at 880 ktCO 2 e.
        </TextRegular>
        <Heading fontSize={16} mb={10}>
          Interactions with other choices
        </Heading>
        <TextRegular color={'black'} fontSize={16} pb={10}>
          The ‘Forest type’ lever controls how much of the new forest planting
          is exotic plantation forest or permanent native forest. The ‘Livestock
          stocking rates’ lever controls the number of livestock per hectare of
          farm land. The Calculator uses an averaging method for accounting for
          carbon sequestration from exotic plantation forests. New forest land
          is assumed to absorb carbon up until it reaches the long-term average
          carbon storage level over harvest cycles (around 20 years after first
          planting).
        </TextRegular>
        <Image src={landUseChange} width={'537px'} />
        <Image src={landUseChangeTwo} width={'644px'} />
      </React.Fragment>
    )
  },
  forestType: {
    label: 'Forest type',
    value: 1,
    group: groups.agricultureAndLandUse,
    leverDescriptions: [
      'All new forest planting is exotic plantation forest',
      '1/3 of new forest planting is permanent native forest',
      '2/3 of new forest planting is permanent native forest',
      'All new forest planting is permanent native forest'
    ],
    content: (
      <React.Fragment>
        <TextRegular color={'black'} fontSize={16} pb={10}>
          This lever controls how much of the new forest planting is exotic
          plantation forest or permanent native forest.
        </TextRegular>
        <Heading fontSize={16} mb={10}>
          Interactions with other choices
        </Heading>
        <TextRegular color={'black'} fontSize={16} pb={10}>
          The ‘Land use change’ lever controls the amount of new land for
          forests.
        </TextRegular>
        <Image src={forestType} width={'459px'} />
      </React.Fragment>
    )
  },
  livestockStockingRates: {
    label: 'Livestock stocking rates',
    value: 1,
    group: groups.agricultureAndLandUse,
    leverDescriptions: [
      'By 2050 , stocking rates (per hectare) increase by 20% for dairy and 10% for sheep & beef',
      'Stocking rates increase by 10% for dairy and 10% for sheep & beef',
      'Stocking rates decrease by 10% for dairy; no change for sheep & beef',
      'Stocking rates decrease by 20% for dairy; no change for sheep & beef'
    ],
    content: (
      <React.Fragment>
        <TextRegular color={'black'} fontSize={16} pb={10}>
          Stocking rate is the average number of livestock per hectare. Dairy
          stocking rates have increased over the last two decades, while there
          has been little change in sheep &amp; beef stocking rates.
        </TextRegular>
        <Heading fontSize={16} mb={10}>
          Interactions with other choices
        </Heading>
        <TextRegular color={'black'} fontSize={16} pb={10}>
          The ‘Land use change’ lever controls the areas of land dedicated to
          dairy and sheep &amp; beef farming. Total stock numbers are determined
          by the combination of land use area and stocking rate. Changes in
          stocking rate may affect productivity and emissions per animal.
          Emissions intensity is controlled by two separate levers representing
          potential improvements from practice changes and new technologies.
        </TextRegular>
        <Image src={livestockStockingRates} width={'459px'} />
      </React.Fragment>
    )
  },
  livestockEmissionsIntensityPracticeChange: {
    label: 'Livestock emissions intensity practice change',
    value: 1,
    group: groups.agricultureAndLandUse,
    leverDescriptions: [
      'No emissions reductions from practice changes',
      'Moderate adoption of practice changes, which reduce emissions per animal by 10-15%',
      'High adoption of practice changes, which reduce emissions per animal by 10-15%',
      'Full adoption of practice changes, which reduce emissions per animal by 10-15%'
    ],
    content: (
      <React.Fragment>
        <TextRegular color={'black'} fontSize={16} pb={10}>
          Livestock emissions per unit of milk and meat have steadily improved
          since 1990, while emissions per animal have grown due to increased
          productivity. There are several possibilities to improve emissions
          intensity through practice changes. The levels here are based on
          varying rates of adoption of selective breeding, changes to feed
          inputs, and precision agriculture. These are assumed to reduce
          associated emissions by up to 15%, 10% and 10% respectively.
        </TextRegular>
        <Heading fontSize={16} mb={10}>
          Interactions with other choices
        </Heading>
        <TextRegular color={'black'} fontSize={16} pb={10}>
          The ‘Livestock emissions intensity – new tech’ lever controls
          additional emissions reductions from adoption of new technologies.
        </TextRegular>
        <Image
          src={livestockEmissionsIntensityPracticeChange}
          width={'459px'}
        />
      </React.Fragment>
    )
  },
  livestockEmissionsIntensityNewTech: {
    label: 'Livestock emissions intensity new tech',
    value: 1,
    group: groups.agricultureAndLandUse,
    leverDescriptions: [
      'No emissions reductions from new technologies',
      'Moderate adoption of methane/nitrification inhibitors, which reduce emissions per animal by 20%/50%',
      'High adoption of methane/nitrification inhibitors, which reduce emissions per animal by 20%/50%',
      'Methane vaccine reduces emissions per animal 20-30%; widespread adoption of nitrification inhibitors'
    ],
    content: (
      <React.Fragment>
        <TextRegular color={'black'} fontSize={16} pb={10}>
          Several new technologies under development could reduce methane and
          nitrous oxide emissions from livestock farming. The levels here are
          based on varying rates of adoption of a methane inhibitor or vaccine,
          and a nitrification inhibitor. These are assumed to reduce associated
          emissions by up to 20%, 30% and 50% respectively.
        </TextRegular>
        <Heading fontSize={16} mb={10}>
          Interactions with other choices
        </Heading>
        <TextRegular color={'black'} fontSize={16} pb={10}>
          The ‘Livestock emissions intensity – practice change’ lever controls
          emissions reductions from adoption of practice changes.
        </TextRegular>
        <Image src={livestockEmissionsIntensityNewTech} width={'455px'} />
      </React.Fragment>
    )
  },
  wasteVolumes: {
    label: 'Waste volumes',
    value: 1,
    group: groups.wasteAndBiofuel,
    leverDescriptions: [
      'In 2050, waste collected per person is the same as in 2015',
      'Waste collected per person reduces by ~30%',
      'Waste collected per person reduces by ~50%',
      'Waste collected per person reduces by ~66%'
    ],
    content: (
      <React.Fragment>
        <TextRegular color={'black'} fontSize={16} pb={10}>
          Biodegradable waste (e.g. food, garden and paper waste) deposited in
          landfills produces methane as it breaks down. Waste disposal can be
          reduced by avoiding the creation of waste, and by composting and
          recycling.
        </TextRegular>
        <Heading fontSize={16} mb={10}>
          Interactions with other choices
        </Heading>
        <TextRegular color={'black'} fontSize={16} pb={10}>
          Methane produced in landfills can be captured and either flared or
          used for energy. The ‘Landfill gas capture and Energy from Waste
          (EFW)’ lever controls the proportion of methane captured and used for
          energy.
        </TextRegular>
        <Image src={wasteVolumes} width={'463px'} />
        <Image src={wasteVolumesTwo} width={'455px'} />
      </React.Fragment>
    )
  },
  landfillGasCaptureAndEnergyFromWaste: {
    label: 'Landfill gas capture and energy from waste',
    value: 1,
    group: groups.wasteAndBiofuel,
    leverDescriptions: [
      'LFG capture remains at 58%',
      'LFG capture increases to 70% in 2050',
      'LFG capture increases to 77%; 25% of food & garden waste processed in anaerobic digesters',
      'LFG capture increases to 77%; 50% of food & garden waste processed in anaerobic digesters'
    ],
    content: (
      <React.Fragment>
        <TextRegular color={'black'} fontSize={16} pb={10}>
          In 2015, an estimated 58% of landfill gas (LFG) from Wellington
          landfills was captured. 72% of this was combusted to produce energy,
          and the rest flared.
        </TextRegular>
        <Heading fontSize={16} mb={10}>
          Interactions with other choices
        </Heading>
        <TextRegular color={'black'} fontSize={16} pb={10}>
          The ‘Waste volumes’ lever controls how much waste is disposed of –
          less waste disposal means less LFG is generated. The ‘Biogas power
          generation’ lever controls whether the captured LFG is used for
          electricity generation or to replace natural gas use.
        </TextRegular>
        <Heading fontSize={16} mb={10}>
          Info on TAs
        </Heading>
        <TextRegular color={'black'} fontSize={16} pb={10}>
          Estimated LFG capture rates differ by landfill. Wellington City’s
          Southern Landfill has the highest at around 85%, and Levin Landfill
          (used by Kapiti Coast) has the lowest at around 20%.
        </TextRegular>
        <Image src={landfillGasCaptureAndEfw} width={'475px'} />
        <Image src={landfillGasCaptureAndEfwTwo} width={'503px'} />
      </React.Fragment>
    )
  },
  biofuelSupply: {
    label: 'Biofuel supply',
    value: 1,
    group: groups.wasteAndBiofuel,
    leverDescriptions: [
      'No liquid biofuel supply',
      'Annual biofuel supply of up to ~100 litres per person by 2050',
      'Annual biofuel supply of up to ~200 litres per person',
      'Annual biofuel supply of up to ~400 litres per person'
    ],
    content: (
      <React.Fragment>
        <TextRegular color={'black'} fontSize={16} pb={10}>
          In 2015, biofuels accounted for less than 0.1% of New Zealand’s liquid
          fuel supply. Biofuels are produced today from feedstocks such as
          canola and waste products such as tallow. However, these types of
          biofuels face limitations on production scale and on their use in many
          existing vehicles. In the future, potential exists for advanced
          “drop-in” biofuels that can fully substitute for oil products,
          produced from feedstocks such as wood waste that do not require arable
          land. Potential levels of biofuel supply per person have been assessed
          based on national studies. The biofuels are assumed to be produced
          outside of the Wellington region.
        </TextRegular>
        <Heading fontSize={16} mb={10}>
          Interactions with other choices
        </Heading>
        <TextRegular color={'black'} fontSize={16} pb={10}>
          In the Calculator, available biofuel supply is assumed to substitute
          for oil-derived fuels in meeting the total liquid fuel demand
          determined by other lever choices. The types of biofuels produced and
          where they are being used (e.g. in trucks, shipping or aviation) are
          not specified within the model.
        </TextRegular>
        <Image src={biofuelSupply} width={'453px'} />
      </React.Fragment>
    )
  },
  travelDemand: {
    label: 'Travel demand',
    value: 1,
    group: groups.passengerLandTransport,
    leverDescriptions: [
      'In 2050, people travel ~12% more than today',
      'People travel the same distance as today',
      'People travel 10% less than today',
      'People travel 20% less than today'
    ],
    content: (
      <React.Fragment>
        <TextRegular color={'black'} fontSize={16} pb={10}>
          In 2015, the average travel per Wellington resident (by car, bus,
          train, bike and foot) is estimated at 12,400 km. Note this excludes
          travel by plane. Travel demand is influenced by multiple factors
          including urban form, fuel prices and digital technology.
        </TextRegular>
        <Heading fontSize={16} mb={10}>
          Interactions with other choices
        </Heading>
        <TextRegular color={'black'} fontSize={16} pb={10}>
          In the Calculator, emissions from passenger transport are determined
          by multiple levers: travel demand, mode share, vehicle occupancies,
          electrification of vehicles , and vehicle fuel efficiencies. Travel in
          and out of Wellington by plane and ferry are dealt with separately.
          Biofuels are chosen separately as a supply option. Note that energy
          demand for passenger transport lowers under all scenarios due to
          uptake of electric vehicles, which are far more energy efficient than
          internal combustion engine vehicles.
        </TextRegular>
        <Image src={travelDemand} width={'536px'} />
      </React.Fragment>
    )
  },
  modeShare: {
    label: 'Mode share',
    value: 1,
    group: groups.passengerLandTransport,
    leverDescriptions: [
      'No change in mode share with ~90% of travel by car & van',
      'Moderate shift towards public & active transport; 82% of travel by car & van in 2050',
      'Large shift towards public & active transport; 77% of travel by car & van',
      'Very large shift towards public & active transport; 70% of travel by car & van'
    ],
    content: (
      <React.Fragment>
        <TextRegular color={'black'} fontSize={16} pb={10}>
          In 2015, the estimated shares of passenger-kilometres by travel mode
          are: 89.7% by car, van or motorcycle; 4.5% by train; 2.8% by bus; 2.1%
          by walking; and 0.9% by cycling.
        </TextRegular>
        <Heading fontSize={16} mb={10}>
          Interactions with other choices
        </Heading>
        <TextRegular color={'black'} fontSize={16} pb={10}>
          Relative emissions from travel by car, bus and train are affected by
          changes in vehicle electrification and fuel efficiency.
        </TextRegular>
        <Image src={modeShare} width={'477px'} />
      </React.Fragment>
    )
  },
  vehicleOccupancy: {
    label: 'Vehicle occupancy',
    value: 1,
    group: groups.passengerLandTransport,
    leverDescriptions: [
      'No change, average of ~1.6 passengers per light vehicle',
      'Occupancy increases to ~1.7 passengers per vehicle in 2050',
      'Occupancy increases to ~1.8 passengers per vehicle in 2050',
      'Occupancy increases to 1.86 passengers per vehicle in 2050'
    ],
    content: (
      <React.Fragment>
        <TextRegular color={'black'} fontSize={16} pb={10}>
          The average number of passengers per light vehicle (weighted by trip
          distance) in 2015 was estimated at 1.58, reflecting a high proportion
          of single occupant trips. This has been fairly stable over the last
          decade.
        </TextRegular>
        <Image src={vehicleOccupancy} width={'552px'} />
      </React.Fragment>
    )
  },
  electrificationOfLightVehicles: {
    label: 'Electrification of light vehicles',
    value: 1,
    group: groups.passengerLandTransport,
    leverDescriptions: [
      '6% of light vehicle travel done in EVs in 2050',
      '24% of light vehicle travel done in EVs in 2050',
      '46% of light vehicle travel done in EVs in 2050',
      '100% of light vehicle travel done in EVs in 2050'
    ],
    content: (
      <React.Fragment>
        <TextRegular color={'black'} fontSize={16} pb={10}>
          In 2015, almost all light vehicles were powered by petrol and diesel,
          but uptake of electric vehicles (EVs) is rapidly accelerating as they
          have reduced in cost and improved in performance. There are two types
          of EVs: battery EVs (BEVs), powered only by the battery, and plug-in
          hybrids (PHEVs), which have a plug-in battery plus an internal
          combustion engine for extended range.
        </TextRegular>
        <Heading fontSize={16} mb={10}>
          Interactions with other choices
        </Heading>
        <TextRegular color={'black'} fontSize={16} pb={10}>
          Emissions from the use of EVs depend on the emissions intensity of
          electricity, controlled through the ‘National grid electricity’ lever.
        </TextRegular>
        <Image src={electrificationOfLightVehicles} width={'552px'} />
      </React.Fragment>
    )
  },
  electrificationOfPublicTransport: {
    label: 'Electrification of public transport',
    value: 1,
    group: groups.passengerLandTransport,
    leverDescriptions: [
      'No electric buses and no further electrification of rail',
      '45% of bus travel electrified in 2050; no electrification of rail',
      'Full bus fleet electrified by 2045; Wairarapa line electrified in 2035',
      'Full bus fleet electrified by 2030; Wairarapa line electrified in 2025'
    ],
    content: (
      <React.Fragment>
        <TextRegular color={'black'} fontSize={16} pb={10}>
          In 2015, an estimated 7% of Wellington’s bus passenger-kilometres were
          travelled on electric trolleybuses, and 93% were travelled on diesel
          buses. The trolleybus network has since been decommissioned, and
          battery electric buses are now being trialled. For train travel, an
          estimated 82% of passenger-kilometres were travelled on electric
          trains and 18% on diesel trains (primarily on the Wairarapa line).
        </TextRegular>
        <Heading fontSize={16} mb={10}>
          Interactions with other choices
        </Heading>
        <TextRegular color={'black'} fontSize={16} pb={10}>
          The ‘Vehicle efficiencies’ lever controls the efficiency of different
          vehicle technologies, while this lever controls the level of
          electrification.
        </TextRegular>
        <Image src={electrificationOfPublicTransport} width={'490px'} />
      </React.Fragment>
    )
  },
  vehicleFuelEfficiencies: {
    label: 'Vehicle fuel efficiencies',
    value: 1,
    group: groups.passengerLandTransport,
    leverDescriptions: [
      'No change in fuel efficiency of petrol/diesel cars (~10.5 L/100km); slight improvement for buses',
      'By 2050, car fuel efficiency improves to ~6 L/100km, bus efficiency improves by ~50%',
      'Car fuel efficiency improves to ~5 L/100km; bus efficiency more than doubles',
      'Car fuel efficiency improves to ~3.5 L/100km in 2050; bus efficiency nearly triples'
    ],
    content: (
      <React.Fragment>
        <TextRegular color={'black'} fontSize={16} pb={10}>
          In 2015, an estimated 7% of Wellington’s bus passenger-kilometres were
          travelled on electric trolleybuses, and 93% were travelled on diesel
          buses. The trolleybus network has since been decommissioned, and
          battery electric buses are now being trialled. For train travel, an
          estimated 82% of passenger-kilometres were travelled on electric
          trains and 18% on diesel trains (primarily on the Wairarapa line).
        </TextRegular>
        <Heading fontSize={16} mb={10}>
          Interactions with other choices
        </Heading>
        <TextRegular color={'black'} fontSize={16} pb={10}>
          Separate levers control the level of electrification of light vehicles
          and public transport, while this lever controls the average efficiency
          of the different vehicle technologies. The average number of
          passengers per light vehicle is controlled by the ‘Light vehicle
          occupancy’ lever.
        </TextRegular>
        <Image src={vehicleFuelEfficiencies} width={'562px'} />
      </React.Fragment>
    )
  },
  // here
  freightVolume: {
    label: 'Freight volume',
    value: 1,
    group: groups.freightAviationAndMarineTransport,
    leverDescriptions: [
      'Freight volume grows by ~50% by 2050',
      'Freight volume grows by ~33%',
      'Freight volume grows by ~15% (plateauing in 2040)',
      'Freight volume peaks around 2030 then declines'
    ],
    content: (
      <React.Fragment>
        <TextRegular color={'black'} fontSize={16} pb={10}>
          In 2015, the total movement of goods by road and rail attributed to
          Wellington is estimated at 1,125 million tonne-kilometres. Freight
          volume is influenced by levels of consumption, production and export
          of goods. These in turn are influenced by changes in population and
          economic activity and structure. Wellington’s population is projected
          to grow by 15% by 2050.
        </TextRegular>
        <Heading fontSize={16} mb={10}>
          Interactions with other choices
        </Heading>
        <TextRegular color={'black'} fontSize={16} pb={10}>
          The share of land freight moved by road versus rail and the energy
          efficiency of each mode is controlled by the ‘Freight mode and
          efficiency’ lever. Sea and air freight are covered separately under
          marine transport and aviation. Biofuels can be chosen as a supply
          option.
        </TextRegular>
        <Image src={freightVolume} width={'514px'} />
      </React.Fragment>
    )
  },
  electrificationOfTrucks: {
    label: 'Electrification of trucks',
    value: 1,
    group: groups.freightAviationAndMarineTransport,
    leverDescriptions: [
      'No electric trucks',
      '10% of truck travel electrified in 2050',
      '25% of truck travel electrified in 2050',
      '50% of truck travel electrified in 2050'
    ],
    content: (
      <React.Fragment>
        <TextRegular color={'black'} fontSize={16} pb={10}>
          In 2015, essentially all trucks and all freight trains in Wellington
          were powered by diesel. Electric trucks are becoming commercially
          available as battery technology improves and costs reduce. Rail can be
          electrified through track electrification or use of battery-powered or
          hybrid trains. Hydrogen- powered trucks and trains are not explicitly
          considered but could substitute for electric vehicles.
        </TextRegular>
        <Heading fontSize={16} mb={10}>
          Interactions with other choices
        </Heading>
        <TextRegular color={'black'} fontSize={16} pb={10}>
          This lever controls the level of vehicle electrification. The
          efficiency of different vehicle technologies is controlled separately
          through the ‘Freight mode &amp; efficiency’ lever.
        </TextRegular>
        <Image src={electrificationOfTrucks} width={'501px'} />
      </React.Fragment>
    )
  },
  freightModeAndEfficiency: {
    label: 'Freight Mode and efficiency',
    value: 1,
    group: groups.freightAviationAndMarineTransport,
    leverDescriptions: [
      'No change from current mode share (19% of tonne-km by rail) or efficiency of road freight',
      'Rail share of tonne-km increases to 25% and road freight efficiency improves by 30% (not including electrification)',
      'Rail share of tonne-km increases to 30% and road freight efficiency improves by 50%',
      'Rail share of tonne-km increases to 40% and road freight efficiency improves by 60%'
    ],
    content: (
      <React.Fragment>
        <TextRegular color={'black'} fontSize={16} pb={10}>
          The share of Wellington’s land freight volume (in tonne-kilometres)
          moved by rail in 2015 is estimated at 19%, with the remaining 81%
          moved by road. On average, rail freight by diesel train is over three
          times as efficient as road freight per tonne-km. Efficiency can be
          improved through more fuel efficient vehicles, higher vehicle loadings
          and improved logistics.
        </TextRegular>
        <Heading fontSize={16} mb={10}>
          Interactions with other choices
        </Heading>
        <TextRegular color={'black'} fontSize={16} pb={10}>
          This lever controls the efficiency of different vehicle technologies.
          The level of vehicle electrification is controlled separately through
          the ‘Electrification of road &amp; rail freight’ lever.
        </TextRegular>
        <Image src={freightModeAndEfficiency} width={'498px'} />
      </React.Fragment>
    )
  },
  demand: {
    label: 'Demand',
    value: 1,
    group: groups.freightAviationAndMarineTransport,
    leverDescriptions: [
      'Passenger numbers nearly triple by 2050 (3% growth per year)',
      'Passenger numbers double (2% growth per year)',
      'Passenger numbers grow by around 40% (1% growth per year)'
    ],
    content: (
      <React.Fragment>
        <TextRegular color={'black'} fontSize={16} pb={10}>
          In 2015, Wellington Airport recorded around 4.9 million domestic
          passenger movements. This has grown at an average rate of around 3%
          per year since 2000. The Calculator follows national emissions
          accounting conventions and excludes emissions from international
          flights. Emissions are calculated and attributed based on total jet
          fuel pumped at Wellington Airport. Domestic air freight is assumed to
          be included with passenger flights.
        </TextRegular>
        <Heading fontSize={16} mb={10}>
          Interactions with other choices
        </Heading>
        <TextRegular color={'black'} fontSize={16} pb={10}>
          Fuel use per passenger is controlled by the ‘Air travel efficiency’
          lever.
        </TextRegular>
        <Heading fontSize={16} mb={10}>
          Info on TAs
        </Heading>
        <TextRegular color={'black'} fontSize={16} pb={10}>
          By convention, emissions from air travel are attributed to Wellington
          City.
        </TextRegular>
        <Image src={demand} width={'470px'} />
      </React.Fragment>
    )
  },
  efficiency: {
    label: 'Efficiency',
    value: 1,
    group: groups.freightAviationAndMarineTransport,
    leverDescriptions: [
      'Fuel use per passenger falls by 1% per year',
      'Fuel use per passenger falls by 2% per year',
      'Fuel use per passenger falls by 2.5% per year',
      'Fuel use per passenger falls by 3% per year'
    ],
    content: (
      <React.Fragment>
        <TextRegular color={'black'} fontSize={16} pb={10}>
          Emissions from domestic air travel in Wellington have grown much less
          than passenger numbers due to efficiency improvements. Jet fuel
          consumption per passenger has decreased by around 2% per year on
          average since 2000. The Calculator follows national emissions
          accounting conventions and excludes emissions from international
          flights. Emissions are calculated and attributed based on total jet
          fuel pumped at Wellington Airport. Domestic air freight is assumed to
          be included with passenger flights.
        </TextRegular>
        <Heading fontSize={16} mb={10}>
          Interactions with other choices
        </Heading>
        <TextRegular color={'black'} fontSize={16} pb={10}>
          Passenger numbers are controlled by the ‘Air travel demand’ lever.
        </TextRegular>
        <Image src={efficiency} width={'498px'} />
      </React.Fragment>
    )
  },
  nationalMarineTransport: {
    label: 'National marine transport',
    value: 1,
    group: groups.freightAviationAndMarineTransport,
    leverDescriptions: [
      'No change in annual fuel use',
      'Fuel use decreases by 10% by 2050',
      'Fuel use decreases by 20%',
      'Fuel use decreases by 50%'
    ],
    content: (
      <React.Fragment>
        <TextRegular color={'black'} fontSize={16} pb={10}>
          Ferries between Wellington and Picton burned around 51 million litres
          of fuel oil and diesel in 2015. This estimated annual fuel use is
          quite stable over the last decade. There was also a small amount of
          diesel burned by small ferries operating within Wellington City.
          Marine fuel use from other coastal shipping (including international
          shipping) is excluded due to lack of available data. Half of the
          emissions from the Cook Strait ferries are attributed to Wellington.
        </TextRegular>
        <Heading fontSize={16} mb={10}>
          Info on TAs
        </Heading>
        <TextRegular color={'black'} fontSize={16} pb={10}>
          By convention, emissions from ferry operations are attributed to
          Wellington City.
        </TextRegular>
        <Image src={nationalMarineTransport} width={'459px'} />
      </React.Fragment>
    )
  },
  homeSpaceAndWaterHeatingDemand: {
    label: 'Home space and water heating demand',
    value: 1,
    group: groups.buildings,
    leverDescriptions: [
      'No change in space and water heating demand per household',
      'Space and water heating demand per household reduce by 10%',
      'Space and water heating demand per household reduce by 20%',
      'Space and water heating demand per household reduce by 30%'
    ],
    content: (
      <React.Fragment>
        <TextRegular color={'black'} fontSize={16} pb={10}>
          In 2015, the average Wellington household used an estimated 3,040 kWh
          of heat for space heating and 2,770 kWh for water heating. Demand for
          heat is influenced by thermal performance (e.g. insulation), household
          size, and behaviour (e.g. shorter showers).
        </TextRegular>
        <Heading fontSize={16} mb={10}>
          Interaction with other choices
        </Heading>
        <TextRegular color={'black'} fontSize={16} pb={10}>
          This lever sets the demand for end-use heat. The mix of heating
          technologies (e.g. heat pumps, gas burners) used to provide the heat
          demand is chosen with the ‘Home heating technology’ lever. Solar hot
          water uptake is chosen separately as a supply option. Note that
          different technologies will use different amounts of input energy to
          provide 1 kWh of heat. For example, an open fire is only around 10%
          efficient, while heat pumps can provide up to 4 kWh of heat for each
          kWh of electricity used.
        </TextRegular>
        <Image src={homeSpaceAndWaterHeatingDemand} width={'614px'} />
      </React.Fragment>
    )
  },
  homeHeatingTechnology: {
    label: 'Home heating technology',
    value: 1,
    group: groups.buildings,
    leverDescriptions: [
      'No change in technology mix for space and water heating',
      'New households use electric space & water heating or woodburner; existing coal and diesel heating replaced by wood',
      'As per Level 2, plus half of current gas heating converted to heat pump',
      'As per Level 2, plus all gas heating converted to heat pump'
    ],
    content: (
      <React.Fragment>
        <TextRegular color={'black'} fontSize={16} pb={10}>
          This lever controls the mix of technologies to provide the household
          space and water heating demand. In 2015, an estimated 66% of space
          heating was provided by electricity (resistance heaters and heat
          pumps), 21% from gas, and 13% from wood and other sources. For water
          heating, 79% was electric, 20% gas, and 1% from other sources.
        </TextRegular>
        <Heading fontSize={16} mb={10}>
          Interaction with other choices
        </Heading>
        <TextRegular color={'black'} fontSize={16} pb={10}>
          Demand is controlled by the ‘Household heating demand’ lever. Solar
          hot water is specified separately and used first within the model.
        </TextRegular>
        {/* <Image src={homeHeatingTechnology} width={'1176px'} /> */}
        {/* <Image src={homeHeatingTechnologyTwo} width={'1369px'} /> */}
      </React.Fragment>
    )
  },
  homeLightingAndAppliances: {
    label: 'Home lighting and appliances',
    value: 1,
    group: groups.buildings,
    leverDescriptions: [
      'No change in energy demand for lighting & appliances per household',
      'Energy demand per household decreases by 33% by 2050',
      'Energy demand per household decreases by 50% by 2050',
      'Energy demand per household decreases by 67% by 2050'
    ],
    content: <p>You're doing great</p>
  },
  electrificationOfHomeCooking: {
    label: 'Electrification of home cooking',
    value: 1,
    group: groups.buildings,
    leverDescriptions: [
      'No change in electricity/gas split (68%/32%)',
      'All new households use electricity for cooking',
      'As per Level 2, plus half of existing gas cookers replaced with electricity',
      'All cooking uses electricity by 2050.'
    ],
    content: <p>You're doing great</p>
  },
  growthInManufacturing: {
    label: 'Growth in manufacturing',
    value: 1,
    group: groups.industry,
    leverDescriptions: [
      'Underlying energy demand increases by around 40% (1% growth per year)',
      'Underlying energy demand stays constant',
      'Underlying energy demand decreases by around 40% (1% reduction per year)'
    ],
    content: <p>You're doing great</p>
  },
  energyEfficiencyAndFuelSwitching: {
    label: 'Energy efficiency and fuel switching',
    value: 1,
    group: groups.industry,
    leverDescriptions: [
      'No energy efficiency improvements beyond Business as Usual; no change in fuel mix',
      'Energy efficiency improves by around 10% beyond Business as Usual; some fuel switching to electricity and biomass',
      'Energy efficiency improves by around 20% beyond Business as Usual; high level of fuel switching to electricity and biomass',
      'Energy efficiency improves by around 40% beyond Business as Usual; very high level of fuel switching to electricity and biomass'
    ],
    content: <p>You're doing great</p>
  },
  commercialSpaceAndWaterHeatingDemand: {
    label: 'Commercial space and water heating demand',
    value: 1,
    group: groups.buildings,
    leverDescriptions: [
      'No change in space and water heating demand per building (by floor area)',
      'Space and water heating demand per building decrease by 10%',
      'Space and water heating demand per building decrease by 20%',
      'Space and water heating demand per building decrease by 30%'
    ],
    content: <p>You're doing great</p>
  },
  commercialHeatingTechnology: {
    label: 'Commercial heating technology',
    value: 1,
    group: groups.buildings,
    leverDescriptions: [
      'Space and water heating technology mix unchanged from today (53% space heating and 58% water heating electric).',
      'All new commercial buildings use electric space and water heating, primarily heat pumps.',
      'As per Level 2, plus half of current non-electric heating converted to heat pump.',
      'All non-electric heating converted to heat pump by 2050.'
    ],
    content: <p>You're doing great</p>
  },
  commercialLightingAndAppliances: {
    label: 'Commercial lighting and appliances',
    value: 1,
    group: groups.buildings,
    leverDescriptions: [
      'No change in energy demand per building (by floor area)',
      'Energy demand per building decreases by 10%',
      'Energy demand per building decreases by 30%',
      'Energy demand per building decreases by 50%'
    ],
    content: <p>You're doing great</p>
  },
  electrificationOfCommercialCooking: {
    label: 'Electrification of commercial cooking',
    value: 1,
    group: groups.buildings,
    leverDescriptions: [
      'No change in electricity/gas split (49%/51%)',
      'Electricity share of cooking increases to 60%',
      'Electricity share of cooking increases to 75%',
      'Electricity share of cooking increases to 100%'
    ],
    content: <p>You're doing great</p>
  },
  refrigerantGases: {
    label: 'Refrigerant gases',
    value: 1,
    group: groups.industry,
    leverDescriptions: [
      'Hydrofluorocarbons emissions double by 2050',
      'Emissions decrease nearly 90% by 2050 in accordance with the Montreal Protocol'
    ],
    content: <p>You're doing great</p>
  }
}
