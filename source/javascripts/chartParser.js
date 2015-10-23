define([], function() {
  'use strict';

  // The sankey data has all years
  // this selects just the 2050 year
  function selectSankeyYear(row) {
    return [row[0], row[11], row[1]];
  }

  var ChartParser = function(data) {
    var self = this;
    self.data = data;
  };

  ChartParser.prototype = {

    all: function() {
      return {
        SummaryChart: this.summary(),

        OverviewChart: this.overview(),
        //
        EnergyDemandChart: this.energyDemand(),
        EnergySupplyChart: this.energySupply(),
        //
        // ElectricityDemandChart: this.electricityDemand(),
        // ElectricitySupplyChart: this.electricitySupply(),
        //
        // EnergyEmissionsChart: this.energyEmissions(),
        // ElectricityEmissionsChart: this.electricityEmissions(),
        //
        // FlowsChart: this.flowsBasic(),
        //
        // MapChart: this.map(),
        //
        // AirQualityChart: this.airQuality(),
        //
        // EnergySecurity: this.energySecurity(),
        //
        // CostsContextChart: this.costsSensitivity(),
        // CostsComparedChart: this.costsCompared(),
        // CostsSensitivityChart: this.costsSensitivity(),
        // CostsSensitivityComponentsChart: this.costsSensitivity(),
      }
    },


    energyDemandUnused: function() {
      return ["Total", "Food consumption [UNUSED]"];
    },

    energySupplyUnused: function() {
      return ["Total used in UK", "Electricity oversupply (imports)"];
    },

    energyEmissionsUnused: function() {
      return ["Total", "Targets"];
    },

    overviewDemandUnused: function() {
      return ["Total", "Food consumption [UNUSED]"];
    },

    overviewSupplyUnused: function() {
      return ["Total used in UK", "Electricity oversupply (imports)"];
    },

    overviewEmissionsUnused: function() {
      return ["Total", "Targets"];
    },

    electricityEmissionsUnused: function() {
      return ["Total"];
    },

    // CO2 reduction overview chart
    summary: function() {
      return Math.round(this.data.output_emissions_percentage_reduction*100);
    },

    overview: function() {
      console.log('overview', this.data)
      var data = {
        "Demand": this.data.final_energy_demand,
        "Supply": this.data.primary_energy_supply,
        "Emissions": this.data.ghg
      };

      // Data organised by chart -> date
      var overviewYearlyData = {
        "Demand": {
          "2010": [], "2015": [], "2020": [], "2025": [], "2030": [], "2035": [], "2040": [], "2045": [], "2050": []
        },
        "Supply": {
          "2010": [], "2015": [], "2020": [], "2025": [], "2030": [], "2035": [], "2040": [], "2045": [], "2050": []
        },
        "Emissions": {
          "2010": [], "2015": [], "2020": [], "2025": [], "2030": [], "2035": [], "2040": [], "2045": [], "2050": []
        }
      };


      for(var topicName in data) {
        var skipLayers = this["overview" + topicName + "Unused"]();
        var topic = data[topicName];

        for(var item in topic) {
          console.log(item)
          // Don't parse unused/total layers
          if(!skipLayers.some(function(skip){ return item === skip })) {
            // Loop data points of each GHG
            for(var i = 0; i < topic[item].length; i++) {
              var value = topic[item][i];
              var date = 2010 + i * 5;

              overviewYearlyData[topicName][date].push({ key: item, value: value });
            }
          }
        }
        overviewYearlyData[topicName].percentageReduction = Math.round(data.output_emissions_percentage_reduction * 100);
      }

      return overviewYearlyData;
    },

    // Generic stacked area vs line chart
    areaVsLine: function(layerData, lineData, skipLayers) {
      var chartLayers = [];
      var chartLine = [];
      for(var layerName in layerData) {

        // Don't parse unused/total layers
        if(!skipLayers.some(function(skip){ return layerName === skip })) {
          // Loop data points of each layer
          for(var i = 0; i < layerData[layerName].length; i++) {
            var value = layerData[layerName][i];
            var date = 2010 + i * 5;

            chartLayers.push({ key: layerName, date: date, value: value });
          }
        }
      }

      // Loop data points of line
      for(var i = 0; i < lineData.length; i++) {
        var value = lineData[i];
        var date = 2010 + i * 5;

        chartLine.push({ date: date, value: value });
      }

      return {
        chartLayers: chartLayers,
        chartLine: chartLine
      };
    },

    energyDemand: function() {
      var primaryData = this.data.final_energy_demand;
      var secondaryData = this.data.primary_energy_supply;

      var lineData = secondaryData["Total used in UK"];
      var skipLayers = this.energyDemandUnused();
      return this.areaVsLine(primaryData, lineData, skipLayers);
    },

    energySupply: function() {
      var primaryData = this.data.primary_energy_supply;
      var secondaryData = this.data.final_energy_demand;

      var lineData = secondaryData["Total"];
      var skipLayers = this.energySupplyUnused();
      return this.areaVsLine(primaryData, lineData, skipLayers);
    },


    electricityDemand: function() {
      var primaryData = this.data.electricity.demand;
      var secondaryData = this.data.electricity.supply;

      var lineData = secondaryData["Total"];
      var skipLayers = ["Total"];
      return this.areaVsLine(primaryData, lineData, skipLayers);
    },

    electricitySupply: function() {
      var primaryData = this.data.electricity.supply;
      var secondaryData = this.data.electricity.demand;

      var lineData = secondaryData["Total"];
      var skipLayers = ["Total"];
      return this.areaVsLine(primaryData, lineData, skipLayers);
    },


    energyEmissions: function() {
      var primaryData = this.data.ghg;
      var secondaryData = this.data.ghg["Total"];

      var skipLayers = this.energyEmissionsUnused();
      return this.areaVsLine(primaryData, secondaryData, skipLayers);
    },

    electricityEmissions: function() {
      var primaryData = this.data.electricity.ghg;
      var secondaryData = this.data.electricity.ghg["Total"];

      var skipLayers = this.energyEmissionsUnused();
      return this.areaVsLine(primaryData, secondaryData, skipLayers);
    },

    flowsBasic: function() {
      var data = this.data.sankey.slice(1).map(selectSankeyYear);

      return data;
    },

    flows: function() {
      var data = this.data.sankey.slice(1).map(selectSankeyYear);

      var nodes = {};
      var links = [];

      // Populate node object
      // Keys: names for searching
      // Values: IDs for sankey
      var count = 0;
      data.forEach(function(d) {
        if(d[1] === 0) {
          return true;
        }

        // Set any source node once and iterate counter
        if(!nodes[d[0]]) {
          nodes[d[0]] = count;
          count++;
        }

        // Set any target node once and iterate counter
        if(!nodes[d[2]]) {
          nodes[d[2]] = count;
          count++;
        }
      })

      // Populate links object
      data.forEach(function(d) {
        if(d[1] === 0) {
          return true;
        }

        links.push({
          "source": nodes[d[0]],
          "target": nodes[d[2]],
          "value": d[1]
        })
      });

      // Convert nodes object to array of objects
      var nodes = Object.keys(nodes).map(function(d) { return { "name": d }; });

      var data = {
        nodes: nodes,
        links: links
      };

      return data;
    },

    airQuality: function() {
      var data = this.data.air_quality;
      data.key = "2050 - Your pathway";

      return data;
    },

    energySecurity: function() {
      var data = this.data;

      var out = {
        imports: [],
        diversity: [],
        electricity: {
          auto: Math.round(data.balancing.automatically_built),
          peak: Math.round(data.balancing.peaking)
        }
      };

      var a;
      var value;

      ['imports', 'diversity'].forEach(function(importType) {
        a = data[importType];

        for(var prop in a) {
          if(a.hasOwnProperty(prop)) {
            value = a[prop];
            out[importType].push({ name: prop, t2007: value[2007], t2050: value[2050] });
          }
        }
      });

      return out;
    },

    // Groups cost sensitivity data by category
    costsCompared: function() {
      var data = this.data.costs;
      return data;
    },

    costsSensitivity: function() {
      var data = this.data.costs;
      var flattenedData = Object.keys(data).map(function(key) { return { key: key, value: data[key] } })

      return flattenedData;
    },
  };



  return ChartParser;
});
