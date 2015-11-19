define([], function() {
  'use strict';

  return {
    EXAMPLES: [

    ],

    // types guide
    // ACTION_TYPES = [
    //   { "id": 1, "name": "rangeInt" },
    //   { "id": 2, "name": "rangeFloat" },
    //   { "id": 3, "name": "radio" }
    // ];



    PATHWAY_ACTIONS: [

      { name: "Biogas power generation", categoryId: 2, typeId: 3, max: 3, pathwayStringIndex: 0, tags: ['Local'], tooltips: {
        "1": "100% of local biogas supply is used for electricity generation",
        "2": "From 2020, 50% of local biogas supply is used for electricity generation and the remainder displaces natural gas demand.",
        "3": "From 2020, 100% of local biogas supply is used for non-electricity purposes and displaces natural gas demand.",
         }, pdf: "/assets/onepage/BiogasUse.pdf" , info: "supply/biogas-use" },

      { name: "Solar panels for electricity", categoryId: 2, typeId: 1, pathwayStringIndex: 1, tags: ["Local", "Regional", "National"], tooltips: {
        "1": "By 2050, 1.5% of Wellington households have solar PV panels and other installations total 15,000 m2.",
        "2": "By 2050, 11% of Wellington households have solar PV panels and other installations total 36,000 m2.",
        "3": "By 2050, 25% of Wellington households have solar PV panels and other installations total 53,500 m2.",
        "4": "By 2050, 50% of Wellington households have solar PV panels and other installations total 71,000 m2."
         }, pdf: "/assets/onepage/SolarPV.pdf" , info: "supply/solar-panels-for-electricity" },

      { name: "Solar panels for hot water", categoryId: 2, typeId: 1, pathwayStringIndex: 2, tags: ["Local", "Regional", "National"], tooltips: {
        "1": "By 2050, 2% of Wellington households have solar hot water and other installations total 14,000 m2.",
        "2": "By 2050, 9% of Wellington households have solar hot water and other installations total 35,000 m2.",
        "3": "By 2050, 28% of Wellington households have solar hot water and other installations total 52,500 m2.",
        "4": "By 2050, 50% of Wellington households have solar hot water and other installations total 70,000 m2."
       }, pdf: "/assets/onepage/SolarHotWater.pdf", info: "supply/solar-panels-for-hot-water" },

       // Electricity imports from national grid 3
       { name: "Electricity imports from national grid", categoryId: 2, typeId: 1, pathwayStringIndex: 3, tags: ["National"], tooltips: {
         "1": "Electricity mix remains similar to today resulting in constant emissions factor of 0.14 kg CO2e / kWh.",
         "2": "Electricity mix moves to 90% renewable by 2025 and then remains steady with emissions factor of 0.07 kg CO2e / kWh.",
         "3": "Electricity mix transitions smoothly to 100% renewable by 2050 (emissions factor of 0.03 kg CO2e / kWh).",
         "4": "Electricity mix transitions to 100% renewable by 2030 (emissions factor of 0.03 kg CO2e / kWh)."
        }, pdf: "/assets/onepage/NationalGridElectricity.pdf", info: "supply/electricity-imports-national-grid" },

       // Forestry 5
       { name: "Forestry", categoryId: 2, typeId: 1, pathwayStringIndex: 5, tags: ["Regional", "National"], tooltips: {
         "1": "Native vegetation area remains constant, pine plantations all harvested at maturity and not replanted.",
         "2": "Native vegetation area increases by 3 hectares per year, pine plantations all replanted after harvesting to maintain constant area.",
         "3": "Native vegetation area increases by 6 hectares per year, pine plantation all replanted after harvesting and additional 8 hectares planted per year.",
         "4": "Native vegetation area increases by 9 hectares per year, pine plantation all replanted after harvesting and additional 15 hectares planted per year."
        }, pdf: "/assets/onepage/Forestry.pdf", info: "supply/forestry" },

       // Livestock and their management 6
       { name: "Livestock and their management", categoryId: 2, typeId: 1, pathwayStringIndex: 6, tags: ["Regional", "National"], tooltips: {
         "1": "Cow numbers increase by 2% per year, sheep numbers remain constant, emissions per animal keep increasing at 0.7% per year.",
         "2": "Cow numbers increase by 1% per year, sheep numbers decline by 2% per year, emissions per animal increase at reduced rate of 0.4% per year after 2020.",
         "3": "Cow numbers remain constant, sheep numbers decline by 2% per year, emissions per animal increase remain constant after 2020.",
         "4": "Cow numbers decline by 2% per year, sheep numbers decline by 3% per year, emissions per animal reduce by 0.7% per year after 2020."
        }, pdf: "/assets/onepage/Agriculture.pdf", info: "supply/agriculture" },

       // Waste volumes  8
       { name: "Waste volumes", categoryId: 2, typeId: 1, pathwayStringIndex: 8, tags: ["Local", "Regional"], tooltips: {
         "1": "Waste volumes remain at current levels, sewage sludge volumes increase with population.",
         "2": "Food waste is reduced by 21% from 2020 (Love Food Hate Waste scheme), all other waste volumes the same as Level 1.",
         "3": "Same as Level 2.",
         "4": "Same as Level 2."
       }, pdf: "/assets/onepage/WasteVolumes.pdf", info: "supply/waste-volumes" },


       { name: "Waste processing", categoryId: 2, typeId: 1, pathwayStringIndex: 9, tags: ["Local", "Regional"], tooltips: {
         "1": "No increase in fraction of waste recycled or composted, no Energy From Waste, no increase in landfill gas capture.",
         "2": "Food waste composting increases to 35% (kerbside organics collection), sewage sludge diverted for EFW from 2020, landfill gas capture and use for energy increases gradually.",
         "3": "35% of food waste diverted for EFW along with sewage sludge from 2020, landfill gas capture and use for energy increases to maximum by 2025.",
         "4": "50% of food waste diverted for EFW along with sewage sludge from 2020, landfill gas capture and use for energy increases to maximum by 2020."
       }, pdf: "/assets/onepage/WasteProcessing.pdf", info: "supply/waste-processing" },


       { name: "Biomass supply", categoryId: 2, typeId: 1, pathwayStringIndex: 11, tags: ["National"], tooltips: {
         "1": "No bioenergy imports.",
         "2": "National supply from biomass residues only; Wellington allocated per capita share.",
         "3": "National supply based on NZ Bioenergy Strategy, with some dedicated biomass plantations; Wellington allocated per capita share.",
         "4": "Extreme biomass scenario via Scion Research - all suitable land converted to woody biomass production (3.3 million ha); Wellington allocated per capita share."
       }, pdf: "/assets/onepage/BiomassSupply.pdf", info: "supply/biomass-supply" },

       // Bomass supply 11
       { name: "Type of Fuel", categoryId: 2, typeId: 1, pathwayStringIndex: 12, tags: ["National"], tooltips: {
         "1": "Equal parts of biomass supply converted to solid, liquid and gaseous fuels (1/3 each).",
         "2": "All biomass supply in solid form.",
         "3": "All biomass supply converted to liquid fuels.",
         "4": "All biomass supply converted to biogas."
       }, pdf: "/assets/onepage/BioenergyType.pdf", info: "supply/bioenergy-type" },

       // Travel Demand 13
       { name: "Travel Demand", categoryId: 1, typeId: 1, pathwayStringIndex: 15, tags: ["National"], tooltips: {
         "1":  "Travel demand per person (in passenger-kilometres) increases to 27% higher by 2050.",
         "2": "Travel demand per person (in passenger-kilometres) declines slightly to 2% lower by 2050.",
         "3": "Travel demand per person (in passenger-kilometres) declines to 21% lower by 2050.",
         "4": "Travel demand per person (in passenger-kilometres) declines significantly to 40% lower by 2050."
       }, pdf: "/assets/onepage/TravelDemand.pdf", info: "demand/travel-demand" },

       // Public Transport 14
       { name: "Public Transport", categoryId: 1, typeId: 1, pathwayStringIndex: 16, tags: ["Local", "Regional", "National"], tooltips: {
         "1": "Bus and train mode shares stay at current levels of approximately 7% and 2% respectively.",
         "2": "Bus mode share increases to 13-14% by 2050, train mode share stays at 2%.",
         "3": "Bus mode share increases to 17-18% and train mode share increases to 4% by 2050.",
         "4": "Bus mode share increases to 21-22% and train mode share increases to 5% by 2050."
       }, pdf: "/assets/onepage/PublicTransport.pdf", info: "demand/public-transport" },

      // Active Transport 15
      { name: "Active Transport", categoryId: 1, typeId: 1, pathwayStringIndex: 17, tags: ["Local", "National"], tooltips: {
        "1": "Walking and cycling mode shares stay at current levels of 2% and 1% respectively.",
        "2": "Cycling mode share increases to 1.5% by 2050, walking mode share stays at 2%.",
        "3": "Cycling mode share increases to 2.5-2.8% by 2050, walking mode share stays at 2%.",
        "4": "Cycling mode share increases to 4-5% and walking mode share increases to 3% by 2050."
       }, pdf: "/assets/onepage/ActiveTransport.pdf", info: "demand/active-transport" },

       { name: "Vehicle occupancy", categoryId: 1, typeId: 1, pathwayStringIndex: 18, tags: ["Regional", "National"], tooltips: {
         "1": "Average vehicle occupancies stay at current levels.",
         "2": "Bus loadings increase from 25 to 40 passengers in 2020 as a result of higher capacity buses.",
         "3": "Bus loadings as per Level 2; car occupancy increases from 1.54 to 2.5 by 2050 as a result of increased ride sharing.",
         "4": "Car occupancy increases to 2.5 passengers by 2035 before plateauing, and bus loadings increase further to 60 passengers by 2040."
        }, pdf: "/assets/onepage/VehicleOccupancies.pdf", info: "demand/vehicle-occupancy" },

      // Electrification of light vehicles 17
      { name: "Electrification of light vehicles", categoryId: 1, typeId: 1, pathwayStringIndex: 19, tags: ["National"], tooltips: {
        "1": "Limited uptake of electric vehicles and plug-in hybrids, totalling 7% of the light vehicle fleet by 2050.",
        "2": "As per Level 1",
        "3": "Plug-in hybrids and full EVs reach 38% and 4% of the light vehicle fleet respectively by 2050.",
        "4": "Plug-in hybrids and full EVs reach 34% and 66% of the light vehicle fleet respectively by 2050."
       }, pdf: "/assets/onepage/ElectrificationLightVehicles.pdf", info: "demand/electrification-light-vehicles" },

       // Electrification of public transport 18
       { name: "Electrification of public transport", categoryId: 1, typeId: 1, pathwayStringIndex: 20, tags: ["Local", "Regional", "National"], tooltips: {
         "1": "Electric trolley buses are replaced by diesel buses by 2020 on and no further electrification of passenger rail.",
         "2": "Hybrid buses used for 46% of passenger-kilometres from 2020 with the remainder from diesel phased out for battery electric buses by 2050.",
         "3": "Immediate transition to battery electric buses from 2020 with diesel buses phased out by 2035.",
         "4": "As per Level 3."
        }, pdf: "/assets/onepage/ElectrificationPT.pdf", info: "demand/electrification-pt" },

        // Vehicle fuel efficiencies 19
        { name: "Vehicle fuel efficiencies", categoryId: 1, typeId: 1, pathwayStringIndex: 21, tags: ["National"], tooltips: {
          "1": "No change from current fuel efficiencies.",
          "2": "By 2050, cars 10% more efficient, buses and trains 5% more efficient.",
          "3": "By 2050, cars 20% more efficient, buses and trains 10% more efficient.",
          "4": "By 2050, cars 69% more efficient, buses and trains 20-40% more efficient."
         }, pdf: "/assets/onepage/VehicleEfficiencies.pdf", info: "demand/vehicle-fuel-efficiencies" },

         // Freight volume 21. MISSING PDF
         { name: "Freight volume", categoryId: 1, typeId: 1, pathwayStringIndex: 23, tags: ["National"], tooltips: {
           "1": "By 2050, freight task (in tonne-kilometres) increases 50% from 2015 level.",
           "2": "By 2050, freight task increases 30% from 2015 level.",
           "3": "Freight task remains constant at 2015 level.",
           "4": "By 2050, freight task decreases 30% from 2015 level."
          }, pdf: "/assets/onepage/ActiveTransport.pdf", info: "demand/solar-panels-for-hot-water" },

          // Mode and efficiency 22. MISSING PDF
          { name: "Mode and efficiency", categoryId: 1, typeId: 1, pathwayStringIndex: 24, tags: ["National"], tooltips: {
            "1": "No change in freight mode share or rail electrification. Small increase in vehicle loadings. Fuel efficiencies assumed fixed.",
            "2": "By 2050, rail mode share increases from 19% to 22%, vehicle loadings increase by roughly 35%.",
            "3": "By 2050, rail mode share increases to 25%, vehicle loadings increase by roughly 60%.",
            "4": "By 2050, rail mode share increases to 30% and all rail travel is electrified, vehicle loadings increase by roughly 80%."
           }, pdf: "/assets/onepage/ActiveTransport.pdf", info: "demand/solar-panels-for-hot-water" },

           // Domestic aviation 23. MISSING PDF
           { name: "Domestic aviation", categoryId: 1, typeId: 1, pathwayStringIndex: 25, tags: ["National"], tooltips: {
             "1": "Fuel consumption roughly doubles in line with growth in arrivals.",
             "2": "Fuel consumption remains constant at 2015 level with efficiency gains offsetting passenger growth.",
             "3": "By 2050, fuel consumption reduces 10% from 2015 level due to efficiency gains.",
             "4": "By 2050, fuel consumption reduces 25% from 2015 level due to efficiency gains."
            }, pdf: "/assets/onepage/ActiveTransport.pdf", info: "demand/solar-panels-for-hot-water" },

            // Domestic navigation 24. MISSING PDF
            { name: "Domestic navigation", categoryId: 1, typeId: 1, pathwayStringIndex: 26, tags: ["National"], tooltips: {
              "1": "Fuel consumption remains constant at 2015 level.",
              "2": "Fuel consumption declines 10% from 2015 level.",
              "3": "Fuel consumption declines 20% from 2015 level.",
              "4": "Fuel consumption declines 50% from 2015 level."
             }, pdf: "/assets/onepage/ActiveTransport.pdf", info: "demand/solar-panels-for-hot-water" },

           // Space and water heating demand 26
           { name: "Space and water heating demand", categoryId: 1, typeId: 1, pathwayStringIndex: 28, tags: ["Local", "National"], tooltips: {
             "1": "Space heating demand per household grows at 0.1% per year; water heating demand per household constant.",
             "2": "Space heating and water heating demand per household reduce at 0.1% and 0.2% per year respectively.",
             "3": "Space heating and water heating demand per household reduce at 0.2% and 0.4% per year respectively.",
             "4": "Space heating and water heating demand per household reduce at 0.4% and 0.8% per year respectively."
            }, pdf: "/assets/onepage/HouseholdHeatingDemand.pdf", info: "demand/space-and-water" },

          // Heating technology 27
          { name: "Heating technology", categoryId: 1, typeId: 1, pathwayStringIndex: 29, tags: ["Local", "National"], tooltips: {
            "1": "Space and water heating technology mix unchanged from today.",
            "2": "All new households use electric space and water heating.",
            "3": "All new households and half of existing households use electric space and water heating by 2050.",
            "4": "All space and water heating electrified by 2050."
          }, pdf: "/assets/onepage/HouseholdHeatingTech.pdf", info: "demand/household-heating-tech" },

          // Home lighting & appliances 29
          { name: "Home lighting & appliances", categoryId: 1, typeId: 1, pathwayStringIndex: 31, tags: ["Local"], tooltips: {
            "1": "Electricity demand per household stays constant at 2012 level.",
            "2": "By 2050, electricity demand per household reduces to 67% of 2012 level.",
            "3": "By 2050, electricity demand per household reduces to 50% of 2012 level.",
            "4": "By 2050, electricity demand per household reduces to 33% of 2012 level."
          }, pdf: "/assets/onepage/HouseholdLightingAndAppliances.pdf", info: "demand/household-lighting-and-appliances" },

          // Electrification of home cooking 30
          { name: "Electrification of home cooking", categoryId: 1, typeId: 1, pathwayStringIndex: 32, tags: ["Local"], tooltips: {
            "1": "Electricity/gas split remains at current level of 68%/32%.",
            "2": "All new homes use electric cooking; 75% electricity by 2050.",
            "3": "All new homes and half of existing homes use electric cooking; 88% electric by 2050.",
            "4": "All cooking uses electricity by 2050."
          }, pdf: "/assets/onepage/HouseholdCookingElectrification.pdf", info: "demand/household-cooking-electrification" },

          // Growth in industry 32
          { name: "Growth in industry", categoryId: 1, typeId: 3, max: 3, pathwayStringIndex: 34, tags: ["National"], tooltips: {
            "1": "Industry output grows at 2% per year.",
            "2": "Industry output grows at 0.5% per year.",
            "3": "Industry output declines at 1% per year.",
          }, pdf: "/assets/onepage/IndustryGrowth.pdf", info: "demand/industry-growth" },

          // Energy intensity of industry 33
          { name: "Energy intensity of industry", categoryId: 1, typeId: 3, max: 3, pathwayStringIndex: 35, tags: ["National"], tooltips: {
            "1": "Energy intensity improves by 0.5% per year; fuel mix remains the same as today.",
            "2": "Energy intensity improves by 1% per year; some substitution of electricity for gas and LPG/diesel.",
            "3": "Energy intensity improves by 1.5% per year; considerable substitution of electricity for gas and LPG/diesel.",
          }, pdf: "/assets/onepage/IndustrialEnergyIntensity.pdf", info: "demand/industrial-energy-intensity" },

          // Commercial demand for heating and cooling 35
          { name: "Commercial demand for heating and cooling", categoryId: 1, typeId: 1, pathwayStringIndex: 37, tags: ["Local", "National"], tooltips: {
            "1": "Space heating and water heating demand per square metre of commercial floor space stay constant.",
            "2": "Space heating demand and water heating demand per square metre reduce at 0.15% and 0.2% per year respectively.",
            "3": "Space heating demand and water heating demand per square metre reduce at 0.3% and 0.4% per year respectively.",
            "4": "Space heating demand and water heating demand per square metre reduce at 0.6% and 0.8% per year respectively."
          }, pdf: "/assets/onepage/CommercialHeatingDemand.pdf", info: "demand/commercial-heating-demand" },

          { name: "Commercial heating electrification", categoryId: 1, typeId: 1, pathwayStringIndex: 38, tags: ["Local", "National"], tooltips: {
            "1": "Space and water heating technology mix unchanged from today (53% space heating and 68% water heating electric).",
            "2": "By 2050, 58% of space heating and 74% of water heating electric, growth primarily from heat pumps.",
            "3": "By 2050, 74% of space heating and 82% of water heating electric, growth primarily from heat pumps.",
            "4": "By 2050, 100% of space and water heating electric, growth primarily from heat pumps."
          }, pdf: "/assets/onepage/CommercialHeatingTech.pdf", info: "demand/commercial-heating-tech" },

          { name: "Commercial lighting & appliances", categoryId: 1, typeId: 1, pathwayStringIndex: 40, tags: ["Local", "National"], tooltips: {
            "1": "Electricity demand per square metre of commercial floor space stays constant at 2012 level.",
            "2": "By 2050, electricity demand per square metre reduces to 95% of 2012 level (-0.15% per year)",
            "3": "By 2050, electricity demand per square metre reduces to 90% of 2012 level (-0.3% per year).",
            "4": "By 2050, electricity demand per square metre reduces to 81% of 2012 level (-0.6% per year)."
          }, pdf: "/assets/onepage/CommercialLightingAndAppliances.pdf", info: "demand/commercial-lighting-and-appliances" },

          { name: "Electrification of commercial cooking", categoryId: 1, typeId: 1, pathwayStringIndex: 41, tags: ["Local", "National"], tooltips: {
            "1": "Electricity/gas split remains at current level of 48%/52%.",
            "2": "60% of cooking uses electricity by 2050.",
            "3": "75% of cooking uses electricity by 2050.",
            "4": "All cooking uses electricity by 2050."
          }, pdf: "/assets/onepage/CommercialCookingElectrification.pdf", info: "demand/commercial-cooking-electrification" },

          { name: "Solvent & product use", categoryId: 3, typeId: 1, pathwayStringIndex: 42, tags: ["National"], tooltips: {
            "1": "Total GHG emissions increase at 3.5% per year.",
            "2": "Total GHG emissions increase at 1% per year from 2015.",
            "3": "Total GHG emissions reduce at 2% per year from 2015.",
            "4": "Total GHG emissions reduce at 5% per year from 2015."
          }, pdf: "/assets/onepage/SolventsAndProductUse.pdf", info: "demand/solvents-and-product-use" },

    ],

    ACTION_CATEGORIES: [
      { "id": 1, "name": "Demand" },
      { "id": 2, "name": "Supply" },
      { "id": 3, "name": "Other" }
    ]
  }
});
