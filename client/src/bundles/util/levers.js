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
    group: groups.electricitySupply
  },
  solarPanelsForElectricity: {
    label: 'Solar panels for electricity',
    value: 1,
    group: groups.electricitySupply
  },
  solarPanelsForHotWater: {
    label: 'Solar panels for hot water',
    value: 1,
    group: groups.electricitySupply
  },
  nationalGridElectricity: {
    label: 'National grid electricity',
    value: 1,
    group: groups.electricitySupply
  },
  landUseChange: {
    label: 'Land use change',
    value: 1,
    group: groups.agricultureAndLandUse
  },
  forestType: {
    label: 'Forest type',
    value: 1,
    group: groups.agricultureAndLandUse
  },
  livestockStockingRates: {
    label: 'Livestock stocking rates',
    value: 1,
    group: groups.agricultureAndLandUse
  },
  livestockEmissionsIntensityPracticeChange: {
    label: 'Livestock emissions intensity practice change',
    value: 1,
    group: groups.agricultureAndLandUse
  },
  livestockEmissionsIntensityNewTech: {
    label: 'Livestock emissions intensity new tech',
    value: 1,
    group: groups.agricultureAndLandUse
  },
  wasteVolumes: {
    label: 'Waste volumes',
    value: 1,
    group: groups.wasteAndBiofuel
  },
  landfillGasCaptureAndEfw: {
    label: 'Landfill gas capture and EFW',
    value: 1,
    group: groups.wasteAndBiofuel
  },
  biofuelSupply: {
    label: 'Biofuel supply',
    value: 1,
    group: groups.wasteAndBiofuel
  },
  travelDemand: {
    label: 'Travel demand',
    value: 1,
    group: groups.transportLightVehicles
  },
  modeShare: {
    label: 'Mode share',
    value: 1,
    group: groups.transportLightVehicles
  },
  vehicleOccupancy: {
    label: 'Vehicle occupancy',
    value: 1,
    group: groups.transportLightVehicles
  },
  electrificationOfLightVehicles: {
    label: 'Electrification of light vehicles',
    value: 1,
    group: groups.transportLightVehicles
  },
  electrificationOfPublicTransport: {
    label: 'Electrification of public transport',
    value: 1,
    group: groups.transportLightVehicles
  },
  vehicleFuelEfficiencies: {
    label: 'Vehicle fuel efficiencies',
    value: 1,
    group: groups.transportLightVehicles
  },
  freightVolume: {
    label: 'Freight volume',
    value: 1,
    group: groups.transportHeavyVehicles
  },
  electrificationOfTrucks: {
    label: 'Electrification of trucks',
    value: 1,
    group: groups.transportHeavyVehicles
  },
  freightModeAndEfficiency: {
    label: 'Freight Mode and efficiency',
    value: 1,
    group: groups.transportHeavyVehicles
  },
  demand: {
    label: 'Demand',
    value: 1,
    group: groups.transportHeavyVehicles
  },
  efficiency: {
    label: 'Efficiency',
    value: 1,
    group: groups.transportHeavyVehicles
  },
  nationalMarineTransport: {
    label: 'National marine transport',
    value: 1,
    group: groups.transportHeavyVehicles
  },
  homeSpaceAndWaterHeatingDemand: {
    label: 'Home space and water heating demand',
    value: 1,
    group: groups.buildings
  },
  homeHeatingTechnology: {
    label: 'Home heating technology',
    value: 1,
    group: groups.buildings
  },
  homeLightingAndAppliances: {
    label: 'Home lighting and appliances',
    value: 1,
    group: groups.buildings
  },
  electrificationOfHomeCooking: {
    label: 'Electrification of home cooking',
    value: 1,
    group: groups.buildings
  },
  growthInManufacturing: {
    label: 'Growth in manufacturing',
    value: 1,
    group: groups.buildings
  },
  energyEfficiencyAndFuelSwitching: {
    label: 'Energy efficiency and fuel switching',
    value: 1,
    group: groups.buildings
  },
  commercialSpaceAndWaterHeatingDemand: {
    label: 'Commercial space and water heating demand',
    value: 1,
    group: groups.buildings
  },
  commercialHeatingTechnology: {
    label: 'Commercial heating technology',
    value: 1,
    group: groups.buildings
  },
  commercialLightingAndAppliances: {
    label: 'Commercial lighting and appliances',
    value: 1,
    group: groups.buildings
  },
  electrificationOfCommercialCooking: {
    label: 'Electrification of commercial cooking',
    value: 1,
    group: groups.buildings
  },
  solventAndProductUse: {
    label: 'Solvent and product use',
    value: 1,
    group: groups.refrigerantGases
  }
}
