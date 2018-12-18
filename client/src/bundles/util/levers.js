// Adding another lever? Make sure to add to `selectLeverString` in the correct location
// Label must match the key of each object. TODO: fix

const tabs = {
  demand: 'Demand',
  supply: 'Supply',
  other: 'Other'
}

const groups = {
  electricitySupply: {
    label: 'Electricity Supply',
    tab: tabs.demand
  },
  agricultureAndLandUse: {
    label: 'Agriculture & Land Use',
    tab: tabs.demand
  },
  wasteAndBiofuel: {
    label: 'Waste & Biofuel',
    tab: tabs.demand
  },
  transportLightVehicles: {
    label: 'Transport (Light Vehicles)',
    tab: tabs.demand
  },
  transportHeavyVehicles: {
    label: 'Transport (Heavy Vehicles)',
    tab: tabs.demand
  },
  buildings: {
    label: 'Buildings',
    tab: tabs.supply
  },
  refrigerantGases: {
    label: 'Refrigerant gases',
    tab: tabs.other
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
    ]
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
    ]
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
    ]
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
    ]
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
    ]
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
    ]
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
    ]
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
    ]
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
    ]
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
    ]
  },
  landfillGasCaptureAndEfw: {
    label: 'Landfill gas capture and EFW',
    value: 1,
    group: groups.wasteAndBiofuel,
    leverDescriptions: [
      'LFG capture remains at 58%',
      'LFG capture increases to 70% in 2050',
      'LFG capture increases to 77%; 25% of food & garden waste processed in anaerobic digesters',
      'LFG capture increases to 77%; 50% of food & garden waste processed in anaerobic digesters'
    ]
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
    ]
  },
  travelDemand: {
    label: 'Travel demand',
    value: 1,
    group: groups.transportLightVehicles,
    leverDescriptions: [
      'In 2050, people travel ~12% more than today',
      'People travel the same distance as today',
      'People travel 10% less than today',
      'People travel 20% less than today'
    ]
  },
  modeShare: {
    label: 'Mode share',
    value: 1,
    group: groups.transportLightVehicles,
    leverDescriptions: [
      'No change in mode share with ~90% of travel by car & van',
      'Moderate shift towards public & active transport; 82% of travel by car & van in 2050',
      'Large shift towards public & active transport; 77% of travel by car & van',
      'Very large shift towards public & active transport; 70% of travel by car & van'
    ]
  },
  vehicleOccupancy: {
    label: 'Vehicle occupancy',
    value: 1,
    group: groups.transportLightVehicles,
    leverDescriptions: [
      'No change, average of ~1.6 passengers per light vehicle',
      'Occupancy increases to ~1.7 passengers per vehicle in 2050',
      'Occupancy increases to ~1.8 passengers per vehicle in 2050',
      'Occupancy increases to 1.86 passengers per vehicle in 2050'
    ]
  },
  electrificationOfLightVehicles: {
    label: 'Electrification of light vehicles',
    value: 1,
    group: groups.transportLightVehicles,
    leverDescriptions: [
      '6% of light vehicle travel done in EVs in 2050',
      '24% of light vehicle travel done in EVs in 2050',
      '46% of light vehicle travel done in EVs in 2050',
      '100% of light vehicle travel done in EVs in 2050'
    ]
  },
  electrificationOfPublicTransport: {
    label: 'Electrification of public transport',
    value: 1,
    group: groups.transportLightVehicles,
    leverDescriptions: [
      'No electric buses and no further electrification of rail',
      '45% of bus travel electrified in 2050; no electrification of rail',
      'Full bus fleet electrified by 2045; Wairarapa line electrified in 2035',
      'Full bus fleet electrified by 2030; Wairarapa line electrified in 2025'
    ]
  },
  vehicleFuelEfficiencies: {
    label: 'Vehicle fuel efficiencies',
    value: 1,
    group: groups.transportLightVehicles,
    leverDescriptions: [
      'No change in fuel efficiency of petrol/diesel cars (~10.5 L/100km); slight improvement for buses',
      'By 2050, car fuel efficiency improves to ~6 L/100km, bus efficiency improves by ~50%',
      'Car fuel efficiency improves to ~5 L/100km; bus efficiency more than doubles',
      'Car fuel efficiency improves to ~3.5 L/100km in 2050; bus efficiency nearly triples'
    ]
  },
  freightVolume: {
    label: 'Freight volume',
    value: 1,
    group: groups.transportHeavyVehicles,
    leverDescriptions: [
      'Freight volume grows by ~50% by 2050',
      'Freight volume grows by ~33%',
      'Freight volume grows by ~15% (plateauing in 2040)',
      'Freight volume peaks around 2030 then declines'
    ]
  },
  electrificationOfTrucks: {
    label: 'Electrification of trucks',
    value: 1,
    group: groups.transportHeavyVehicles,
    leverDescriptions: [
      'No electric trucks',
      '10% of truck travel electrified in 2050',
      '25% of truck travel electrified in 2050',
      '50% of truck travel electrified in 2050'
    ]
  },
  freightModeAndEfficiency: {
    label: 'Freight Mode and efficiency',
    value: 1,
    group: groups.transportHeavyVehicles,
    leverDescriptions: [
      'No change from current mode share (19% of tonne-km by rail) or efficiency of road freight',
      'Rail share of tonne-km increases to 25% and road freight efficiency improves by 30% (not including electrification)',
      'Rail share of tonne-km increases to 30% and road freight efficiency improves by 50%',
      'Rail share of tonne-km increases to 40% and road freight efficiency improves by 60%'
    ]
  },
  demand: {
    label: 'Demand',
    value: 1,
    group: groups.transportHeavyVehicles,
    leverDescriptions: [
      'Passenger numbers nearly triple by 2050 (3% growth per year)',
      'Passenger numbers double (2% growth per year)',
      'Passenger numbers grow by around 40% (1% growth per year)'
    ]
  },
  efficiency: {
    label: 'Efficiency',
    value: 1,
    group: groups.transportHeavyVehicles,
    leverDescriptions: [
      'Fuel use per passenger falls by 1% per year',
      'Fuel use per passenger falls by 2% per year',
      'Fuel use per passenger falls by 2.5% per year',
      'Fuel use per passenger falls by 3% per year'
    ]
  },
  nationalMarineTransport: {
    label: 'National marine transport',
    value: 1,
    group: groups.transportHeavyVehicles,
    leverDescriptions: [
      'No change in annual fuel use',
      'Fuel use decreases by 10% by 2050',
      'Fuel use decreases by 20%',
      'Fuel use decreases by 50%'
    ]
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
    ]
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
    ]
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
    ]
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
    ]
  },
  growthInManufacturing: {
    label: 'Growth in manufacturing',
    value: 1,
    group: groups.buildings,
    leverDescriptions: [
      'Underlying energy demand increases by around 40% (1% growth per year)',
      'Underlying energy demand stays constant',
      'Underlying energy demand decreases by around 40% (1% reduction per year)'
    ]
  },
  energyEfficiencyAndFuelSwitching: {
    label: 'Energy efficiency and fuel switching',
    value: 1,
    group: groups.buildings,
    leverDescriptions: [
      'No energy efficiency improvements beyond BAU; no change in fuel mix',
      'Energy efficiency improves by around 10% beyond BAU; some fuel switching to electricity and biomass',
      'Energy efficiency improves by around 20% beyond BAU; high level of fuel switching to electricity and biomass',
      'Energy efficiency improves by around 40% beyond BAU; very high level of fuel switching to electricity and biomass'
    ]
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
    ]
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
    ]
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
    ]
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
    ]
  },
  solventAndProductUse: {
    label: 'Solvent and product use',
    value: 1,
    group: groups.refrigerantGases,
    leverDescriptions: [
      'HFC emissions double by 2050',
      'Emissions decrease nearly 90% by 2050 in accordance with the Montreal Protocol'
    ]
  }
}
