# coding: utf-8
# Test for model
require 'minitest/autorun'
require_relative 'model'

class TestModel < Minitest::Unit::TestCase
  def self.runnable_methods
    puts 'Overriding minitest to run tests in a defined order'
    methods = methods_matching(/^test_/)
  end
  def worksheet; @worksheet ||= init_spreadsheet; end
  def init_spreadsheet; Model.new end
  def test_control_e8; assert_in_delta(1.0, worksheet.control_e8, 0.002); end
  def test_control_e9; assert_in_delta(1.0, worksheet.control_e9, 0.002); end
  def test_control_e10; assert_in_delta(1.0, worksheet.control_e10, 0.002); end
  def test_control_e11; assert_in_epsilon(4.0, worksheet.control_e11, 0.002); end
  def test_control_e13; assert_in_epsilon(3.0, worksheet.control_e13, 0.002); end
  def test_control_e14; assert_in_delta(1.0, worksheet.control_e14, 0.002); end
  def test_control_e15; assert_in_delta(1.0, worksheet.control_e15, 0.002); end
  def test_control_e16; assert_in_delta(1.0, worksheet.control_e16, 0.002); end
  def test_control_e17; assert_in_delta(1.0, worksheet.control_e17, 0.002); end
  def test_control_e19; assert_in_delta(1.0, worksheet.control_e19, 0.002); end
  def test_control_e20; assert_in_delta(1.0, worksheet.control_e20, 0.002); end
  def test_control_e22; assert_in_epsilon(4.0, worksheet.control_e22, 0.002); end
  def test_control_e25; assert_in_delta(1.0, worksheet.control_e25, 0.002); end
  def test_control_e26; assert_in_delta(1.0, worksheet.control_e26, 0.002); end
  def test_control_e27; assert_in_delta(1.0, worksheet.control_e27, 0.002); end
  def test_control_e28; assert_in_epsilon(4.0, worksheet.control_e28, 0.002); end
  def test_control_e29; assert_in_delta(1.0, worksheet.control_e29, 0.002); end
  def test_control_e30; assert_in_delta(1.0, worksheet.control_e30, 0.002); end
  def test_control_e32; assert_in_delta(1.0, worksheet.control_e32, 0.002); end
  def test_control_e33; assert_in_epsilon(4.0, worksheet.control_e33, 0.002); end
  def test_control_e34; assert_in_delta(1.0, worksheet.control_e34, 0.002); end
  def test_control_e36; assert_in_delta(1.0, worksheet.control_e36, 0.002); end
  def test_control_e37; assert_in_epsilon(4.0, worksheet.control_e37, 0.002); end
  def test_control_e38; assert_in_delta(1.0, worksheet.control_e38, 0.002); end
  def test_control_e40; assert_in_delta(1.0, worksheet.control_e40, 0.002); end
  def test_control_e41; assert_in_delta(1.0, worksheet.control_e41, 0.002); end
  def test_control_e43; assert_in_delta(1.0, worksheet.control_e43, 0.002); end
  def test_control_e44; assert_in_delta(1.0, worksheet.control_e44, 0.002); end
  def test_control_e46; assert_in_delta(1.0, worksheet.control_e46, 0.002); end
  def test_control_e47; assert_in_epsilon(4.0, worksheet.control_e47, 0.002); end
  def test_control_e49; assert_in_delta(1.0, worksheet.control_e49, 0.002); end
  def test_control_e50; assert_in_delta(1.0, worksheet.control_e50, 0.002); end
  def test_control_e52; assert_in_delta(1.0, worksheet.control_e52, 0.002); end
  def test_control_e53; assert_in_delta(1.0, worksheet.control_e53, 0.002); end
  def test_control_e54; assert_in_epsilon(2.0, worksheet.control_e54, 0.002); end
  def test_control_e6; assert_equal("Greater Wellington", worksheet.control_e6.to_s.gsub(/[\n\r]+/,'')); end
  def test_control_i8; assert_equal("100% of local biogas supply used for electricity generation", worksheet.control_i8.to_s.gsub(/[\n\r]+/,'')); end
  def test_control_j8; assert_equal("50% of local biogas supply used for electricity generation, 50% replaces natural gas", worksheet.control_j8.to_s.gsub(/[\n\r]+/,'')); end
  def test_control_k8; assert_equal("100% of local biogas supply used to replace natural gas", worksheet.control_k8.to_s.gsub(/[\n\r]+/,'')); end
  def test_control_l8; assert_equal("n/a", worksheet.control_l8.to_s.gsub(/[\n\r]+/,'')); end
  def test_control_i9; assert_equal("In 2050, 4% of households have solar PV and other installations total 3 MW", worksheet.control_i9.to_s.gsub(/[\n\r]+/,'')); end
  def test_control_j9; assert_equal("9% of households have solar PV and other installations total 7 MW", worksheet.control_j9.to_s.gsub(/[\n\r]+/,'')); end
  def test_control_k9; assert_equal("15% of households have solar PV and other installations total 12 MW", worksheet.control_k9.to_s.gsub(/[\n\r]+/,'')); end
  def test_control_l9; assert_equal("25% of households have solar PV and other installations total 20 MW", worksheet.control_l9.to_s.gsub(/[\n\r]+/,'')); end
  def test_control_i10; assert_equal("In 2050, 3.2% of households have solar hot water", worksheet.control_i10.to_s.gsub(/[\n\r]+/,'')); end
  def test_control_j10; assert_equal("5% of households have solar hot water", worksheet.control_j10.to_s.gsub(/[\n\r]+/,'')); end
  def test_control_k10; assert_equal("10% of households have solar hot water", worksheet.control_k10.to_s.gsub(/[\n\r]+/,'')); end
  def test_control_l10; assert_equal("20% of households have solar hot water", worksheet.control_l10.to_s.gsub(/[\n\r]+/,'')); end
  def test_control_i11; assert_equal("~85% renewable generation in 2020 and then steady; 2050 emissions factor of 0.090 kgCO2e/kWh", worksheet.control_i11.to_s.gsub(/[\n\r]+/,'')); end
  def test_control_j11; assert_equal("~90% renewable generation by 2025 and then steady; 2050 emissions factor of 0.070 kgCO2e/kWh", worksheet.control_j11.to_s.gsub(/[\n\r]+/,'')); end
  def test_control_k11; assert_equal("~95% renewable generation by 2035 and then steady; 2050 emissions factor of 0.045 kgCO2e/kWh", worksheet.control_k11.to_s.gsub(/[\n\r]+/,'')); end
  def test_control_l11; assert_equal("Close to 100% renewable by 2035; emissions factor of 0.020 kgCO2e/kWh in 2050.", worksheet.control_l11.to_s.gsub(/[\n\r]+/,'')); end
  def test_control_i13; assert_equal("20,000 ha (6%) of sheep & beef land converted to dairy (+60%); no net change in forest land", worksheet.control_i13.to_s.gsub(/[\n\r]+/,'')); end
  def test_control_j13; assert_equal("5,000 ha of sheep & beef land converted to dairy (+15%), 45,000 ha planted in forest", worksheet.control_j13.to_s.gsub(/[\n\r]+/,'')); end
  def test_control_k13; assert_equal("65,000 ha (20%) of sheep & beef land planted in forest; no net change in dairy land", worksheet.control_k13.to_s.gsub(/[\n\r]+/,'')); end
  def test_control_l13; assert_equal("90,000 ha (27%) of sheep & beef land planted in forest; no net change in dairy land", worksheet.control_l13.to_s.gsub(/[\n\r]+/,'')); end
  def test_control_i14; assert_equal("All new forest planting is exotic plantation forest", worksheet.control_i14.to_s.gsub(/[\n\r]+/,'')); end
  def test_control_j14; assert_equal("1/3 of new forest planting is permanent native forest", worksheet.control_j14.to_s.gsub(/[\n\r]+/,'')); end
  def test_control_k14; assert_equal("2/3 of new forest planting is permanent native forest", worksheet.control_k14.to_s.gsub(/[\n\r]+/,'')); end
  def test_control_l14; assert_equal("All new forest planting is permanent native forest", worksheet.control_l14.to_s.gsub(/[\n\r]+/,'')); end
  def test_control_i15; assert_equal("By 2050 , stocking rates (per hectare) increase by 20% for dairy and 10% for sheep & beef", worksheet.control_i15.to_s.gsub(/[\n\r]+/,'')); end
  def test_control_j15; assert_equal("Stocking rates increase by 10% for dairy and 10% for sheep & beef", worksheet.control_j15.to_s.gsub(/[\n\r]+/,'')); end
  def test_control_k15; assert_equal("Stocking rates decrease by 10% for dairy; no change for sheep & beef", worksheet.control_k15.to_s.gsub(/[\n\r]+/,'')); end
  def test_control_l15; assert_equal("Stocking rates decrease by 20% for dairy; no change for sheep & beef", worksheet.control_l15.to_s.gsub(/[\n\r]+/,'')); end
  def test_control_i16; assert_equal("No emissions reductions from practice changes", worksheet.control_i16.to_s.gsub(/[\n\r]+/,'')); end
  def test_control_j16; assert_equal("Moderate adoption of practice changes, reducing total emissions per animal by 7-9% in 2050", worksheet.control_j16.to_s.gsub(/[\n\r]+/,'')); end
  def test_control_k16; assert_equal("High adoption of practice changes, reducing emissions per animal by 13-18%", worksheet.control_k16.to_s.gsub(/[\n\r]+/,'')); end
  def test_control_l16; assert_equal("Full adoption of practice changes, reducing emissions per animal by 21%", worksheet.control_l16.to_s.gsub(/[\n\r]+/,'')); end
  def test_control_i17; assert_equal("No emissions reductions from new technologies", worksheet.control_i17.to_s.gsub(/[\n\r]+/,'')); end
  def test_control_j17; assert_equal("Moderate adoption of methane & nitrification inhibitors in dairy only, reducing emissions per animal by 9% in 2050", worksheet.control_j17.to_s.gsub(/[\n\r]+/,'')); end
  def test_control_k17; assert_equal("High adoption of methane & nitrification inhibitors in dairy only, reducing emissions per animal by 17%", worksheet.control_k17.to_s.gsub(/[\n\r]+/,'')); end
  def test_control_l17; assert_equal("Full adoption of methane vaccine and widespread adoption of nitrification inhibitors, reducing emissions per animal by 21-33%", worksheet.control_l17.to_s.gsub(/[\n\r]+/,'')); end
  def test_control_i19; assert_equal("In 2050, waste collected per person is the same as in 2015", worksheet.control_i19.to_s.gsub(/[\n\r]+/,'')); end
  def test_control_j19; assert_equal("Waste collected per person reduces by ~30%", worksheet.control_j19.to_s.gsub(/[\n\r]+/,'')); end
  def test_control_k19; assert_equal("Waste collected per person reduces by ~50%", worksheet.control_k19.to_s.gsub(/[\n\r]+/,'')); end
  def test_control_l19; assert_equal("Waste collected per person reduces by ~66%", worksheet.control_l19.to_s.gsub(/[\n\r]+/,'')); end
  def test_control_i20; assert_equal("LFG capture remains at 58%", worksheet.control_i20.to_s.gsub(/[\n\r]+/,'')); end
  def test_control_j20; assert_equal("LFG capture increases to 70% in 2050", worksheet.control_j20.to_s.gsub(/[\n\r]+/,'')); end
  def test_control_k20; assert_equal("LFG capture increases to 77%; 25% of food & garden waste processed in anaerobic digesters", worksheet.control_k20.to_s.gsub(/[\n\r]+/,'')); end
  def test_control_l20; assert_equal("LFG capture increases to 77%; 50% of food & garden waste processed in anaerobic digesters", worksheet.control_l20.to_s.gsub(/[\n\r]+/,'')); end
  def test_control_i22; assert_equal("No liquid biofuel supply", worksheet.control_i22.to_s.gsub(/[\n\r]+/,'')); end
  def test_control_j22; assert_equal("Annual biofuel supply of up to ~100 litres per person by 2050", worksheet.control_j22.to_s.gsub(/[\n\r]+/,'')); end
  def test_control_k22; assert_equal("Annual biofuel supply of up to ~200 litres per person", worksheet.control_k22.to_s.gsub(/[\n\r]+/,'')); end
  def test_control_l22; assert_equal("Annual biofuel supply of up to ~400 litres per person", worksheet.control_l22.to_s.gsub(/[\n\r]+/,'')); end
  def test_control_i25; assert_equal("In 2050, people travel ~12% more than today", worksheet.control_i25.to_s.gsub(/[\n\r]+/,'')); end
  def test_control_j25; assert_equal("People travel the same distance as today", worksheet.control_j25.to_s.gsub(/[\n\r]+/,'')); end
  def test_control_k25; assert_equal("People travel 10% less than today", worksheet.control_k25.to_s.gsub(/[\n\r]+/,'')); end
  def test_control_l25; assert_equal("People travel 20% less than today", worksheet.control_l25.to_s.gsub(/[\n\r]+/,'')); end
  def test_control_i26; assert_equal("No change in mode share with ~90% of travel by car & van", worksheet.control_i26.to_s.gsub(/[\n\r]+/,'')); end
  def test_control_j26; assert_equal("Moderate shift towards public & active transport; 82% of travel by car & van in 2050", worksheet.control_j26.to_s.gsub(/[\n\r]+/,'')); end
  def test_control_k26; assert_equal("Large shift towards public & active transport; 77% of travel by car & van", worksheet.control_k26.to_s.gsub(/[\n\r]+/,'')); end
  def test_control_l26; assert_equal("Very large shift towards public & active transport; 70% of travel by car & van", worksheet.control_l26.to_s.gsub(/[\n\r]+/,'')); end
  def test_control_i27; assert_equal("No change, average of ~1.6 passengers per light vehicle", worksheet.control_i27.to_s.gsub(/[\n\r]+/,'')); end
  def test_control_j27; assert_equal("Occupancy increases to ~1.7 passengers per vehicle in 2050", worksheet.control_j27.to_s.gsub(/[\n\r]+/,'')); end
  def test_control_k27; assert_equal("Occupancy increases to ~1.8 passengers per vehicle in 2050", worksheet.control_k27.to_s.gsub(/[\n\r]+/,'')); end
  def test_control_l27; assert_equal("Occupancy increases to 1.86 passengers per vehicle in 2050", worksheet.control_l27.to_s.gsub(/[\n\r]+/,'')); end
  def test_control_i28; assert_equal("45% of light vehicle travel done in EVs in 2050", worksheet.control_i28.to_s.gsub(/[\n\r]+/,'')); end
  def test_control_j28; assert_equal("70% of light vehicle travel done in EVs in 2050", worksheet.control_j28.to_s.gsub(/[\n\r]+/,'')); end
  def test_control_k28; assert_equal("85% of light vehicle travel done in EVs in 2050", worksheet.control_k28.to_s.gsub(/[\n\r]+/,'')); end
  def test_control_l28; assert_equal("100% of light vehicle travel done in EVs in 2050", worksheet.control_l28.to_s.gsub(/[\n\r]+/,'')); end
  def test_control_i29; assert_equal("No electric buses and no further electrification of rail", worksheet.control_i29.to_s.gsub(/[\n\r]+/,'')); end
  def test_control_j29; assert_equal("45% of bus travel electrified in 2050; no electrification of rail", worksheet.control_j29.to_s.gsub(/[\n\r]+/,'')); end
  def test_control_k29; assert_equal("Full bus fleet electrified by 2045; Wairarapa line electrified in 2035", worksheet.control_k29.to_s.gsub(/[\n\r]+/,'')); end
  def test_control_l29; assert_equal("Full bus fleet electrified by 2030; Wairarapa line electrified in 2025", worksheet.control_l29.to_s.gsub(/[\n\r]+/,'')); end
  def test_control_i30; assert_equal("No change in fuel efficiency of petrol/diesel cars (~10 L/100km); slight improvement for buses", worksheet.control_i30.to_s.gsub(/[\n\r]+/,'')); end
  def test_control_j30; assert_equal("By 2050, car fuel efficiency improves to ~6 L/100km, bus efficiency improves by ~50%", worksheet.control_j30.to_s.gsub(/[\n\r]+/,'')); end
  def test_control_k30; assert_equal("Car fuel efficiency improves to ~5 L/100km; bus efficiency more than doubles", worksheet.control_k30.to_s.gsub(/[\n\r]+/,'')); end
  def test_control_l30; assert_equal("Car fuel efficiency improves to ~3.5 L/100km in 2050; bus efficiency nearly triples", worksheet.control_l30.to_s.gsub(/[\n\r]+/,'')); end
  def test_control_i32; assert_equal("Freight volume grows by 50% by 2050", worksheet.control_i32.to_s.gsub(/[\n\r]+/,'')); end
  def test_control_j32; assert_equal("Freight volume grows by 33%", worksheet.control_j32.to_s.gsub(/[\n\r]+/,'')); end
  def test_control_k32; assert_equal("Freight volume grows by 15% (plateauing in 2040)", worksheet.control_k32.to_s.gsub(/[\n\r]+/,'')); end
  def test_control_l32; assert_equal("Freight volume peaks around 2030 then declines", worksheet.control_l32.to_s.gsub(/[\n\r]+/,'')); end
  def test_control_i33; assert_equal("No electrification of trucks or rail freight", worksheet.control_i33.to_s.gsub(/[\n\r]+/,'')); end
  def test_control_j33; assert_equal("10% of truck travel electrified by 2050; all rail freight electrified in 2050.", worksheet.control_j33.to_s.gsub(/[\n\r]+/,'')); end
  def test_control_k33; assert_equal("25% of truck travel electrified by 2050; all rail freight electrified in 2035.", worksheet.control_k33.to_s.gsub(/[\n\r]+/,'')); end
  def test_control_l33; assert_equal("50% of truck travel electrified by 2050; all rail freight electrified in 2025.", worksheet.control_l33.to_s.gsub(/[\n\r]+/,'')); end
  def test_control_i34; assert_equal("No change from current mode share (19% of tonne-km by rail) or in the efficiency of road freight", worksheet.control_i34.to_s.gsub(/[\n\r]+/,'')); end
  def test_control_j34; assert_equal("Rail share of tonne-km increases to 25% and road freight efficiency improves by 30% (not including electrification)", worksheet.control_j34.to_s.gsub(/[\n\r]+/,'')); end
  def test_control_k34; assert_equal("Rail share of tonne-km increases to 30% and road freight efficiency improves by 50%", worksheet.control_k34.to_s.gsub(/[\n\r]+/,'')); end
  def test_control_l34; assert_equal("Rail share of tonne-km increases to 40% and road freight efficiency improves by 60%", worksheet.control_l34.to_s.gsub(/[\n\r]+/,'')); end
  def test_control_i36; assert_equal("Passenger numbers almost triple by 2050 (3% growth per year)", worksheet.control_i36.to_s.gsub(/[\n\r]+/,'')); end
  def test_control_j36; assert_equal("Passenger numbers double (2% growth per year)", worksheet.control_j36.to_s.gsub(/[\n\r]+/,'')); end
  def test_control_k36; assert_equal("Passenger numbers grow by around 40% (1% growth per year)", worksheet.control_k36.to_s.gsub(/[\n\r]+/,'')); end
  def test_control_l36; assert_equal("n/a", worksheet.control_l36.to_s.gsub(/[\n\r]+/,'')); end
  def test_control_i37; assert_equal("Fuel use per passenger falls by 1% per year", worksheet.control_i37.to_s.gsub(/[\n\r]+/,'')); end
  def test_control_j37; assert_equal("Fuel use per passenger falls by 2% per year", worksheet.control_j37.to_s.gsub(/[\n\r]+/,'')); end
  def test_control_k37; assert_equal("Fuel use per passenger falls by 2.5% per year", worksheet.control_k37.to_s.gsub(/[\n\r]+/,'')); end
  def test_control_l37; assert_equal("Fuel use per passenger falls by 3% per year", worksheet.control_l37.to_s.gsub(/[\n\r]+/,'')); end
  def test_control_i38; assert_equal("No change in annual marine fuel use", worksheet.control_i38.to_s.gsub(/[\n\r]+/,'')); end
  def test_control_j38; assert_equal("Marine fuel use decreases by 10% by 2050", worksheet.control_j38.to_s.gsub(/[\n\r]+/,'')); end
  def test_control_k38; assert_equal("Marine fuel use decreases by 20%", worksheet.control_k38.to_s.gsub(/[\n\r]+/,'')); end
  def test_control_l38; assert_equal("Marine fuel use decreases by 50%", worksheet.control_l38.to_s.gsub(/[\n\r]+/,'')); end
  def test_control_i40; assert_equal("No change in space and water heating demand per household", worksheet.control_i40.to_s.gsub(/[\n\r]+/,'')); end
  def test_control_j40; assert_equal("Space and water heating demand per household reduce by 10%", worksheet.control_j40.to_s.gsub(/[\n\r]+/,'')); end
  def test_control_k40; assert_equal("Space and water heating demand per household reduce by 20%", worksheet.control_k40.to_s.gsub(/[\n\r]+/,'')); end
  def test_control_l40; assert_equal("Space and water heating demand per household reduce by 30%", worksheet.control_l40.to_s.gsub(/[\n\r]+/,'')); end
  def test_control_i41; assert_equal("No change in technology mix for space and water heating", worksheet.control_i41.to_s.gsub(/[\n\r]+/,'')); end
  def test_control_j41; assert_equal("New households use electric space & water heating or woodburner; existing coal and diesel heating replaced by wood", worksheet.control_j41.to_s.gsub(/[\n\r]+/,'')); end
  def test_control_k41; assert_equal("As per Level 2, plus half of current gas heating replaced by heat pump", worksheet.control_k41.to_s.gsub(/[\n\r]+/,'')); end
  def test_control_l41; assert_equal("As per Level 2, plus all gas heating replaced by heat pump", worksheet.control_l41.to_s.gsub(/[\n\r]+/,'')); end
  def test_control_i43; assert_equal("No change in energy demand for lighting & appliances per household", worksheet.control_i43.to_s.gsub(/[\n\r]+/,'')); end
  def test_control_j43; assert_equal("Energy demand per household decreases by 33% by 2050", worksheet.control_j43.to_s.gsub(/[\n\r]+/,'')); end
  def test_control_k43; assert_equal("Energy demand per household decreases by 50% by 2050", worksheet.control_k43.to_s.gsub(/[\n\r]+/,'')); end
  def test_control_l43; assert_equal("Energy demand per household decreases by 67% by 2050", worksheet.control_l43.to_s.gsub(/[\n\r]+/,'')); end
  def test_control_i44; assert_equal("No change in electricity/gas split (68%/32%)", worksheet.control_i44.to_s.gsub(/[\n\r]+/,'')); end
  def test_control_j44; assert_equal("All new households use electricity for cooking", worksheet.control_j44.to_s.gsub(/[\n\r]+/,'')); end
  def test_control_k44; assert_equal("As per Level 2, plus half of existing gas cookers replaced with electricity", worksheet.control_k44.to_s.gsub(/[\n\r]+/,'')); end
  def test_control_l44; assert_equal("All cooking uses electricity by 2050", worksheet.control_l44.to_s.gsub(/[\n\r]+/,'')); end
  def test_control_i46; assert_equal("Underlying energy demand increases by around 40% (1% growth per year)", worksheet.control_i46.to_s.gsub(/[\n\r]+/,'')); end
  def test_control_j46; assert_equal("No change in underlying energy demand.", worksheet.control_j46.to_s.gsub(/[\n\r]+/,'')); end
  def test_control_k46; assert_equal("Underlying energy demand decreases by around 30% (1% reduction per year)", worksheet.control_k46.to_s.gsub(/[\n\r]+/,'')); end
  def test_control_l46; assert_equal("n/a", worksheet.control_l46.to_s.gsub(/[\n\r]+/,'')); end
  def test_control_i47; assert_equal("No energy efficiency improvements and no change in fuel mix", worksheet.control_i47.to_s.gsub(/[\n\r]+/,'')); end
  def test_control_j47; assert_equal("Energy efficiency improves by around 10%; some fuel switching to electricity and bioenergy", worksheet.control_j47.to_s.gsub(/[\n\r]+/,'')); end
  def test_control_k47; assert_equal("Energy efficiency improves by around 20%; high level of fuel switching to electricity and bioenergy", worksheet.control_k47.to_s.gsub(/[\n\r]+/,'')); end
  def test_control_l47; assert_equal("Energy efficiency improves by around 40%; very high level of fuel switching to electricity and bioenergy", worksheet.control_l47.to_s.gsub(/[\n\r]+/,'')); end
  def test_control_i49; assert_equal("No change in space and water heating demand per building (by floor area)", worksheet.control_i49.to_s.gsub(/[\n\r]+/,'')); end
  def test_control_j49; assert_equal("Space and water heating demand per building decrease by 10%", worksheet.control_j49.to_s.gsub(/[\n\r]+/,'')); end
  def test_control_k49; assert_equal("Space and water heating demand per building decrease by 20%", worksheet.control_k49.to_s.gsub(/[\n\r]+/,'')); end
  def test_control_l49; assert_equal("Space and water heating demand per building decrease by 30%", worksheet.control_l49.to_s.gsub(/[\n\r]+/,'')); end
  def test_control_i50; assert_equal("No change from current space and water heating technology mix (57% space heating and 70% water heating electric)", worksheet.control_i50.to_s.gsub(/[\n\r]+/,'')); end
  def test_control_j50; assert_equal("All new commercial buildings use electric space and water heating, primarily heat pumps", worksheet.control_j50.to_s.gsub(/[\n\r]+/,'')); end
  def test_control_k50; assert_equal("As per Level 2, plus half of current non-electric heating replaced by heat pump", worksheet.control_k50.to_s.gsub(/[\n\r]+/,'')); end
  def test_control_l50; assert_equal("All non-electric heating replaced by heat pump by 2050", worksheet.control_l50.to_s.gsub(/[\n\r]+/,'')); end
  def test_control_i52; assert_equal("No change in energy demand per building (by floor area)", worksheet.control_i52.to_s.gsub(/[\n\r]+/,'')); end
  def test_control_j52; assert_equal("Energy demand per building decreases by 10%", worksheet.control_j52.to_s.gsub(/[\n\r]+/,'')); end
  def test_control_k52; assert_equal("Energy demand per building decreases by 30%", worksheet.control_k52.to_s.gsub(/[\n\r]+/,'')); end
  def test_control_l52; assert_equal("Energy demand per building decreases by 50%", worksheet.control_l52.to_s.gsub(/[\n\r]+/,'')); end
  def test_control_i53; assert_equal("No change in electricity/gas split (49%/51%)", worksheet.control_i53.to_s.gsub(/[\n\r]+/,'')); end
  def test_control_j53; assert_equal("Electricity share of cooking increases to 60%", worksheet.control_j53.to_s.gsub(/[\n\r]+/,'')); end
  def test_control_k53; assert_equal("Electricity share of cooking increases to 75%", worksheet.control_k53.to_s.gsub(/[\n\r]+/,'')); end
  def test_control_l53; assert_equal("Electricity share of cooking increases to 100%", worksheet.control_l53.to_s.gsub(/[\n\r]+/,'')); end
  def test_control_i54; assert_equal("HFC emissions double by 2050", worksheet.control_i54.to_s.gsub(/[\n\r]+/,'')); end
  def test_control_j54; assert_equal("Emissions decrease nearly 90% by 2050 in accordance with the Montreal Protocol", worksheet.control_j54.to_s.gsub(/[\n\r]+/,'')); end
  def test_control_k54; assert_equal("n/a", worksheet.control_k54.to_s.gsub(/[\n\r]+/,'')); end
  def test_control_l54; assert_equal("n/a", worksheet.control_l54.to_s.gsub(/[\n\r]+/,'')); end
  def test_control_n5; assert_equal("All at level 1 (doesn't tackle climate change at all)", worksheet.control_n5.to_s.gsub(/[\n\r]+/,'')); end
  def test_control_o5; assert_equal("All at level 2", worksheet.control_o5.to_s.gsub(/[\n\r]+/,'')); end
  def test_control_p5; assert_equal("All at level 3", worksheet.control_p5.to_s.gsub(/[\n\r]+/,'')); end
  def test_control_q5; assert_equal("All at highest level", worksheet.control_q5.to_s.gsub(/[\n\r]+/,'')); end
  def test_control_r5; assert_equal("Maximum demand, no supply", worksheet.control_r5.to_s.gsub(/[\n\r]+/,'')); end
  def test_control_s5; assert_equal("Maximum supply, no demand", worksheet.control_s5.to_s.gsub(/[\n\r]+/,'')); end
  def test_control_t5; assert_equal("2050 target example 1", worksheet.control_t5.to_s.gsub(/[\n\r]+/,'')); end
  def test_control_n8; assert_in_delta(1.0, worksheet.control_n8, 0.002); end
  def test_control_o8; assert_in_epsilon(2.0, worksheet.control_o8, 0.002); end
  def test_control_p8; assert_in_epsilon(3.0, worksheet.control_p8, 0.002); end
  def test_control_q8; assert_in_epsilon(3.0, worksheet.control_q8, 0.002); end
  def test_control_n9; assert_in_delta(1.0, worksheet.control_n9, 0.002); end
  def test_control_o9; assert_in_epsilon(2.0, worksheet.control_o9, 0.002); end
  def test_control_p9; assert_in_epsilon(3.0, worksheet.control_p9, 0.002); end
  def test_control_q9; assert_in_epsilon(4.0, worksheet.control_q9, 0.002); end
  def test_control_n10; assert_in_delta(1.0, worksheet.control_n10, 0.002); end
  def test_control_o10; assert_in_epsilon(2.0, worksheet.control_o10, 0.002); end
  def test_control_p10; assert_in_epsilon(3.0, worksheet.control_p10, 0.002); end
  def test_control_q10; assert_in_epsilon(4.0, worksheet.control_q10, 0.002); end
  def test_control_n11; assert_in_delta(1.0, worksheet.control_n11, 0.002); end
  def test_control_o11; assert_in_epsilon(2.0, worksheet.control_o11, 0.002); end
  def test_control_p11; assert_in_epsilon(3.0, worksheet.control_p11, 0.002); end
  def test_control_q11; assert_in_epsilon(4.0, worksheet.control_q11, 0.002); end
  def test_control_n13; assert_in_delta(1.0, worksheet.control_n13, 0.002); end
  def test_control_o13; assert_in_epsilon(2.0, worksheet.control_o13, 0.002); end
  def test_control_p13; assert_in_epsilon(3.0, worksheet.control_p13, 0.002); end
  def test_control_q13; assert_in_epsilon(4.0, worksheet.control_q13, 0.002); end
  def test_control_n14; assert_in_delta(1.0, worksheet.control_n14, 0.002); end
  def test_control_o14; assert_in_delta(1.0, worksheet.control_o14, 0.002); end
  def test_control_p14; assert_in_delta(1.0, worksheet.control_p14, 0.002); end
  def test_control_q14; assert_in_delta(1.0, worksheet.control_q14, 0.002); end
  def test_control_n15; assert_in_delta(1.0, worksheet.control_n15, 0.002); end
  def test_control_o15; assert_in_epsilon(2.0, worksheet.control_o15, 0.002); end
  def test_control_p15; assert_in_epsilon(3.0, worksheet.control_p15, 0.002); end
  def test_control_q15; assert_in_epsilon(4.0, worksheet.control_q15, 0.002); end
  def test_control_n16; assert_in_delta(1.0, worksheet.control_n16, 0.002); end
  def test_control_o16; assert_in_epsilon(2.0, worksheet.control_o16, 0.002); end
  def test_control_p16; assert_in_epsilon(3.0, worksheet.control_p16, 0.002); end
  def test_control_q16; assert_in_epsilon(4.0, worksheet.control_q16, 0.002); end
  def test_control_n17; assert_in_delta(1.0, worksheet.control_n17, 0.002); end
  def test_control_o17; assert_in_epsilon(2.0, worksheet.control_o17, 0.002); end
  def test_control_p17; assert_in_epsilon(3.0, worksheet.control_p17, 0.002); end
  def test_control_q17; assert_in_epsilon(4.0, worksheet.control_q17, 0.002); end
  def test_control_n19; assert_in_delta(1.0, worksheet.control_n19, 0.002); end
  def test_control_o19; assert_in_epsilon(2.0, worksheet.control_o19, 0.002); end
  def test_control_p19; assert_in_epsilon(3.0, worksheet.control_p19, 0.002); end
  def test_control_q19; assert_in_epsilon(4.0, worksheet.control_q19, 0.002); end
  def test_control_n20; assert_in_delta(1.0, worksheet.control_n20, 0.002); end
  def test_control_o20; assert_in_epsilon(2.0, worksheet.control_o20, 0.002); end
  def test_control_p20; assert_in_epsilon(3.0, worksheet.control_p20, 0.002); end
  def test_control_q20; assert_in_epsilon(4.0, worksheet.control_q20, 0.002); end
  def test_control_n22; assert_in_delta(1.0, worksheet.control_n22, 0.002); end
  def test_control_o22; assert_in_epsilon(2.0, worksheet.control_o22, 0.002); end
  def test_control_p22; assert_in_epsilon(3.0, worksheet.control_p22, 0.002); end
  def test_control_q22; assert_in_epsilon(4.0, worksheet.control_q22, 0.002); end
  def test_control_n25; assert_in_delta(1.0, worksheet.control_n25, 0.002); end
  def test_control_o25; assert_in_epsilon(2.0, worksheet.control_o25, 0.002); end
  def test_control_p25; assert_in_epsilon(3.0, worksheet.control_p25, 0.002); end
  def test_control_q25; assert_in_epsilon(4.0, worksheet.control_q25, 0.002); end
  def test_control_n26; assert_in_delta(1.0, worksheet.control_n26, 0.002); end
  def test_control_o26; assert_in_epsilon(2.0, worksheet.control_o26, 0.002); end
  def test_control_p26; assert_in_epsilon(3.0, worksheet.control_p26, 0.002); end
  def test_control_q26; assert_in_epsilon(4.0, worksheet.control_q26, 0.002); end
  def test_control_n27; assert_in_delta(1.0, worksheet.control_n27, 0.002); end
  def test_control_o27; assert_in_epsilon(2.0, worksheet.control_o27, 0.002); end
  def test_control_p27; assert_in_epsilon(3.0, worksheet.control_p27, 0.002); end
  def test_control_q27; assert_in_epsilon(4.0, worksheet.control_q27, 0.002); end
  def test_control_n28; assert_in_delta(1.0, worksheet.control_n28, 0.002); end
  def test_control_o28; assert_in_epsilon(2.0, worksheet.control_o28, 0.002); end
  def test_control_p28; assert_in_epsilon(3.0, worksheet.control_p28, 0.002); end
  def test_control_q28; assert_in_epsilon(4.0, worksheet.control_q28, 0.002); end
  def test_control_n29; assert_in_delta(1.0, worksheet.control_n29, 0.002); end
  def test_control_o29; assert_in_epsilon(2.0, worksheet.control_o29, 0.002); end
  def test_control_p29; assert_in_epsilon(3.0, worksheet.control_p29, 0.002); end
  def test_control_q29; assert_in_epsilon(4.0, worksheet.control_q29, 0.002); end
  def test_control_n30; assert_in_delta(1.0, worksheet.control_n30, 0.002); end
  def test_control_o30; assert_in_epsilon(2.0, worksheet.control_o30, 0.002); end
  def test_control_p30; assert_in_epsilon(3.0, worksheet.control_p30, 0.002); end
  def test_control_q30; assert_in_epsilon(4.0, worksheet.control_q30, 0.002); end
  def test_control_n32; assert_in_delta(1.0, worksheet.control_n32, 0.002); end
  def test_control_o32; assert_in_epsilon(2.0, worksheet.control_o32, 0.002); end
  def test_control_p32; assert_in_epsilon(3.0, worksheet.control_p32, 0.002); end
  def test_control_q32; assert_in_epsilon(4.0, worksheet.control_q32, 0.002); end
  def test_control_n33; assert_in_delta(1.0, worksheet.control_n33, 0.002); end
  def test_control_o33; assert_in_epsilon(2.0, worksheet.control_o33, 0.002); end
  def test_control_p33; assert_in_epsilon(3.0, worksheet.control_p33, 0.002); end
  def test_control_q33; assert_in_epsilon(4.0, worksheet.control_q33, 0.002); end
  def test_control_n34; assert_in_delta(1.0, worksheet.control_n34, 0.002); end
  def test_control_o34; assert_in_epsilon(2.0, worksheet.control_o34, 0.002); end
  def test_control_p34; assert_in_epsilon(3.0, worksheet.control_p34, 0.002); end
  def test_control_q34; assert_in_epsilon(4.0, worksheet.control_q34, 0.002); end
  def test_control_n36; assert_in_delta(1.0, worksheet.control_n36, 0.002); end
  def test_control_o36; assert_in_epsilon(2.0, worksheet.control_o36, 0.002); end
  def test_control_p36; assert_in_epsilon(3.0, worksheet.control_p36, 0.002); end
  def test_control_q36; assert_in_epsilon(3.0, worksheet.control_q36, 0.002); end
  def test_control_n37; assert_in_delta(1.0, worksheet.control_n37, 0.002); end
  def test_control_o37; assert_in_epsilon(2.0, worksheet.control_o37, 0.002); end
  def test_control_p37; assert_in_epsilon(3.0, worksheet.control_p37, 0.002); end
  def test_control_q37; assert_in_epsilon(4.0, worksheet.control_q37, 0.002); end
  def test_control_n38; assert_in_delta(1.0, worksheet.control_n38, 0.002); end
  def test_control_o38; assert_in_epsilon(2.0, worksheet.control_o38, 0.002); end
  def test_control_p38; assert_in_epsilon(3.0, worksheet.control_p38, 0.002); end
  def test_control_q38; assert_in_epsilon(4.0, worksheet.control_q38, 0.002); end
  def test_control_n40; assert_in_delta(1.0, worksheet.control_n40, 0.002); end
  def test_control_o40; assert_in_epsilon(2.0, worksheet.control_o40, 0.002); end
  def test_control_p40; assert_in_epsilon(3.0, worksheet.control_p40, 0.002); end
  def test_control_q40; assert_in_epsilon(4.0, worksheet.control_q40, 0.002); end
  def test_control_n41; assert_in_delta(1.0, worksheet.control_n41, 0.002); end
  def test_control_o41; assert_in_epsilon(2.0, worksheet.control_o41, 0.002); end
  def test_control_p41; assert_in_epsilon(3.0, worksheet.control_p41, 0.002); end
  def test_control_q41; assert_in_epsilon(4.0, worksheet.control_q41, 0.002); end
  def test_control_n43; assert_in_delta(1.0, worksheet.control_n43, 0.002); end
  def test_control_o43; assert_in_epsilon(2.0, worksheet.control_o43, 0.002); end
  def test_control_p43; assert_in_epsilon(3.0, worksheet.control_p43, 0.002); end
  def test_control_q43; assert_in_epsilon(4.0, worksheet.control_q43, 0.002); end
  def test_control_n44; assert_in_delta(1.0, worksheet.control_n44, 0.002); end
  def test_control_o44; assert_in_epsilon(2.0, worksheet.control_o44, 0.002); end
  def test_control_p44; assert_in_epsilon(3.0, worksheet.control_p44, 0.002); end
  def test_control_q44; assert_in_epsilon(4.0, worksheet.control_q44, 0.002); end
  def test_control_n46; assert_in_delta(1.0, worksheet.control_n46, 0.002); end
  def test_control_o46; assert_in_epsilon(2.0, worksheet.control_o46, 0.002); end
  def test_control_p46; assert_in_epsilon(3.0, worksheet.control_p46, 0.002); end
  def test_control_q46; assert_in_epsilon(3.0, worksheet.control_q46, 0.002); end
  def test_control_n47; assert_in_delta(1.0, worksheet.control_n47, 0.002); end
  def test_control_o47; assert_in_epsilon(2.0, worksheet.control_o47, 0.002); end
  def test_control_p47; assert_in_epsilon(3.0, worksheet.control_p47, 0.002); end
  def test_control_q47; assert_in_epsilon(4.0, worksheet.control_q47, 0.002); end
  def test_control_n49; assert_in_delta(1.0, worksheet.control_n49, 0.002); end
  def test_control_o49; assert_in_epsilon(2.0, worksheet.control_o49, 0.002); end
  def test_control_p49; assert_in_epsilon(3.0, worksheet.control_p49, 0.002); end
  def test_control_q49; assert_in_epsilon(4.0, worksheet.control_q49, 0.002); end
  def test_control_n50; assert_in_delta(1.0, worksheet.control_n50, 0.002); end
  def test_control_o50; assert_in_epsilon(2.0, worksheet.control_o50, 0.002); end
  def test_control_p50; assert_in_epsilon(3.0, worksheet.control_p50, 0.002); end
  def test_control_q50; assert_in_epsilon(4.0, worksheet.control_q50, 0.002); end
  def test_control_n52; assert_in_delta(1.0, worksheet.control_n52, 0.002); end
  def test_control_o52; assert_in_epsilon(2.0, worksheet.control_o52, 0.002); end
  def test_control_p52; assert_in_epsilon(3.0, worksheet.control_p52, 0.002); end
  def test_control_q52; assert_in_epsilon(4.0, worksheet.control_q52, 0.002); end
  def test_control_n53; assert_in_delta(1.0, worksheet.control_n53, 0.002); end
  def test_control_o53; assert_in_epsilon(2.0, worksheet.control_o53, 0.002); end
  def test_control_p53; assert_in_epsilon(3.0, worksheet.control_p53, 0.002); end
  def test_control_q53; assert_in_epsilon(4.0, worksheet.control_q53, 0.002); end
  def test_control_n54; assert_in_delta(1.0, worksheet.control_n54, 0.002); end
  def test_control_o54; assert_in_epsilon(2.0, worksheet.control_o54, 0.002); end
  def test_control_p54; assert_in_epsilon(2.0, worksheet.control_p54, 0.002); end
  def test_control_q54; assert_in_epsilon(2.0, worksheet.control_q54, 0.002); end
  def test_control_d8; assert_equal("Biogas power generation", worksheet.control_d8.to_s.gsub(/[\n\r]+/,'')); end
  def test_control_d9; assert_equal("Solar panels for electricity", worksheet.control_d9.to_s.gsub(/[\n\r]+/,'')); end
  def test_control_d10; assert_equal("Solar panels for hot water", worksheet.control_d10.to_s.gsub(/[\n\r]+/,'')); end
  def test_control_d11; assert_equal("National grid electricity", worksheet.control_d11.to_s.gsub(/[\n\r]+/,'')); end
  def test_control_d12; assert_equal("Agriculture and land use", worksheet.control_d12.to_s.gsub(/[\n\r]+/,'')); end
  def test_control_d13; assert_equal("Land use change", worksheet.control_d13.to_s.gsub(/[\n\r]+/,'')); end
  def test_control_d14; assert_equal("Forest type", worksheet.control_d14.to_s.gsub(/[\n\r]+/,'')); end
  def test_control_d15; assert_equal("Livestock stocking rates", worksheet.control_d15.to_s.gsub(/[\n\r]+/,'')); end
  def test_control_d16; assert_equal("Livestock emissions intensity - practice change", worksheet.control_d16.to_s.gsub(/[\n\r]+/,'')); end
  def test_control_d17; assert_equal("Livestock emissions intensity - new tech", worksheet.control_d17.to_s.gsub(/[\n\r]+/,'')); end
  def test_control_d18; assert_equal("Waste and recycling", worksheet.control_d18.to_s.gsub(/[\n\r]+/,'')); end
  def test_control_d19; assert_equal("Waste volumes", worksheet.control_d19.to_s.gsub(/[\n\r]+/,'')); end
  def test_control_d20; assert_equal("Landfill gas capture and EFW", worksheet.control_d20.to_s.gsub(/[\n\r]+/,'')); end
  def test_control_d21; assert_equal("Bioenergy imports", worksheet.control_d21.to_s.gsub(/[\n\r]+/,'')); end
  def test_control_d22; assert_equal("Biofuel supply", worksheet.control_d22.to_s.gsub(/[\n\r]+/,'')); end
  def test_control_d24; assert_equal("Passenger and light vehicle transport", worksheet.control_d24.to_s.gsub(/[\n\r]+/,'')); end
  def test_control_d25; assert_equal("Travel demand", worksheet.control_d25.to_s.gsub(/[\n\r]+/,'')); end
  def test_control_d26; assert_equal("Mode shares", worksheet.control_d26.to_s.gsub(/[\n\r]+/,'')); end
  def test_control_d27; assert_equal("Vehicle occupancy", worksheet.control_d27.to_s.gsub(/[\n\r]+/,'')); end
  def test_control_d28; assert_equal("Electrification of light vehicles", worksheet.control_d28.to_s.gsub(/[\n\r]+/,'')); end
  def test_control_d29; assert_equal("Electrification of public transport", worksheet.control_d29.to_s.gsub(/[\n\r]+/,'')); end
  def test_control_d30; assert_equal("Vehicle fuel efficiencies", worksheet.control_d30.to_s.gsub(/[\n\r]+/,'')); end
  def test_control_d31; assert_equal("Road and rail freight", worksheet.control_d31.to_s.gsub(/[\n\r]+/,'')); end
  def test_control_d32; assert_equal("Freight volume", worksheet.control_d32.to_s.gsub(/[\n\r]+/,'')); end
  def test_control_d33; assert_equal("Electrification of road & rail freight", worksheet.control_d33.to_s.gsub(/[\n\r]+/,'')); end
  def test_control_d34; assert_equal("Freight mode and efficiency", worksheet.control_d34.to_s.gsub(/[\n\r]+/,'')); end
  def test_control_d35; assert_equal("Air travel", worksheet.control_d35.to_s.gsub(/[\n\r]+/,'')); end
  def test_control_d36; assert_equal("Air travel demand", worksheet.control_d36.to_s.gsub(/[\n\r]+/,'')); end
  def test_control_d37; assert_equal("Air travel efficiency", worksheet.control_d37.to_s.gsub(/[\n\r]+/,'')); end
  def test_control_d38; assert_equal("Marine transport", worksheet.control_d38.to_s.gsub(/[\n\r]+/,'')); end
  def test_control_d39; assert_equal("Household space heating and hot water", worksheet.control_d39.to_s.gsub(/[\n\r]+/,'')); end
  def test_control_d40; assert_equal("Household space & water heating demand", worksheet.control_d40.to_s.gsub(/[\n\r]+/,'')); end
  def test_control_d41; assert_equal("Household heating technology", worksheet.control_d41.to_s.gsub(/[\n\r]+/,'')); end
  def test_control_d42; assert_equal("Household lighting, appliances, and cooking", worksheet.control_d42.to_s.gsub(/[\n\r]+/,'')); end
  def test_control_d43; assert_equal("Household lighting & appliances", worksheet.control_d43.to_s.gsub(/[\n\r]+/,'')); end
  def test_control_d44; assert_equal("Electrification of household cooking", worksheet.control_d44.to_s.gsub(/[\n\r]+/,'')); end
  def test_control_d45; assert_equal("Industrial processes", worksheet.control_d45.to_s.gsub(/[\n\r]+/,'')); end
  def test_control_d46; assert_equal("Growth in manufacturing", worksheet.control_d46.to_s.gsub(/[\n\r]+/,'')); end
  def test_control_d47; assert_equal("Energy efficiency and fuel switching", worksheet.control_d47.to_s.gsub(/[\n\r]+/,'')); end
  def test_control_d48; assert_equal("Commercial heating and cooling", worksheet.control_d48.to_s.gsub(/[\n\r]+/,'')); end
  def test_control_d49; assert_equal("Commercial space & water heating demand", worksheet.control_d49.to_s.gsub(/[\n\r]+/,'')); end
  def test_control_d50; assert_equal("Commercial heating technology", worksheet.control_d50.to_s.gsub(/[\n\r]+/,'')); end
  def test_control_d51; assert_equal("Commercial lighting, appliances, and catering", worksheet.control_d51.to_s.gsub(/[\n\r]+/,'')); end
  def test_control_d52; assert_equal("Commercial lighting & appliances", worksheet.control_d52.to_s.gsub(/[\n\r]+/,'')); end
  def test_control_d53; assert_equal("Electrification of commercial cooking", worksheet.control_d53.to_s.gsub(/[\n\r]+/,'')); end
  def test_control_d54; assert_equal("Solvent & product use", worksheet.control_d54.to_s.gsub(/[\n\r]+/,'')); end
  def test_control_g8; assert_equal("BiogasUse.pdf", worksheet.control_g8.to_s.gsub(/[\n\r]+/,'')); end
  def test_control_g9; assert_equal("SolarPV.pdf", worksheet.control_g9.to_s.gsub(/[\n\r]+/,'')); end
  def test_control_g10; assert_equal("SolarHotWater.pdf", worksheet.control_g10.to_s.gsub(/[\n\r]+/,'')); end
  def test_control_g11; assert_equal("NationalGridElectricity.pdf", worksheet.control_g11.to_s.gsub(/[\n\r]+/,'')); end
  def test_control_g19; assert_equal("WasteVolumes.pdf", worksheet.control_g19.to_s.gsub(/[\n\r]+/,'')); end
  def test_control_g20; assert_equal("WasteProcessing.pdf", worksheet.control_g20.to_s.gsub(/[\n\r]+/,'')); end
  def test_control_g22; assert_equal("BiomassSupply.pdf", worksheet.control_g22.to_s.gsub(/[\n\r]+/,'')); end
  def test_control_g25; assert_equal("TravelDemand.pdf", worksheet.control_g25.to_s.gsub(/[\n\r]+/,'')); end
  def test_control_g27; assert_equal("VehicleOccupancies.pdf", worksheet.control_g27.to_s.gsub(/[\n\r]+/,'')); end
  def test_control_g28; assert_equal("ElectrificationLightVehicles.pdf", worksheet.control_g28.to_s.gsub(/[\n\r]+/,'')); end
  def test_control_g29; assert_equal("ElectrificationPT.pdf", worksheet.control_g29.to_s.gsub(/[\n\r]+/,'')); end
  def test_control_g30; assert_equal("VehicleEfficiencies.pdf", worksheet.control_g30.to_s.gsub(/[\n\r]+/,'')); end
  def test_control_g32; assert_equal("FreightVolume.pdf", worksheet.control_g32.to_s.gsub(/[\n\r]+/,'')); end
  def test_control_g34; assert_equal("FreightMode&Efficiency.pdf", worksheet.control_g34.to_s.gsub(/[\n\r]+/,'')); end
  def test_control_g36; assert_equal("DomesticAviation.pdf", worksheet.control_g36.to_s.gsub(/[\n\r]+/,'')); end
  def test_control_g38; assert_equal("DomesticNavigation.pdf", worksheet.control_g38.to_s.gsub(/[\n\r]+/,'')); end
  def test_control_g40; assert_equal("HouseholdHeatingDemand.pdf", worksheet.control_g40.to_s.gsub(/[\n\r]+/,'')); end
  def test_control_g41; assert_equal("HouseholdHeatingTech.pdf", worksheet.control_g41.to_s.gsub(/[\n\r]+/,'')); end
  def test_control_g43; assert_equal("HouseholdLighting&Appliances.pdf", worksheet.control_g43.to_s.gsub(/[\n\r]+/,'')); end
  def test_control_g44; assert_equal("HouseholdCookingElectrification.pdf", worksheet.control_g44.to_s.gsub(/[\n\r]+/,'')); end
  def test_control_g46; assert_equal("IndustryGrowth.pdf", worksheet.control_g46.to_s.gsub(/[\n\r]+/,'')); end
  def test_control_g47; assert_equal("IndustrialEnergyIntensity.pdf", worksheet.control_g47.to_s.gsub(/[\n\r]+/,'')); end
  def test_control_g49; assert_equal("CommercialHeatingDemand.pdf", worksheet.control_g49.to_s.gsub(/[\n\r]+/,'')); end
  def test_control_g50; assert_equal("CommercialHeatingTech.pdf", worksheet.control_g50.to_s.gsub(/[\n\r]+/,'')); end
  def test_control_g52; assert_equal("CommercialLighting&Appliances.pdf", worksheet.control_g52.to_s.gsub(/[\n\r]+/,'')); end
  def test_control_g53; assert_equal("CommercialCookingElectrification.pdf", worksheet.control_g53.to_s.gsub(/[\n\r]+/,'')); end
  def test_control_g54; assert_equal("Solvents&ProductUse.pdf", worksheet.control_g54.to_s.gsub(/[\n\r]+/,'')); end
  def test_control_f8; assert_equal("C", worksheet.control_f8.to_s.gsub(/[\n\r]+/,'')); end
  def test_control_f9; assert_in_epsilon(4.0, worksheet.control_f9, 0.002); end
  def test_control_f10; assert_in_epsilon(4.0, worksheet.control_f10, 0.002); end
  def test_control_f11; assert_in_epsilon(4.0, worksheet.control_f11, 0.002); end
  def test_control_f12; assert_in_delta(0.0, (worksheet.control_f12||0), 0.002); end
  def test_control_f13; assert_in_epsilon(4.0, worksheet.control_f13, 0.002); end
  def test_control_f14; assert_equal("D", worksheet.control_f14.to_s.gsub(/[\n\r]+/,'')); end
  def test_control_f15; assert_in_epsilon(4.0, worksheet.control_f15, 0.002); end
  def test_control_f16; assert_in_epsilon(4.0, worksheet.control_f16, 0.002); end
  def test_control_f17; assert_in_epsilon(4.0, worksheet.control_f17, 0.002); end
  def test_control_f18; assert_in_delta(0.0, (worksheet.control_f18||0), 0.002); end
  def test_control_f19; assert_in_epsilon(4.0, worksheet.control_f19, 0.002); end
  def test_control_f20; assert_in_epsilon(4.0, worksheet.control_f20, 0.002); end
  def test_control_f21; assert_in_delta(0.0, (worksheet.control_f21||0), 0.002); end
  def test_control_f22; assert_in_epsilon(4.0, worksheet.control_f22, 0.002); end
  def test_control_f24; assert_in_delta(0.0, (worksheet.control_f24||0), 0.002); end
  def test_control_f25; assert_in_epsilon(4.0, worksheet.control_f25, 0.002); end
  def test_control_f26; assert_in_epsilon(4.0, worksheet.control_f26, 0.002); end
  def test_control_f27; assert_in_epsilon(4.0, worksheet.control_f27, 0.002); end
  def test_control_f28; assert_in_epsilon(4.0, worksheet.control_f28, 0.002); end
  def test_control_f29; assert_in_epsilon(4.0, worksheet.control_f29, 0.002); end
  def test_control_f30; assert_in_epsilon(4.0, worksheet.control_f30, 0.002); end
  def test_control_f31; assert_in_delta(0.0, (worksheet.control_f31||0), 0.002); end
  def test_control_f32; assert_equal("D", worksheet.control_f32.to_s.gsub(/[\n\r]+/,'')); end
  def test_control_f33; assert_in_epsilon(4.0, worksheet.control_f33, 0.002); end
  def test_control_f34; assert_in_epsilon(4.0, worksheet.control_f34, 0.002); end
  def test_control_f35; assert_in_delta(0.0, (worksheet.control_f35||0), 0.002); end
  def test_control_f36; assert_equal("C", worksheet.control_f36.to_s.gsub(/[\n\r]+/,'')); end
  def test_control_f37; assert_in_epsilon(4.0, worksheet.control_f37, 0.002); end
  def test_control_f38; assert_in_epsilon(4.0, worksheet.control_f38, 0.002); end
  def test_control_f39; assert_in_delta(0.0, (worksheet.control_f39||0), 0.002); end
  def test_control_f40; assert_in_epsilon(4.0, worksheet.control_f40, 0.002); end
  def test_control_f41; assert_in_epsilon(4.0, worksheet.control_f41, 0.002); end
  def test_control_f42; assert_in_delta(0.0, (worksheet.control_f42||0), 0.002); end
  def test_control_f43; assert_in_epsilon(4.0, worksheet.control_f43, 0.002); end
  def test_control_f44; assert_in_epsilon(4.0, worksheet.control_f44, 0.002); end
  def test_control_f45; assert_in_delta(0.0, (worksheet.control_f45||0), 0.002); end
  def test_control_f46; assert_equal("C", worksheet.control_f46.to_s.gsub(/[\n\r]+/,'')); end
  def test_control_f47; assert_in_epsilon(4.0, worksheet.control_f47, 0.002); end
  def test_control_f48; assert_in_delta(0.0, (worksheet.control_f48||0), 0.002); end
  def test_control_f49; assert_in_epsilon(4.0, worksheet.control_f49, 0.002); end
  def test_control_f50; assert_in_epsilon(4.0, worksheet.control_f50, 0.002); end
  def test_control_f51; assert_in_delta(0.0, (worksheet.control_f51||0), 0.002); end
  def test_control_f52; assert_in_epsilon(4.0, worksheet.control_f52, 0.002); end
  def test_control_f53; assert_in_epsilon(4.0, worksheet.control_f53, 0.002); end
  def test_control_f54; assert_in_epsilon(2.0, worksheet.control_f54, 0.002); end
  def test_control_n2; assert_equal("Version 1.0.0", worksheet.control_n2.to_s.gsub(/[\n\r]+/,'')); end
  def test_air_quality_c3; assert_equal("High", worksheet.air_quality_c3.to_s.gsub(/[\n\r]+/,'')); end
  def test_air_quality_d3; assert_in_delta(0.0, (worksheet.air_quality_d3||0), 0.002); end
  def test_air_quality_c4; assert_equal("Low", worksheet.air_quality_c4.to_s.gsub(/[\n\r]+/,'')); end
  def test_air_quality_d4; assert_in_delta(0.0, (worksheet.air_quality_d4||0), 0.002); end
  def test_land_c4; assert_equal("Vector", worksheet.land_c4.to_s.gsub(/[\n\r]+/,'')); end
  def test_land_d4; assert_in_epsilon(2012.0, worksheet.land_d4, 0.002); end
  def test_land_e4; assert_in_epsilon(2015.0, worksheet.land_e4, 0.002); end
  def test_land_f4; assert_in_epsilon(2020.0, worksheet.land_f4, 0.002); end
  def test_land_g4; assert_in_epsilon(2025.0, worksheet.land_g4, 0.002); end
  def test_land_h4; assert_in_epsilon(2030.0, worksheet.land_h4, 0.002); end
  def test_land_i4; assert_in_epsilon(2035.0, worksheet.land_i4, 0.002); end
  def test_land_j4; assert_in_epsilon(2040.0, worksheet.land_j4, 0.002); end
  def test_land_k4; assert_in_epsilon(2045.0, worksheet.land_k4, 0.002); end
  def test_land_l4; assert_in_epsilon(2050.0, worksheet.land_l4, 0.002); end
  def test_land_c5; assert_equal("III.a.1", worksheet.land_c5.to_s.gsub(/[\n\r]+/,'')); end
  def test_land_d5; assert_in_delta(0.0, (worksheet.land_d5||0), 0.002); end
  def test_land_e5; assert_in_delta(0.0, (worksheet.land_e5||0), 0.002); end
  def test_land_f5; assert_in_delta(0.0, (worksheet.land_f5||0), 0.002); end
  def test_land_g5; assert_in_delta(0.0, (worksheet.land_g5||0), 0.002); end
  def test_land_h5; assert_in_delta(0.0, (worksheet.land_h5||0), 0.002); end
  def test_land_i5; assert_in_delta(0.0, (worksheet.land_i5||0), 0.002); end
  def test_land_j5; assert_in_delta(0.0, (worksheet.land_j5||0), 0.002); end
  def test_land_k5; assert_in_delta(0.0, (worksheet.land_k5||0), 0.002); end
  def test_land_l5; assert_in_delta(0.0, (worksheet.land_l5||0), 0.002); end
  def test_land_c6; assert_equal("III.b", worksheet.land_c6.to_s.gsub(/[\n\r]+/,'')); end
  def test_land_d6; assert_equal(:ref, worksheet.land_d6); end
  def test_land_e6; assert_equal(:ref, worksheet.land_e6); end
  def test_land_f6; assert_equal(:ref, worksheet.land_f6); end
  def test_land_g6; assert_equal(:ref, worksheet.land_g6); end
  def test_land_h6; assert_equal(:ref, worksheet.land_h6); end
  def test_land_i6; assert_equal(:ref, worksheet.land_i6); end
  def test_land_j6; assert_equal(:ref, worksheet.land_j6); end
  def test_land_k6; assert_equal(:ref, worksheet.land_k6); end
  def test_land_l6; assert_equal(:ref, worksheet.land_l6); end
  def test_land_c7; assert_equal("IV.a", worksheet.land_c7.to_s.gsub(/[\n\r]+/,'')); end
  def test_land_d7; assert_in_delta(0.0, (worksheet.land_d7||0), 0.002); end
  def test_land_e7; assert_in_delta(0.0, (worksheet.land_e7||0), 0.002); end
  def test_land_f7; assert_in_delta(0.0, (worksheet.land_f7||0), 0.002); end
  def test_land_g7; assert_in_delta(0.0, (worksheet.land_g7||0), 0.002); end
  def test_land_h7; assert_in_delta(0.0, (worksheet.land_h7||0), 0.002); end
  def test_land_i7; assert_in_delta(0.0, (worksheet.land_i7||0), 0.002); end
  def test_land_j7; assert_in_delta(0.0, (worksheet.land_j7||0), 0.002); end
  def test_land_k7; assert_in_delta(0.0, (worksheet.land_k7||0), 0.002); end
  def test_land_l7; assert_in_delta(0.0, (worksheet.land_l7||0), 0.002); end
  def test_land_c8; assert_equal("IV.b", worksheet.land_c8.to_s.gsub(/[\n\r]+/,'')); end
  def test_land_d8; assert_in_delta(0.0, (worksheet.land_d8||0), 0.002); end
  def test_land_e8; assert_in_delta(0.0, (worksheet.land_e8||0), 0.002); end
  def test_land_f8; assert_in_delta(0.0, (worksheet.land_f8||0), 0.002); end
  def test_land_g8; assert_in_delta(0.0, (worksheet.land_g8||0), 0.002); end
  def test_land_h8; assert_in_delta(0.0, (worksheet.land_h8||0), 0.002); end
  def test_land_i8; assert_in_delta(0.0, (worksheet.land_i8||0), 0.002); end
  def test_land_j8; assert_in_delta(0.0, (worksheet.land_j8||0), 0.002); end
  def test_land_k8; assert_in_delta(0.0, (worksheet.land_k8||0), 0.002); end
  def test_land_l8; assert_in_delta(0.0, (worksheet.land_l8||0), 0.002); end
  def test_land_c9; assert_equal("IV.c", worksheet.land_c9.to_s.gsub(/[\n\r]+/,'')); end
  def test_land_d9; assert_in_delta(0.0, (worksheet.land_d9||0), 0.002); end
  def test_land_e9; assert_in_delta(0.0, (worksheet.land_e9||0), 0.002); end
  def test_land_f9; assert_in_delta(0.0, (worksheet.land_f9||0), 0.002); end
  def test_land_g9; assert_in_delta(0.0, (worksheet.land_g9||0), 0.002); end
  def test_land_h9; assert_in_delta(0.0, (worksheet.land_h9||0), 0.002); end
  def test_land_i9; assert_in_delta(0.0, (worksheet.land_i9||0), 0.002); end
  def test_land_j9; assert_in_delta(0.0, (worksheet.land_j9||0), 0.002); end
  def test_land_k9; assert_in_delta(0.0, (worksheet.land_k9||0), 0.002); end
  def test_land_l9; assert_in_delta(0.0, (worksheet.land_l9||0), 0.002); end
  def test_land_c10; assert_equal("VI.a.Biocrop", worksheet.land_c10.to_s.gsub(/[\n\r]+/,'')); end
  def test_land_d10; assert_in_delta(0.0, (worksheet.land_d10||0), 0.002); end
  def test_land_e10; assert_in_delta(0.0, (worksheet.land_e10||0), 0.002); end
  def test_land_f10; assert_in_delta(0.0, (worksheet.land_f10||0), 0.002); end
  def test_land_g10; assert_in_delta(0.0, (worksheet.land_g10||0), 0.002); end
  def test_land_h10; assert_in_delta(0.0, (worksheet.land_h10||0), 0.002); end
  def test_land_i10; assert_in_delta(0.0, (worksheet.land_i10||0), 0.002); end
  def test_land_j10; assert_in_delta(0.0, (worksheet.land_j10||0), 0.002); end
  def test_land_k10; assert_in_delta(0.0, (worksheet.land_k10||0), 0.002); end
  def test_land_l10; assert_in_delta(0.0, (worksheet.land_l10||0), 0.002); end
  def test_land_c11; assert_equal("VI.a.Forestry", worksheet.land_c11.to_s.gsub(/[\n\r]+/,'')); end
  def test_land_d11; assert_in_delta(0.0, (worksheet.land_d11||0), 0.002); end
  def test_land_e11; assert_in_delta(0.0, (worksheet.land_e11||0), 0.002); end
  def test_land_f11; assert_in_delta(0.0, (worksheet.land_f11||0), 0.002); end
  def test_land_g11; assert_in_delta(0.0, (worksheet.land_g11||0), 0.002); end
  def test_land_h11; assert_in_delta(0.0, (worksheet.land_h11||0), 0.002); end
  def test_land_i11; assert_in_delta(0.0, (worksheet.land_i11||0), 0.002); end
  def test_land_j11; assert_in_delta(0.0, (worksheet.land_j11||0), 0.002); end
  def test_land_k11; assert_in_delta(0.0, (worksheet.land_k11||0), 0.002); end
  def test_land_l11; assert_in_delta(0.0, (worksheet.land_l11||0), 0.002); end
  def test_land_c12; assert_equal("III.a.2", worksheet.land_c12.to_s.gsub(/[\n\r]+/,'')); end
  def test_land_d12; assert_equal(:ref, worksheet.land_d12); end
  def test_land_e12; assert_equal(:ref, worksheet.land_e12); end
  def test_land_f12; assert_equal(:ref, worksheet.land_f12); end
  def test_land_g12; assert_equal(:ref, worksheet.land_g12); end
  def test_land_h12; assert_equal(:ref, worksheet.land_h12); end
  def test_land_i12; assert_equal(:ref, worksheet.land_i12); end
  def test_land_j12; assert_equal(:ref, worksheet.land_j12); end
  def test_land_k12; assert_equal(:ref, worksheet.land_k12); end
  def test_land_l12; assert_equal(:ref, worksheet.land_l12); end
  def test_land_c13; assert_equal("III.c.TidalStream", worksheet.land_c13.to_s.gsub(/[\n\r]+/,'')); end
  def test_land_d13; assert_in_delta(0.0, (worksheet.land_d13||0), 0.002); end
  def test_land_e13; assert_in_delta(0.0, (worksheet.land_e13||0), 0.002); end
  def test_land_f13; assert_in_delta(0.0, (worksheet.land_f13||0), 0.002); end
  def test_land_g13; assert_in_delta(0.0, (worksheet.land_g13||0), 0.002); end
  def test_land_h13; assert_in_delta(0.0, (worksheet.land_h13||0), 0.002); end
  def test_land_i13; assert_in_delta(0.0, (worksheet.land_i13||0), 0.002); end
  def test_land_j13; assert_in_delta(0.0, (worksheet.land_j13||0), 0.002); end
  def test_land_k13; assert_in_delta(0.0, (worksheet.land_k13||0), 0.002); end
  def test_land_l13; assert_in_delta(0.0, (worksheet.land_l13||0), 0.002); end
  def test_land_c14; assert_equal("III.c.TidalRange", worksheet.land_c14.to_s.gsub(/[\n\r]+/,'')); end
  def test_land_d14; assert_equal(:ref, worksheet.land_d14); end
  def test_land_e14; assert_equal(:ref, worksheet.land_e14); end
  def test_land_f14; assert_equal(:ref, worksheet.land_f14); end
  def test_land_g14; assert_equal(:ref, worksheet.land_g14); end
  def test_land_h14; assert_equal(:ref, worksheet.land_h14); end
  def test_land_i14; assert_equal(:ref, worksheet.land_i14); end
  def test_land_j14; assert_equal(:ref, worksheet.land_j14); end
  def test_land_k14; assert_equal(:ref, worksheet.land_k14); end
  def test_land_l14; assert_equal(:ref, worksheet.land_l14); end
  def test_land_c15; assert_equal("VI.c", worksheet.land_c15.to_s.gsub(/[\n\r]+/,'')); end
  def test_land_d15; assert_equal(:ref, worksheet.land_d15); end
  def test_land_e15; assert_equal(:ref, worksheet.land_e15); end
  def test_land_f15; assert_equal(:ref, worksheet.land_f15); end
  def test_land_g15; assert_equal(:ref, worksheet.land_g15); end
  def test_land_h15; assert_equal(:ref, worksheet.land_h15); end
  def test_land_i15; assert_equal(:ref, worksheet.land_i15); end
  def test_land_j15; assert_equal(:ref, worksheet.land_j15); end
  def test_land_k15; assert_equal(:ref, worksheet.land_k15); end
  def test_land_l15; assert_equal(:ref, worksheet.land_l15); end
  def test_land_c16; assert_equal("V.b", worksheet.land_c16.to_s.gsub(/[\n\r]+/,'')); end
  def test_land_d16; assert_in_delta(0.0, (worksheet.land_d16||0), 0.002); end
  def test_land_e16; assert_in_delta(0.0, (worksheet.land_e16||0), 0.002); end
  def test_land_f16; assert_in_delta(0.0, (worksheet.land_f16||0), 0.002); end
  def test_land_g16; assert_in_delta(0.0, (worksheet.land_g16||0), 0.002); end
  def test_land_h16; assert_in_delta(0.0, (worksheet.land_h16||0), 0.002); end
  def test_land_i16; assert_in_delta(0.0, (worksheet.land_i16||0), 0.002); end
  def test_land_j16; assert_in_delta(0.0, (worksheet.land_j16||0), 0.002); end
  def test_land_k16; assert_in_delta(0.0, (worksheet.land_k16||0), 0.002); end
  def test_land_l16; assert_in_delta(0.0, (worksheet.land_l16||0), 0.002); end
  def test_land_c17; assert_equal("VII.a", worksheet.land_c17.to_s.gsub(/[\n\r]+/,'')); end
  def test_land_d17; assert_in_delta(0.0, (worksheet.land_d17||0), 0.002); end
  def test_land_e17; assert_in_delta(0.0, (worksheet.land_e17||0), 0.002); end
  def test_land_f17; assert_in_delta(0.0, (worksheet.land_f17||0), 0.002); end
  def test_land_g17; assert_in_delta(0.0, (worksheet.land_g17||0), 0.002); end
  def test_land_h17; assert_in_delta(0.0, (worksheet.land_h17||0), 0.002); end
  def test_land_i17; assert_in_delta(0.0, (worksheet.land_i17||0), 0.002); end
  def test_land_j17; assert_in_delta(0.0, (worksheet.land_j17||0), 0.002); end
  def test_land_k17; assert_in_delta(0.0, (worksheet.land_k17||0), 0.002); end
  def test_land_l17; assert_in_delta(0.0, (worksheet.land_l17||0), 0.002); end
  def test_land_c18; assert_equal("III.c.Wave", worksheet.land_c18.to_s.gsub(/[\n\r]+/,'')); end
  def test_land_d18; assert_in_delta(0.0, (worksheet.land_d18||0), 0.002); end
  def test_land_e18; assert_in_delta(0.0, (worksheet.land_e18||0), 0.002); end
  def test_land_f18; assert_in_delta(0.0, (worksheet.land_f18||0), 0.002); end
  def test_land_g18; assert_in_delta(0.0, (worksheet.land_g18||0), 0.002); end
  def test_land_h18; assert_in_delta(0.0, (worksheet.land_h18||0), 0.002); end
  def test_land_i18; assert_in_delta(0.0, (worksheet.land_i18||0), 0.002); end
  def test_land_j18; assert_in_delta(0.0, (worksheet.land_j18||0), 0.002); end
  def test_land_k18; assert_in_delta(0.0, (worksheet.land_k18||0), 0.002); end
  def test_land_l18; assert_in_delta(0.0, (worksheet.land_l18||0), 0.002); end
  def test_land_c19; assert_equal("I.a", worksheet.land_c19.to_s.gsub(/[\n\r]+/,'')); end
  def test_land_d19; assert_in_delta(0.0, (worksheet.land_d19||0), 0.002); end
  def test_land_e19; assert_in_delta(0.0, (worksheet.land_e19||0), 0.002); end
  def test_land_f19; assert_in_delta(0.0, (worksheet.land_f19||0), 0.002); end
  def test_land_g19; assert_in_delta(0.0, (worksheet.land_g19||0), 0.002); end
  def test_land_h19; assert_in_delta(0.0, (worksheet.land_h19||0), 0.002); end
  def test_land_i19; assert_in_delta(0.0, (worksheet.land_i19||0), 0.002); end
  def test_land_j19; assert_in_delta(0.0, (worksheet.land_j19||0), 0.002); end
  def test_land_k19; assert_in_delta(0.0, (worksheet.land_k19||0), 0.002); end
  def test_land_l19; assert_in_delta(0.0, (worksheet.land_l19||0), 0.002); end
  def test_land_c20; assert_equal("I.b", worksheet.land_c20.to_s.gsub(/[\n\r]+/,'')); end
  def test_land_d20; assert_equal(:ref, worksheet.land_d20); end
  def test_land_e20; assert_equal(:ref, worksheet.land_e20); end
  def test_land_f20; assert_equal(:ref, worksheet.land_f20); end
  def test_land_g20; assert_equal(:ref, worksheet.land_g20); end
  def test_land_h20; assert_equal(:ref, worksheet.land_h20); end
  def test_land_i20; assert_equal(:ref, worksheet.land_i20); end
  def test_land_j20; assert_equal(:ref, worksheet.land_j20); end
  def test_land_k20; assert_equal(:ref, worksheet.land_k20); end
  def test_land_l20; assert_equal(:ref, worksheet.land_l20); end
  def test_land_c21; assert_equal("II.a", worksheet.land_c21.to_s.gsub(/[\n\r]+/,'')); end
  def test_land_d21; assert_equal(:ref, worksheet.land_d21); end
  def test_land_e21; assert_equal(:ref, worksheet.land_e21); end
  def test_land_f21; assert_equal(:ref, worksheet.land_f21); end
  def test_land_g21; assert_equal(:ref, worksheet.land_g21); end
  def test_land_h21; assert_equal(:ref, worksheet.land_h21); end
  def test_land_i21; assert_equal(:ref, worksheet.land_i21); end
  def test_land_j21; assert_equal(:ref, worksheet.land_j21); end
  def test_land_k21; assert_equal(:ref, worksheet.land_k21); end
  def test_land_l21; assert_equal(:ref, worksheet.land_l21); end
  def test_land_c22; assert_equal("III.d", worksheet.land_c22.to_s.gsub(/[\n\r]+/,'')); end
  def test_land_d22; assert_equal(:ref, worksheet.land_d22); end
  def test_land_e22; assert_equal(:ref, worksheet.land_e22); end
  def test_land_f22; assert_equal(:ref, worksheet.land_f22); end
  def test_land_g22; assert_equal(:ref, worksheet.land_g22); end
  def test_land_h22; assert_equal(:ref, worksheet.land_h22); end
  def test_land_i22; assert_equal(:ref, worksheet.land_i22); end
  def test_land_j22; assert_equal(:ref, worksheet.land_j22); end
  def test_land_k22; assert_equal(:ref, worksheet.land_k22); end
  def test_land_l22; assert_equal(:ref, worksheet.land_l22); end
  def test_land_c23; assert_equal("VII.c", worksheet.land_c23.to_s.gsub(/[\n\r]+/,'')); end
  def test_land_d23; assert_equal(:ref, worksheet.land_d23); end
  def test_land_e23; assert_equal(:ref, worksheet.land_e23); end
  def test_land_f23; assert_equal(:ref, worksheet.land_f23); end
  def test_land_g23; assert_equal(:ref, worksheet.land_g23); end
  def test_land_h23; assert_equal(:ref, worksheet.land_h23); end
  def test_land_i23; assert_equal(:ref, worksheet.land_i23); end
  def test_land_j23; assert_equal(:ref, worksheet.land_j23); end
  def test_land_k23; assert_equal(:ref, worksheet.land_k23); end
  def test_land_l23; assert_equal(:ref, worksheet.land_l23); end
  def test_land_c24; assert_equal("VI.b", worksheet.land_c24.to_s.gsub(/[\n\r]+/,'')); end
  def test_land_d24; assert_in_delta(0.0, (worksheet.land_d24||0), 0.002); end
  def test_land_e24; assert_in_delta(0.0, (worksheet.land_e24||0), 0.002); end
  def test_land_f24; assert_in_delta(0.0, (worksheet.land_f24||0), 0.002); end
  def test_land_g24; assert_in_delta(0.0, (worksheet.land_g24||0), 0.002); end
  def test_land_h24; assert_in_delta(0.0, (worksheet.land_h24||0), 0.002); end
  def test_land_i24; assert_in_delta(0.0, (worksheet.land_i24||0), 0.002); end
  def test_land_j24; assert_in_delta(0.0, (worksheet.land_j24||0), 0.002); end
  def test_land_k24; assert_in_delta(0.0, (worksheet.land_k24||0), 0.002); end
  def test_land_l24; assert_in_delta(0.0, (worksheet.land_l24||0), 0.002); end
  def test_land_d29; assert_equal("2050 Split of heating technology", worksheet.land_d29.to_s.gsub(/[\n\r]+/,'')); end
  def test_land_e29; assert_equal("Residential", worksheet.land_e29.to_s.gsub(/[\n\r]+/,'')); end
  def test_land_f29; assert_equal("Commercial", worksheet.land_f29.to_s.gsub(/[\n\r]+/,'')); end
  def test_land_d30; assert_equal("Electric resistance", worksheet.land_d30.to_s.gsub(/[\n\r]+/,'')); end
  def test_land_e30; assert_in_delta(0.0, (worksheet.land_e30||0), 0.002); end
  def test_land_f30; assert_equal(:ref, worksheet.land_f30); end
  def test_land_d31; assert_equal("Air-source heat pump", worksheet.land_d31.to_s.gsub(/[\n\r]+/,'')); end
  def test_land_e31; assert_in_delta(0.0, (worksheet.land_e31||0), 0.002); end
  def test_land_f31; assert_equal(:ref, worksheet.land_f31); end
  def test_land_d32; assert_equal("Ground-source heat pump", worksheet.land_d32.to_s.gsub(/[\n\r]+/,'')); end
  def test_land_e32; assert_in_delta(0.0, (worksheet.land_e32||0), 0.002); end
  def test_land_f32; assert_equal(:ref, worksheet.land_f32); end
  def test_land_d33; assert_equal("Wood open fire", worksheet.land_d33.to_s.gsub(/[\n\r]+/,'')); end
  def test_land_e33; assert_in_delta(0.0, (worksheet.land_e33||0), 0.002); end
  def test_land_f33; assert_equal(:ref, worksheet.land_f33); end
  def test_land_d34; assert_equal("Wood burner", worksheet.land_d34.to_s.gsub(/[\n\r]+/,'')); end
  def test_land_e34; assert_in_delta(-1.982541115402065e-18, worksheet.land_e34, 0.002); end
  def test_land_f34; assert_equal(:ref, worksheet.land_f34); end
  def test_land_d35; assert_equal("Coal open fire", worksheet.land_d35.to_s.gsub(/[\n\r]+/,'')); end
  def test_land_e35; assert_in_delta(0.0, (worksheet.land_e35||0), 0.002); end
  def test_land_f35; assert_equal(:ref, worksheet.land_f35); end
  def test_land_d36; assert_equal(:ref, worksheet.land_d36); end
  def test_land_e36; assert_equal(:ref, worksheet.land_e36); end
  def test_land_f36; assert_equal(:ref, worksheet.land_f36); end
  def test_land_d37; assert_equal(:ref, worksheet.land_d37); end
  def test_land_e37; assert_equal(:ref, worksheet.land_e37); end
  def test_land_f37; assert_equal(:ref, worksheet.land_f37); end
  def test_land_d38; assert_equal(:ref, worksheet.land_d38); end
  def test_land_e38; assert_equal(:ref, worksheet.land_e38); end
  def test_land_f38; assert_equal(:ref, worksheet.land_f38); end
  def test_land_d39; assert_equal(:ref, worksheet.land_d39); end
  def test_land_e39; assert_equal(:ref, worksheet.land_e39); end
  def test_land_f39; assert_equal(:ref, worksheet.land_f39); end
  def test_land_d40; assert_equal(:ref, worksheet.land_d40); end
  def test_land_e40; assert_equal(:ref, worksheet.land_e40); end
  def test_land_f40; assert_equal(:ref, worksheet.land_f40); end
  def test_land_d41; assert_equal(:ref, worksheet.land_d41); end
  def test_land_e41; assert_equal(:ref, worksheet.land_e41); end
  def test_land_f41; assert_equal(:ref, worksheet.land_f41); end
  def test_land_d42; assert_equal("Diesel burner", worksheet.land_d42.to_s.gsub(/[\n\r]+/,'')); end
  def test_land_e42; assert_in_delta(0.0, (worksheet.land_e42||0), 0.002); end
  def test_land_f42; assert_equal(:ref, worksheet.land_f42); end
  def test_land_d43; assert_equal("Total", worksheet.land_d43.to_s.gsub(/[\n\r]+/,'')); end
  def test_land_e43; assert_equal(:ref, worksheet.land_e43); end
  def test_land_f43; assert_equal(:ref, worksheet.land_f43); end
  def test_security_d144; assert_equal("MW installed capacity", worksheet.security_d144.to_s.gsub(/[\n\r]+/,'')); end
  def test_security_e144; assert_in_epsilon(2012.0, worksheet.security_e144, 0.002); end
  def test_security_f144; assert_in_epsilon(2015.0, worksheet.security_f144, 0.002); end
  def test_security_g144; assert_in_epsilon(2020.0, worksheet.security_g144, 0.002); end
  def test_security_h144; assert_in_epsilon(2025.0, worksheet.security_h144, 0.002); end
  def test_security_i144; assert_in_epsilon(2030.0, worksheet.security_i144, 0.002); end
  def test_security_j144; assert_in_epsilon(2035.0, worksheet.security_j144, 0.002); end
  def test_security_k144; assert_in_epsilon(2040.0, worksheet.security_k144, 0.002); end
  def test_security_l144; assert_in_epsilon(2045.0, worksheet.security_l144, 0.002); end
  def test_security_m144; assert_in_epsilon(2050.0, worksheet.security_m144, 0.002); end
  def test_security_d145; assert_equal("Automatically built CCGT gas", worksheet.security_d145.to_s.gsub(/[\n\r]+/,'')); end
  def test_security_e145; assert_in_delta(0.0, (worksheet.security_e145||0), 0.002); end
  def test_security_f145; assert_in_delta(0.0, (worksheet.security_f145||0), 0.002); end
  def test_security_g145; assert_in_delta(0.0, (worksheet.security_g145||0), 0.002); end
  def test_security_h145; assert_in_delta(0.0, (worksheet.security_h145||0), 0.002); end
  def test_security_i145; assert_in_delta(0.0, (worksheet.security_i145||0), 0.002); end
  def test_security_j145; assert_in_delta(0.0, (worksheet.security_j145||0), 0.002); end
  def test_security_k145; assert_in_delta(0.0, (worksheet.security_k145||0), 0.002); end
  def test_security_l145; assert_in_delta(0.0, (worksheet.security_l145||0), 0.002); end
  def test_security_m145; assert_in_delta(0.0, (worksheet.security_m145||0), 0.002); end
  def test_security_d146; assert_equal("Automatically built peaking gas", worksheet.security_d146.to_s.gsub(/[\n\r]+/,'')); end
  def test_security_e146; assert_in_delta(0.0, (worksheet.security_e146||0), 0.002); end
  def test_security_f146; assert_in_delta(0.0, (worksheet.security_f146||0), 0.002); end
  def test_security_g146; assert_in_delta(0.0, (worksheet.security_g146||0), 0.002); end
  def test_security_h146; assert_in_delta(0.0, (worksheet.security_h146||0), 0.002); end
  def test_security_i146; assert_in_delta(0.0, (worksheet.security_i146||0), 0.002); end
  def test_security_j146; assert_in_delta(0.0, (worksheet.security_j146||0), 0.002); end
  def test_security_k146; assert_in_delta(0.0, (worksheet.security_k146||0), 0.002); end
  def test_security_l146; assert_in_delta(0.0, (worksheet.security_l146||0), 0.002); end
  def test_security_m146; assert_in_delta(0.0, (worksheet.security_m146||0), 0.002); end
  def test_security_d35; assert_equal("Vector", worksheet.security_d35.to_s.gsub(/[\n\r]+/,'')); end
  def test_security_e35; assert_in_epsilon(2012.0, worksheet.security_e35, 0.002); end
  def test_security_f35; assert_in_epsilon(2015.0, worksheet.security_f35, 0.002); end
  def test_security_g35; assert_in_epsilon(2020.0, worksheet.security_g35, 0.002); end
  def test_security_h35; assert_in_epsilon(2025.0, worksheet.security_h35, 0.002); end
  def test_security_i35; assert_in_epsilon(2030.0, worksheet.security_i35, 0.002); end
  def test_security_j35; assert_in_epsilon(2035.0, worksheet.security_j35, 0.002); end
  def test_security_k35; assert_in_epsilon(2040.0, worksheet.security_k35, 0.002); end
  def test_security_l35; assert_in_epsilon(2045.0, worksheet.security_l35, 0.002); end
  def test_security_m35; assert_in_epsilon(2050.0, worksheet.security_m35, 0.002); end
  def test_security_d36; assert_equal("Nuclear fission", worksheet.security_d36.to_s.gsub(/[\n\r]+/,'')); end
  def test_security_e36; assert_in_delta(0.0, (worksheet.security_e36||0), 0.002); end
  def test_security_f36; assert_in_delta(0.0, (worksheet.security_f36||0), 0.002); end
  def test_security_g36; assert_in_delta(0.0, (worksheet.security_g36||0), 0.002); end
  def test_security_h36; assert_in_delta(0.0, (worksheet.security_h36||0), 0.002); end
  def test_security_i36; assert_in_delta(0.0, (worksheet.security_i36||0), 0.002); end
  def test_security_j36; assert_in_delta(0.0, (worksheet.security_j36||0), 0.002); end
  def test_security_k36; assert_in_delta(0.0, (worksheet.security_k36||0), 0.002); end
  def test_security_l36; assert_in_delta(0.0, (worksheet.security_l36||0), 0.002); end
  def test_security_m36; assert_in_delta(0.0, (worksheet.security_m36||0), 0.002); end
  def test_security_d37; assert_equal("Solar", worksheet.security_d37.to_s.gsub(/[\n\r]+/,'')); end
  def test_security_e37; assert_in_delta(0.0005095553675188922, worksheet.security_e37, 0.002); end
  def test_security_f37; assert_in_delta(0.0007206029337221578, worksheet.security_f37, 0.002); end
  def test_security_g37; assert_in_delta(0.001230625134111002, worksheet.security_g37, 0.002); end
  def test_security_h37; assert_in_delta(0.0016535922452714737, worksheet.security_h37, 0.002); end
  def test_security_i37; assert_in_delta(0.0022167020442833245, worksheet.security_i37, 0.002); end
  def test_security_j37; assert_in_delta(0.002901730601325225, worksheet.security_j37, 0.002); end
  def test_security_k37; assert_in_delta(0.003674715009412599, worksheet.security_k37, 0.002); end
  def test_security_l37; assert_in_delta(0.004382586058349214, worksheet.security_l37, 0.002); end
  def test_security_m37; assert_in_delta(0.0052003418495128505, worksheet.security_m37, 0.002); end
  def test_security_d38; assert_equal("Wind", worksheet.security_d38.to_s.gsub(/[\n\r]+/,'')); end
  def test_security_e38; assert_in_delta(0.0, (worksheet.security_e38||0), 0.002); end
  def test_security_f38; assert_in_delta(0.0, (worksheet.security_f38||0), 0.002); end
  def test_security_g38; assert_in_delta(0.0, (worksheet.security_g38||0), 0.002); end
  def test_security_h38; assert_in_delta(0.0, (worksheet.security_h38||0), 0.002); end
  def test_security_i38; assert_in_delta(0.0, (worksheet.security_i38||0), 0.002); end
  def test_security_j38; assert_in_delta(0.0, (worksheet.security_j38||0), 0.002); end
  def test_security_k38; assert_in_delta(0.0, (worksheet.security_k38||0), 0.002); end
  def test_security_l38; assert_in_delta(0.0, (worksheet.security_l38||0), 0.002); end
  def test_security_m38; assert_in_delta(0.0, (worksheet.security_m38||0), 0.002); end
  def test_security_d39; assert_equal("Tidal", worksheet.security_d39.to_s.gsub(/[\n\r]+/,'')); end
  def test_security_e39; assert_in_delta(0.0, (worksheet.security_e39||0), 0.002); end
  def test_security_f39; assert_in_delta(0.0, (worksheet.security_f39||0), 0.002); end
  def test_security_g39; assert_in_delta(0.0, (worksheet.security_g39||0), 0.002); end
  def test_security_h39; assert_in_delta(0.0, (worksheet.security_h39||0), 0.002); end
  def test_security_i39; assert_in_delta(0.0, (worksheet.security_i39||0), 0.002); end
  def test_security_j39; assert_in_delta(0.0, (worksheet.security_j39||0), 0.002); end
  def test_security_k39; assert_in_delta(0.0, (worksheet.security_k39||0), 0.002); end
  def test_security_l39; assert_in_delta(0.0, (worksheet.security_l39||0), 0.002); end
  def test_security_m39; assert_in_delta(0.0, (worksheet.security_m39||0), 0.002); end
  def test_security_d40; assert_equal("Wave", worksheet.security_d40.to_s.gsub(/[\n\r]+/,'')); end
  def test_security_e40; assert_in_delta(0.0, (worksheet.security_e40||0), 0.002); end
  def test_security_f40; assert_in_delta(0.0, (worksheet.security_f40||0), 0.002); end
  def test_security_g40; assert_in_delta(0.0, (worksheet.security_g40||0), 0.002); end
  def test_security_h40; assert_in_delta(0.0, (worksheet.security_h40||0), 0.002); end
  def test_security_i40; assert_in_delta(0.0, (worksheet.security_i40||0), 0.002); end
  def test_security_j40; assert_in_delta(0.0, (worksheet.security_j40||0), 0.002); end
  def test_security_k40; assert_in_delta(0.0, (worksheet.security_k40||0), 0.002); end
  def test_security_l40; assert_in_delta(0.0, (worksheet.security_l40||0), 0.002); end
  def test_security_m40; assert_in_delta(0.0, (worksheet.security_m40||0), 0.002); end
  def test_security_d41; assert_equal("Geothermal", worksheet.security_d41.to_s.gsub(/[\n\r]+/,'')); end
  def test_security_e41; assert_in_delta(0.0, (worksheet.security_e41||0), 0.002); end
  def test_security_f41; assert_in_delta(0.0, (worksheet.security_f41||0), 0.002); end
  def test_security_g41; assert_in_delta(0.0, (worksheet.security_g41||0), 0.002); end
  def test_security_h41; assert_in_delta(0.0, (worksheet.security_h41||0), 0.002); end
  def test_security_i41; assert_in_delta(0.0, (worksheet.security_i41||0), 0.002); end
  def test_security_j41; assert_in_delta(0.0, (worksheet.security_j41||0), 0.002); end
  def test_security_k41; assert_in_delta(0.0, (worksheet.security_k41||0), 0.002); end
  def test_security_l41; assert_in_delta(0.0, (worksheet.security_l41||0), 0.002); end
  def test_security_m41; assert_in_delta(0.0, (worksheet.security_m41||0), 0.002); end
  def test_security_d42; assert_equal("Hydro", worksheet.security_d42.to_s.gsub(/[\n\r]+/,'')); end
  def test_security_e42; assert_in_delta(0.0, (worksheet.security_e42||0), 0.002); end
  def test_security_f42; assert_in_delta(0.0, (worksheet.security_f42||0), 0.002); end
  def test_security_g42; assert_in_delta(0.0, (worksheet.security_g42||0), 0.002); end
  def test_security_h42; assert_in_delta(0.0, (worksheet.security_h42||0), 0.002); end
  def test_security_i42; assert_in_delta(0.0, (worksheet.security_i42||0), 0.002); end
  def test_security_j42; assert_in_delta(0.0, (worksheet.security_j42||0), 0.002); end
  def test_security_k42; assert_in_delta(0.0, (worksheet.security_k42||0), 0.002); end
  def test_security_l42; assert_in_delta(0.0, (worksheet.security_l42||0), 0.002); end
  def test_security_m42; assert_in_delta(0.0, (worksheet.security_m42||0), 0.002); end
  def test_security_d43; assert_equal("Electricity imports", worksheet.security_d43.to_s.gsub(/[\n\r]+/,'')); end
  def test_security_e43; assert_in_delta(0.2651635264153793, worksheet.security_e43, 0.002); end
  def test_security_f43; assert_in_delta(0.2687893120876946, worksheet.security_f43, 0.002); end
  def test_security_g43; assert_in_delta(0.27215461154522264, worksheet.security_g43, 0.002); end
  def test_security_h43; assert_in_delta(0.2879136328400939, worksheet.security_h43, 0.002); end
  def test_security_i43; assert_in_delta(0.32566195498850703, worksheet.security_i43, 0.002); end
  def test_security_j43; assert_in_delta(0.37171389213883366, worksheet.security_j43, 0.002); end
  def test_security_k43; assert_in_delta(0.41718359343946027, worksheet.security_k43, 0.002); end
  def test_security_l43; assert_in_delta(0.4469537501351347, worksheet.security_l43, 0.002); end
  def test_security_m43; assert_in_delta(0.48245682371651255, worksheet.security_m43, 0.002); end
  def test_security_d44; assert_equal("Environmental heat", worksheet.security_d44.to_s.gsub(/[\n\r]+/,'')); end
  def test_security_e44; assert_in_delta(0.03260203141658433, worksheet.security_e44, 0.002); end
  def test_security_f44; assert_in_delta(0.03319076118088816, worksheet.security_f44, 0.002); end
  def test_security_g44; assert_in_delta(0.03344461327553059, worksheet.security_g44, 0.002); end
  def test_security_h44; assert_in_delta(0.03440550584742249, worksheet.security_h44, 0.002); end
  def test_security_i44; assert_in_delta(0.037340765324209386, worksheet.security_i44, 0.002); end
  def test_security_j44; assert_in_delta(0.04104511645116263, worksheet.security_j44, 0.002); end
  def test_security_k44; assert_in_delta(0.04474928290419802, worksheet.security_k44, 0.002); end
  def test_security_l44; assert_in_delta(0.046801422619113645, worksheet.security_l44, 0.002); end
  def test_security_m44; assert_in_delta(0.04939065418668929, worksheet.security_m44, 0.002); end
  def test_security_d45; assert_equal("Waste", worksheet.security_d45.to_s.gsub(/[\n\r]+/,'')); end
  def test_security_e45; assert_in_delta(0.04111784858242298, worksheet.security_e45, 0.002); end
  def test_security_f45; assert_in_delta(0.03184945400361977, worksheet.security_f45, 0.002); end
  def test_security_g45; assert_in_delta(0.054790491141402116, worksheet.security_g45, 0.002); end
  def test_security_h45; assert_in_delta(0.107259564336799, worksheet.security_h45, 0.002); end
  def test_security_i45; assert_in_delta(0.08894797434444515, worksheet.security_i45, 0.002); end
  def test_security_j45; assert_in_delta(0.05531596714430478, worksheet.security_j45, 0.002); end
  def test_security_k45; assert_in_delta(0.03754586568594317, worksheet.security_k45, 0.002); end
  def test_security_l45; assert_in_delta(0.08138562097270849, worksheet.security_l45, 0.002); end
  def test_security_m45; assert_in_delta(0.07408453531975794, worksheet.security_m45, 0.002); end
  def test_security_d46; assert_equal("Agriculture", worksheet.security_d46.to_s.gsub(/[\n\r]+/,'')); end
  def test_security_e46; assert_in_delta(0.0, (worksheet.security_e46||0), 0.002); end
  def test_security_f46; assert_in_delta(0.0, (worksheet.security_f46||0), 0.002); end
  def test_security_g46; assert_in_delta(0.0, (worksheet.security_g46||0), 0.002); end
  def test_security_h46; assert_in_delta(0.0, (worksheet.security_h46||0), 0.002); end
  def test_security_i46; assert_in_delta(0.0, (worksheet.security_i46||0), 0.002); end
  def test_security_j46; assert_in_delta(0.0, (worksheet.security_j46||0), 0.002); end
  def test_security_k46; assert_in_delta(0.0, (worksheet.security_k46||0), 0.002); end
  def test_security_l46; assert_in_delta(0.0, (worksheet.security_l46||0), 0.002); end
  def test_security_m46; assert_in_delta(0.0, (worksheet.security_m46||0), 0.002); end
  def test_security_d47; assert_equal("Biomass imports", worksheet.security_d47.to_s.gsub(/[\n\r]+/,'')); end
  def test_security_e47; assert_in_delta(0.0330661728449924, worksheet.security_e47, 0.002); end
  def test_security_f47; assert_in_delta(0.041915172112690476, worksheet.security_f47, 0.002); end
  def test_security_g47; assert_in_delta(0.020465201475555368, worksheet.security_g47, 0.002); end
  def test_security_h47; assert_in_delta(0.002585384529674034, worksheet.security_h47, 0.002); end
  def test_security_i47; assert_in_delta(0.06124333435397491, worksheet.security_i47, 0.002); end
  def test_security_j47; assert_in_delta(0.14439428119627562, worksheet.security_j47, 0.002); end
  def test_security_k47; assert_in_delta(0.21894812141717857, worksheet.security_k47, 0.002); end
  def test_security_l47; assert_in_delta(0.2305832855951642, worksheet.security_l47, 0.002); end
  def test_security_m47; assert_in_delta(0.25381114138261096, worksheet.security_m47, 0.002); end
  def test_security_d48; assert_equal("Coal reserves", worksheet.security_d48.to_s.gsub(/[\n\r]+/,'')); end
  def test_security_e48; assert_in_delta(0.0, (worksheet.security_e48||0), 0.002); end
  def test_security_f48; assert_in_delta(0.0, (worksheet.security_f48||0), 0.002); end
  def test_security_g48; assert_in_delta(0.0, (worksheet.security_g48||0), 0.002); end
  def test_security_h48; assert_in_delta(0.0, (worksheet.security_h48||0), 0.002); end
  def test_security_i48; assert_in_delta(0.0, (worksheet.security_i48||0), 0.002); end
  def test_security_j48; assert_in_delta(0.0, (worksheet.security_j48||0), 0.002); end
  def test_security_k48; assert_in_delta(0.0, (worksheet.security_k48||0), 0.002); end
  def test_security_l48; assert_in_delta(0.0, (worksheet.security_l48||0), 0.002); end
  def test_security_m48; assert_in_delta(0.0, (worksheet.security_m48||0), 0.002); end
  def test_security_d49; assert_equal("Coal imports", worksheet.security_d49.to_s.gsub(/[\n\r]+/,'')); end
  def test_security_e49; assert_in_delta(0.004853677835305929, worksheet.security_e49, 0.002); end
  def test_security_f49; assert_in_delta(0.004921996472767375, worksheet.security_f49, 0.002); end
  def test_security_g49; assert_in_delta(0.004948632780279965, worksheet.security_g49, 0.002); end
  def test_security_h49; assert_in_delta(0.005076489582012035, worksheet.security_h49, 0.002); end
  def test_security_i49; assert_in_delta(0.005496232949494562, worksheet.security_i49, 0.002); end
  def test_security_j49; assert_in_delta(0.006029021720784877, worksheet.security_j49, 0.002); end
  def test_security_k49; assert_in_delta(0.006559423598926178, worksheet.security_k49, 0.002); end
  def test_security_l49; assert_in_delta(0.006845910850562445, worksheet.security_l49, 0.002); end
  def test_security_m49; assert_in_delta(0.007209330145141852, worksheet.security_m49, 0.002); end
  def test_security_d50; assert_equal("Oil reserves", worksheet.security_d50.to_s.gsub(/[\n\r]+/,'')); end
  def test_security_e50; assert_in_delta(0.0, (worksheet.security_e50||0), 0.002); end
  def test_security_f50; assert_in_delta(0.0, (worksheet.security_f50||0), 0.002); end
  def test_security_g50; assert_in_delta(0.0, (worksheet.security_g50||0), 0.002); end
  def test_security_h50; assert_in_delta(0.0, (worksheet.security_h50||0), 0.002); end
  def test_security_i50; assert_in_delta(0.0, (worksheet.security_i50||0), 0.002); end
  def test_security_j50; assert_in_delta(0.0, (worksheet.security_j50||0), 0.002); end
  def test_security_k50; assert_in_delta(0.0, (worksheet.security_k50||0), 0.002); end
  def test_security_l50; assert_in_delta(0.0, (worksheet.security_l50||0), 0.002); end
  def test_security_m50; assert_in_delta(0.0, (worksheet.security_m50||0), 0.002); end
  def test_security_d51; assert_equal("Oil imports", worksheet.security_d51.to_s.gsub(/[\n\r]+/,'')); end
  def test_security_e51; assert_in_delta(0.49569099304521735, worksheet.security_e51, 0.002); end
  def test_security_f51; assert_in_delta(0.49123607657293905, worksheet.security_f51, 0.002); end
  def test_security_g51; assert_in_delta(0.49127789027503105, worksheet.security_g51, 0.002); end
  def test_security_h51; assert_in_delta(0.44139176071586284, worksheet.security_h51, 0.002); end
  def test_security_i51; assert_in_delta(0.35441280997793034, worksheet.security_i51, 0.002); end
  def test_security_j51; assert_in_delta(0.24992280333881498, worksheet.security_j51, 0.002); end
  def test_security_k51; assert_in_delta(0.1395954127107151, worksheet.security_k51, 0.002); end
  def test_security_l51; assert_in_delta(0.05374310879943054, worksheet.security_l51, 0.002); end
  def test_security_m51; assert_in_delta(0.0, (worksheet.security_m51||0), 0.002); end
  def test_security_d52; assert_equal("Gas reserves", worksheet.security_d52.to_s.gsub(/[\n\r]+/,'')); end
  def test_security_e52; assert_in_delta(0.0, (worksheet.security_e52||0), 0.002); end
  def test_security_f52; assert_in_delta(0.0, (worksheet.security_f52||0), 0.002); end
  def test_security_g52; assert_in_delta(0.0, (worksheet.security_g52||0), 0.002); end
  def test_security_h52; assert_in_delta(0.0, (worksheet.security_h52||0), 0.002); end
  def test_security_i52; assert_in_delta(0.0, (worksheet.security_i52||0), 0.002); end
  def test_security_j52; assert_in_delta(0.0, (worksheet.security_j52||0), 0.002); end
  def test_security_k52; assert_in_delta(0.0, (worksheet.security_k52||0), 0.002); end
  def test_security_l52; assert_in_delta(0.0, (worksheet.security_l52||0), 0.002); end
  def test_security_m52; assert_in_delta(0.0, (worksheet.security_m52||0), 0.002); end
  def test_security_d53; assert_equal("Gas imports", worksheet.security_d53.to_s.gsub(/[\n\r]+/,'')); end
  def test_security_e53; assert_in_delta(0.1269961944925788, worksheet.security_e53, 0.002); end
  def test_security_f53; assert_in_delta(0.12737662463567836, worksheet.security_f53, 0.002); end
  def test_security_g53; assert_in_delta(0.12168793437286723, worksheet.security_g53, 0.002); end
  def test_security_h53; assert_in_delta(0.11971406990286419, worksheet.security_h53, 0.002); end
  def test_security_i53; assert_in_delta(0.12468022601715519, worksheet.security_i53, 0.002); end
  def test_security_j53; assert_in_delta(0.12867718740849812, worksheet.security_j53, 0.002); end
  def test_security_k53; assert_in_delta(0.13174358523416627, worksheet.security_k53, 0.002); end
  def test_security_l53; assert_in_delta(0.12930431496953662, worksheet.security_l53, 0.002); end
  def test_security_m53; assert_in_delta(0.12784717339977464, worksheet.security_m53, 0.002); end
  def test_security_d130; assert_equal("Vector", worksheet.security_d130.to_s.gsub(/[\n\r]+/,'')); end
  def test_security_e130; assert_in_epsilon(2012.0, worksheet.security_e130, 0.002); end
  def test_security_f130; assert_in_epsilon(2015.0, worksheet.security_f130, 0.002); end
  def test_security_g130; assert_in_epsilon(2020.0, worksheet.security_g130, 0.002); end
  def test_security_h130; assert_in_epsilon(2025.0, worksheet.security_h130, 0.002); end
  def test_security_i130; assert_in_epsilon(2030.0, worksheet.security_i130, 0.002); end
  def test_security_j130; assert_in_epsilon(2035.0, worksheet.security_j130, 0.002); end
  def test_security_k130; assert_in_epsilon(2040.0, worksheet.security_k130, 0.002); end
  def test_security_l130; assert_in_epsilon(2045.0, worksheet.security_l130, 0.002); end
  def test_security_m130; assert_in_epsilon(2050.0, worksheet.security_m130, 0.002); end
  def test_security_d131; assert_equal("Uranium", worksheet.security_d131.to_s.gsub(/[\n\r]+/,'')); end
  def test_security_e131; assert_in_delta(0.0, (worksheet.security_e131||0), 0.002); end
  def test_security_f131; assert_in_delta(0.0, (worksheet.security_f131||0), 0.002); end
  def test_security_g131; assert_in_delta(0.0, (worksheet.security_g131||0), 0.002); end
  def test_security_h131; assert_in_delta(0.0, (worksheet.security_h131||0), 0.002); end
  def test_security_i131; assert_in_delta(0.0, (worksheet.security_i131||0), 0.002); end
  def test_security_j131; assert_in_delta(0.0, (worksheet.security_j131||0), 0.002); end
  def test_security_k131; assert_in_delta(0.0, (worksheet.security_k131||0), 0.002); end
  def test_security_l131; assert_in_delta(0.0, (worksheet.security_l131||0), 0.002); end
  def test_security_m131; assert_in_delta(0.0, (worksheet.security_m131||0), 0.002); end
  def test_security_d132; assert_equal("Electricity", worksheet.security_d132.to_s.gsub(/[\n\r]+/,'')); end
  def test_security_e132; assert_in_delta(0.998082021091112, worksheet.security_e132, 0.002); end
  def test_security_f132; assert_in_delta(0.997326247037461, worksheet.security_f132, 0.002); end
  def test_security_g132; assert_in_delta(0.9954985677022696, worksheet.security_g132, 0.002); end
  def test_security_h132; assert_in_delta(0.9942894357440349, worksheet.security_h132, 0.002); end
  def test_security_i132; assert_in_delta(0.9932392609377388, worksheet.security_i132, 0.002); end
  def test_security_j132; assert_in_delta(0.9922541121480726, worksheet.security_j132, 0.002); end
  def test_security_k132; assert_in_delta(0.9912685221233811, worksheet.security_k132, 0.002); end
  def test_security_l132; assert_in_delta(0.9902897557610553, worksheet.security_l132, 0.002); end
  def test_security_m132; assert_in_delta(0.9893360700575848, worksheet.security_m132, 0.002); end
  def test_security_d133; assert_equal("Bioenergy", worksheet.security_d133.to_s.gsub(/[\n\r]+/,'')); end
  def test_security_e133; assert_in_delta(0.4457317385704908, worksheet.security_e133, 0.002); end
  def test_security_f133; assert_in_delta(0.5682286255555564, worksheet.security_f133, 0.002); end
  def test_security_g133; assert_in_delta(0.2719422380406597, worksheet.security_g133, 0.002); end
  def test_security_h133; assert_in_delta(0.02353667197584856, worksheet.security_h133, 0.002); end
  def test_security_i133; assert_in_delta(0.40776883086457294, worksheet.security_i133, 0.002); end
  def test_security_j133; assert_in_delta(0.7230188855908364, worksheet.security_j133, 0.002); end
  def test_security_k133; assert_in_delta(0.8536189245214232, worksheet.security_k133, 0.002); end
  def test_security_l133; assert_in_delta(0.7391226520999392, worksheet.security_l133, 0.002); end
  def test_security_m133; assert_in_delta(0.7740606522634803, worksheet.security_m133, 0.002); end
  def test_security_d134; assert_equal("Coal", worksheet.security_d134.to_s.gsub(/[\n\r]+/,'')); end
  def test_security_e134; assert_in_delta(1.0, worksheet.security_e134, 0.002); end
  def test_security_f134; assert_in_delta(1.0, worksheet.security_f134, 0.002); end
  def test_security_g134; assert_in_delta(1.0, worksheet.security_g134, 0.002); end
  def test_security_h134; assert_in_delta(1.0, worksheet.security_h134, 0.002); end
  def test_security_i134; assert_in_delta(1.0, worksheet.security_i134, 0.002); end
  def test_security_j134; assert_in_delta(1.0, worksheet.security_j134, 0.002); end
  def test_security_k134; assert_in_delta(1.0, worksheet.security_k134, 0.002); end
  def test_security_l134; assert_in_delta(1.0, worksheet.security_l134, 0.002); end
  def test_security_m134; assert_in_delta(1.0, worksheet.security_m134, 0.002); end
  def test_security_d135; assert_equal("Oil", worksheet.security_d135.to_s.gsub(/[\n\r]+/,'')); end
  def test_security_e135; assert_in_delta(1.0, worksheet.security_e135, 0.002); end
  def test_security_f135; assert_in_delta(1.0, worksheet.security_f135, 0.002); end
  def test_security_g135; assert_in_delta(1.0, worksheet.security_g135, 0.002); end
  def test_security_h135; assert_in_delta(1.0, worksheet.security_h135, 0.002); end
  def test_security_i135; assert_in_delta(1.0, worksheet.security_i135, 0.002); end
  def test_security_j135; assert_in_delta(1.0, worksheet.security_j135, 0.002); end
  def test_security_k135; assert_in_delta(1.0, worksheet.security_k135, 0.002); end
  def test_security_l135; assert_in_delta(1.0, worksheet.security_l135, 0.002); end
  def test_security_m135; assert_in_delta(0.0, (worksheet.security_m135||0), 0.002); end
  def test_security_d136; assert_equal("Gas", worksheet.security_d136.to_s.gsub(/[\n\r]+/,'')); end
  def test_security_e136; assert_in_delta(1.0, worksheet.security_e136, 0.002); end
  def test_security_f136; assert_in_delta(1.0, worksheet.security_f136, 0.002); end
  def test_security_g136; assert_in_delta(1.0, worksheet.security_g136, 0.002); end
  def test_security_h136; assert_in_delta(1.0, worksheet.security_h136, 0.002); end
  def test_security_i136; assert_in_delta(1.0, worksheet.security_i136, 0.002); end
  def test_security_j136; assert_in_delta(1.0, worksheet.security_j136, 0.002); end
  def test_security_k136; assert_in_delta(1.0, worksheet.security_k136, 0.002); end
  def test_security_l136; assert_in_delta(1.0, worksheet.security_l136, 0.002); end
  def test_security_m136; assert_in_delta(1.0, worksheet.security_m136, 0.002); end
  def test_security_d137; assert_equal("Total", worksheet.security_d137.to_s.gsub(/[\n\r]+/,'')); end
  def test_security_e137; assert_in_delta(0.9257705646334738, worksheet.security_e137, 0.002); end
  def test_security_f137; assert_in_delta(0.9342391818817698, worksheet.security_f137, 0.002); end
  def test_security_g137; assert_in_delta(0.9105342704489563, worksheet.security_g137, 0.002); end
  def test_security_h137; assert_in_delta(0.856681337570507, worksheet.security_h137, 0.002); end
  def test_security_i137; assert_in_delta(0.8714945582870621, worksheet.security_i137, 0.002); end
  def test_security_j137; assert_in_delta(0.9007371858032072, worksheet.security_j137, 0.002); end
  def test_security_k137; assert_in_delta(0.9140301364004463, worksheet.security_k137, 0.002); end
  def test_security_l137; assert_in_delta(0.8674303703498284, worksheet.security_l137, 0.002); end
  def test_security_m137; assert_in_delta(0.87132446864404, worksheet.security_m137, 0.002); end
  def test_security_d108; assert_equal("Vector", worksheet.security_d108.to_s.gsub(/[\n\r]+/,'')); end
  def test_security_e108; assert_in_epsilon(2012.0, worksheet.security_e108, 0.002); end
  def test_security_f108; assert_in_epsilon(2015.0, worksheet.security_f108, 0.002); end
  def test_security_g108; assert_in_epsilon(2020.0, worksheet.security_g108, 0.002); end
  def test_security_h108; assert_in_epsilon(2025.0, worksheet.security_h108, 0.002); end
  def test_security_i108; assert_in_epsilon(2030.0, worksheet.security_i108, 0.002); end
  def test_security_j108; assert_in_epsilon(2035.0, worksheet.security_j108, 0.002); end
  def test_security_k108; assert_in_epsilon(2040.0, worksheet.security_k108, 0.002); end
  def test_security_l108; assert_in_epsilon(2045.0, worksheet.security_l108, 0.002); end
  def test_security_m108; assert_in_epsilon(2050.0, worksheet.security_m108, 0.002); end
  def test_security_d109; assert_equal("Uranium", worksheet.security_d109.to_s.gsub(/[\n\r]+/,'')); end
  def test_security_e109; assert_in_delta(0.0, (worksheet.security_e109||0), 0.002); end
  def test_security_f109; assert_in_delta(0.0, (worksheet.security_f109||0), 0.002); end
  def test_security_g109; assert_in_delta(0.0, (worksheet.security_g109||0), 0.002); end
  def test_security_h109; assert_in_delta(0.0, (worksheet.security_h109||0), 0.002); end
  def test_security_i109; assert_in_delta(0.0, (worksheet.security_i109||0), 0.002); end
  def test_security_j109; assert_in_delta(0.0, (worksheet.security_j109||0), 0.002); end
  def test_security_k109; assert_in_delta(0.0, (worksheet.security_k109||0), 0.002); end
  def test_security_l109; assert_in_delta(0.0, (worksheet.security_l109||0), 0.002); end
  def test_security_m109; assert_in_delta(0.0, (worksheet.security_m109||0), 0.002); end
  def test_security_d110; assert_equal("Electricity", worksheet.security_d110.to_s.gsub(/[\n\r]+/,'')); end
  def test_security_e110; assert_in_epsilon(2987.0724146840785, worksheet.security_e110, 0.002); end
  def test_security_f110; assert_in_epsilon(3073.005172745109, worksheet.security_f110, 0.002); end
  def test_security_g110; assert_in_epsilon(3260.7806669424544, worksheet.security_g110, 0.002); end
  def test_security_h110; assert_in_epsilon(3476.1925267936226, worksheet.security_h110, 0.002); end
  def test_security_i110; assert_in_epsilon(3727.3752893544643, worksheet.security_i110, 0.002); end
  def test_security_j110; assert_in_epsilon(3958.793001646037, worksheet.security_j110, 0.002); end
  def test_security_k110; assert_in_epsilon(4146.514535709558, worksheet.security_k110, 0.002); end
  def test_security_l110; assert_in_epsilon(4300.029380480905, worksheet.security_l110, 0.002); end
  def test_security_m110; assert_in_epsilon(4430.835078737898, worksheet.security_m110, 0.002); end
  def test_security_d111; assert_equal("Bioenergy", worksheet.security_d111.to_s.gsub(/[\n\r]+/,'')); end
  def test_security_e111; assert_in_epsilon(372.4910967194163, worksheet.security_e111, 0.002); end
  def test_security_f111; assert_in_epsilon(479.2063334600729, worksheet.security_f111, 0.002); end
  def test_security_g111; assert_in_epsilon(245.20081779134034, worksheet.security_g111, 0.002); end
  def test_security_h111; assert_in_epsilon(31.215244281024468, worksheet.security_h111, 0.002); end
  def test_security_i111; assert_in_epsilon(700.962724112909, worksheet.security_i111, 0.002); end
  def test_security_j111; assert_in_epsilon(1537.8146525231978, worksheet.security_j111, 0.002); end
  def test_security_k111; assert_in_epsilon(2176.1919267670773, worksheet.security_k111, 0.002); end
  def test_security_l111; assert_in_epsilon(2218.38367483715, worksheet.security_l111, 0.002); end
  def test_security_m111; assert_in_epsilon(2330.976065276629, worksheet.security_m111, 0.002); end
  def test_security_d112; assert_equal("Coal", worksheet.security_d112.to_s.gsub(/[\n\r]+/,'')); end
  def test_security_e112; assert_in_epsilon(54.67677763831769, worksheet.security_e112, 0.002); end
  def test_security_f112; assert_in_epsilon(56.27203144190709, worksheet.security_f112, 0.002); end
  def test_security_g112; assert_in_epsilon(59.29131976164692, worksheet.security_g112, 0.002); end
  def test_security_h112; assert_in_epsilon(61.2921832608632, worksheet.security_h112, 0.002); end
  def test_security_i112; assert_in_epsilon(62.90732634459812, worksheet.security_i112, 0.002); end
  def test_security_j112; assert_in_epsilon(64.20973092418254, worksheet.security_j112, 0.002); end
  def test_security_k112; assert_in_epsilon(65.19610484818995, worksheet.security_k112, 0.002); end
  def test_security_l112; assert_in_epsilon(65.86278285990707, worksheet.security_l112, 0.002); end
  def test_security_m112; assert_in_epsilon(66.20976495933392, worksheet.security_m112, 0.002); end
  def test_security_d113; assert_equal("Oil", worksheet.security_d113.to_s.gsub(/[\n\r]+/,'')); end
  def test_security_e113; assert_in_epsilon(5583.968924946566, worksheet.security_e113, 0.002); end
  def test_security_f113; assert_in_epsilon(5616.186866296027, worksheet.security_f113, 0.002); end
  def test_security_g113; assert_in_epsilon(5886.174177279776, worksheet.security_g113, 0.002); end
  def test_security_h113; assert_in_epsilon(5329.24656902558, worksheet.security_h113, 0.002); end
  def test_security_i113; assert_in_epsilon(4056.4442051237993, worksheet.security_i113, 0.002); end
  def test_security_j113; assert_in_epsilon(2661.7047835272333, worksheet.security_j113, 0.002); end
  def test_security_k113; assert_in_epsilon(1387.481236141547, worksheet.security_k113, 0.002); end
  def test_security_l113; assert_in_epsilon(517.0489044248134, worksheet.security_l113, 0.002); end
  def test_security_m113; assert_in_delta(0.0, (worksheet.security_m113||0), 0.002); end
  def test_security_d114; assert_equal("Gas", worksheet.security_d114.to_s.gsub(/[\n\r]+/,'')); end
  def test_security_e114; assert_in_epsilon(1430.614664342593, worksheet.security_e114, 0.002); end
  def test_security_f114; assert_in_epsilon(1456.267079044218, worksheet.security_f114, 0.002); end
  def test_security_g114; assert_in_epsilon(1457.9861849494096, worksheet.security_g114, 0.002); end
  def test_security_h114; assert_in_epsilon(1445.395798188943, worksheet.security_h114, 0.002); end
  def test_security_i114; assert_in_epsilon(1427.0318850842575, worksheet.security_i114, 0.002); end
  def test_security_j114; assert_in_epsilon(1370.4259102428077, worksheet.security_j114, 0.002); end
  def test_security_k114; assert_in_epsilon(1309.4395363350611, worksheet.security_k114, 0.002); end
  def test_security_l114; assert_in_epsilon(1244.0042246515577, worksheet.security_l114, 0.002); end
  def test_security_m114; assert_in_epsilon(1174.1356174704265, worksheet.security_m114, 0.002); end
  def test_security_d115; assert_equal("Total", worksheet.security_d115.to_s.gsub(/[\n\r]+/,'')); end
  def test_security_e115; assert_in_epsilon(10428.823878330972, worksheet.security_e115, 0.002); end
  def test_security_f115; assert_in_epsilon(10680.937482987334, worksheet.security_f115, 0.002); end
  def test_security_g115; assert_in_epsilon(10909.433166724628, worksheet.security_g115, 0.002); end
  def test_security_h115; assert_in_epsilon(10343.342321550033, worksheet.security_h115, 0.002); end
  def test_security_i115; assert_in_epsilon(9974.721430020028, worksheet.security_i115, 0.002); end
  def test_security_j115; assert_in_epsilon(9592.948078863457, worksheet.security_j115, 0.002); end
  def test_security_k115; assert_in_epsilon(9084.823339801433, worksheet.security_k115, 0.002); end
  def test_security_l115; assert_in_epsilon(8345.328967254332, worksheet.security_l115, 0.002); end
  def test_security_m115; assert_in_epsilon(8002.156526444287, worksheet.security_m115, 0.002); end
  def test_security_d78; assert_equal("Shannon-Weiner Index", worksheet.security_d78.to_s.gsub(/[\n\r]+/,'')); end
  def test_security_e78; assert_in_epsilon(1.3472103244004756, worksheet.security_e78, 0.002); end
  def test_security_f78; assert_in_epsilon(1.3519377181871972, worksheet.security_f78, 0.002); end
  def test_security_g78; assert_in_epsilon(1.3465328269767216, worksheet.security_g78, 0.002); end
  def test_security_h78; assert_in_epsilon(1.381772976439375, worksheet.security_h78, 0.002); end
  def test_security_i78; assert_in_epsilon(1.543760109411439, worksheet.security_i78, 0.002); end
  def test_security_j78; assert_in_epsilon(1.5966339695404645, worksheet.security_j78, 0.002); end
  def test_security_k78; assert_in_epsilon(1.555003019019423, worksheet.security_k78, 0.002); end
  def test_security_l78; assert_in_epsilon(1.525231581059165, worksheet.security_l78, 0.002); end
  def test_security_m78; assert_in_epsilon(1.3669169110216712, worksheet.security_m78, 0.002); end
  def test_costs_per_capita_e202; assert_equal("name", worksheet.costs_per_capita_e202.to_s.gsub(/[\n\r]+/,'')); end
  def test_costs_per_capita_f202; assert_equal("low", worksheet.costs_per_capita_f202.to_s.gsub(/[\n\r]+/,'')); end
  def test_costs_per_capita_g202; assert_equal("point", worksheet.costs_per_capita_g202.to_s.gsub(/[\n\r]+/,'')); end
  def test_costs_per_capita_h202; assert_equal("high", worksheet.costs_per_capita_h202.to_s.gsub(/[\n\r]+/,'')); end
  def test_costs_per_capita_i202; assert_equal("range", worksheet.costs_per_capita_i202.to_s.gsub(/[\n\r]+/,'')); end
  def test_costs_per_capita_j202; assert_equal("finance_low", worksheet.costs_per_capita_j202.to_s.gsub(/[\n\r]+/,'')); end
  def test_costs_per_capita_k202; assert_equal("finance_point", worksheet.costs_per_capita_k202.to_s.gsub(/[\n\r]+/,'')); end
  def test_costs_per_capita_l202; assert_equal("finance_high", worksheet.costs_per_capita_l202.to_s.gsub(/[\n\r]+/,'')); end
  def test_costs_per_capita_m202; assert_equal("finance_range", worksheet.costs_per_capita_m202.to_s.gsub(/[\n\r]+/,'')); end
  def test_costs_per_capita_e203; assert_equal("Conventional thermal plant", worksheet.costs_per_capita_e203.to_s.gsub(/[\n\r]+/,'')); end
  def test_costs_per_capita_f203; assert_in_delta(0.0, (worksheet.costs_per_capita_f203||0), 0.002); end
  def test_costs_per_capita_g203; assert_in_delta(0.0, (worksheet.costs_per_capita_g203||0), 0.002); end
  def test_costs_per_capita_h203; assert_in_delta(0.0, (worksheet.costs_per_capita_h203||0), 0.002); end
  def test_costs_per_capita_i203; assert_in_delta(0.0, (worksheet.costs_per_capita_i203||0), 0.002); end
  def test_costs_per_capita_j203; assert_in_delta(0.0, (worksheet.costs_per_capita_j203||0), 0.002); end
  def test_costs_per_capita_k203; assert_in_delta(0.0, (worksheet.costs_per_capita_k203||0), 0.002); end
  def test_costs_per_capita_l203; assert_in_delta(0.0, (worksheet.costs_per_capita_l203||0), 0.002); end
  def test_costs_per_capita_m203; assert_in_delta(0.0, (worksheet.costs_per_capita_m203||0), 0.002); end
  def test_costs_per_capita_e204; assert_equal("Combustion + CCS", worksheet.costs_per_capita_e204.to_s.gsub(/[\n\r]+/,'')); end
  def test_costs_per_capita_f204; assert_in_delta(0.0, (worksheet.costs_per_capita_f204||0), 0.002); end
  def test_costs_per_capita_g204; assert_in_delta(0.0, (worksheet.costs_per_capita_g204||0), 0.002); end
  def test_costs_per_capita_h204; assert_in_delta(0.0, (worksheet.costs_per_capita_h204||0), 0.002); end
  def test_costs_per_capita_i204; assert_in_delta(0.0, (worksheet.costs_per_capita_i204||0), 0.002); end
  def test_costs_per_capita_j204; assert_in_delta(0.0, (worksheet.costs_per_capita_j204||0), 0.002); end
  def test_costs_per_capita_k204; assert_in_delta(0.0, (worksheet.costs_per_capita_k204||0), 0.002); end
  def test_costs_per_capita_l204; assert_in_delta(0.0, (worksheet.costs_per_capita_l204||0), 0.002); end
  def test_costs_per_capita_m204; assert_in_delta(0.0, (worksheet.costs_per_capita_m204||0), 0.002); end
  def test_costs_per_capita_e205; assert_equal("Nuclear power", worksheet.costs_per_capita_e205.to_s.gsub(/[\n\r]+/,'')); end
  def test_costs_per_capita_f205; assert_in_delta(0.0, (worksheet.costs_per_capita_f205||0), 0.002); end
  def test_costs_per_capita_g205; assert_in_delta(0.0, (worksheet.costs_per_capita_g205||0), 0.002); end
  def test_costs_per_capita_h205; assert_in_delta(0.0, (worksheet.costs_per_capita_h205||0), 0.002); end
  def test_costs_per_capita_i205; assert_in_delta(0.0, (worksheet.costs_per_capita_i205||0), 0.002); end
  def test_costs_per_capita_j205; assert_in_delta(0.0, (worksheet.costs_per_capita_j205||0), 0.002); end
  def test_costs_per_capita_k205; assert_in_delta(0.0, (worksheet.costs_per_capita_k205||0), 0.002); end
  def test_costs_per_capita_l205; assert_in_delta(0.0, (worksheet.costs_per_capita_l205||0), 0.002); end
  def test_costs_per_capita_m205; assert_in_delta(0.0, (worksheet.costs_per_capita_m205||0), 0.002); end
  def test_costs_per_capita_e206; assert_equal("Onshore wind", worksheet.costs_per_capita_e206.to_s.gsub(/[\n\r]+/,'')); end
  def test_costs_per_capita_f206; assert_in_delta(0.0, (worksheet.costs_per_capita_f206||0), 0.002); end
  def test_costs_per_capita_g206; assert_in_delta(0.0, (worksheet.costs_per_capita_g206||0), 0.002); end
  def test_costs_per_capita_h206; assert_in_delta(0.0, (worksheet.costs_per_capita_h206||0), 0.002); end
  def test_costs_per_capita_i206; assert_in_delta(0.0, (worksheet.costs_per_capita_i206||0), 0.002); end
  def test_costs_per_capita_j206; assert_in_delta(0.0, (worksheet.costs_per_capita_j206||0), 0.002); end
  def test_costs_per_capita_k206; assert_in_delta(0.0, (worksheet.costs_per_capita_k206||0), 0.002); end
  def test_costs_per_capita_l206; assert_in_delta(0.0, (worksheet.costs_per_capita_l206||0), 0.002); end
  def test_costs_per_capita_m206; assert_in_delta(0.0, (worksheet.costs_per_capita_m206||0), 0.002); end
  def test_costs_per_capita_e207; assert_equal("Offshore wind", worksheet.costs_per_capita_e207.to_s.gsub(/[\n\r]+/,'')); end
  def test_costs_per_capita_f207; assert_in_delta(0.0, (worksheet.costs_per_capita_f207||0), 0.002); end
  def test_costs_per_capita_g207; assert_in_delta(0.0, (worksheet.costs_per_capita_g207||0), 0.002); end
  def test_costs_per_capita_h207; assert_in_delta(0.0, (worksheet.costs_per_capita_h207||0), 0.002); end
  def test_costs_per_capita_i207; assert_in_delta(0.0, (worksheet.costs_per_capita_i207||0), 0.002); end
  def test_costs_per_capita_j207; assert_in_delta(0.0, (worksheet.costs_per_capita_j207||0), 0.002); end
  def test_costs_per_capita_k207; assert_in_delta(0.0, (worksheet.costs_per_capita_k207||0), 0.002); end
  def test_costs_per_capita_l207; assert_in_delta(0.0, (worksheet.costs_per_capita_l207||0), 0.002); end
  def test_costs_per_capita_m207; assert_in_delta(0.0, (worksheet.costs_per_capita_m207||0), 0.002); end
  def test_costs_per_capita_e208; assert_equal("Hydroelectric", worksheet.costs_per_capita_e208.to_s.gsub(/[\n\r]+/,'')); end
  def test_costs_per_capita_f208; assert_in_delta(0.0, (worksheet.costs_per_capita_f208||0), 0.002); end
  def test_costs_per_capita_g208; assert_in_delta(0.0, (worksheet.costs_per_capita_g208||0), 0.002); end
  def test_costs_per_capita_h208; assert_in_delta(0.0, (worksheet.costs_per_capita_h208||0), 0.002); end
  def test_costs_per_capita_i208; assert_in_delta(0.0, (worksheet.costs_per_capita_i208||0), 0.002); end
  def test_costs_per_capita_j208; assert_in_delta(0.0, (worksheet.costs_per_capita_j208||0), 0.002); end
  def test_costs_per_capita_k208; assert_in_delta(0.0, (worksheet.costs_per_capita_k208||0), 0.002); end
  def test_costs_per_capita_l208; assert_in_delta(0.0, (worksheet.costs_per_capita_l208||0), 0.002); end
  def test_costs_per_capita_m208; assert_in_delta(0.0, (worksheet.costs_per_capita_m208||0), 0.002); end
  def test_costs_per_capita_e209; assert_equal("Wave and Tidal", worksheet.costs_per_capita_e209.to_s.gsub(/[\n\r]+/,'')); end
  def test_costs_per_capita_f209; assert_in_delta(0.0, (worksheet.costs_per_capita_f209||0), 0.002); end
  def test_costs_per_capita_g209; assert_in_delta(0.0, (worksheet.costs_per_capita_g209||0), 0.002); end
  def test_costs_per_capita_h209; assert_in_delta(0.0, (worksheet.costs_per_capita_h209||0), 0.002); end
  def test_costs_per_capita_i209; assert_in_delta(0.0, (worksheet.costs_per_capita_i209||0), 0.002); end
  def test_costs_per_capita_j209; assert_in_delta(0.0, (worksheet.costs_per_capita_j209||0), 0.002); end
  def test_costs_per_capita_k209; assert_in_delta(0.0, (worksheet.costs_per_capita_k209||0), 0.002); end
  def test_costs_per_capita_l209; assert_in_delta(0.0, (worksheet.costs_per_capita_l209||0), 0.002); end
  def test_costs_per_capita_m209; assert_in_delta(0.0, (worksheet.costs_per_capita_m209||0), 0.002); end
  def test_costs_per_capita_e210; assert_equal("Geothermal", worksheet.costs_per_capita_e210.to_s.gsub(/[\n\r]+/,'')); end
  def test_costs_per_capita_f210; assert_in_delta(0.0, (worksheet.costs_per_capita_f210||0), 0.002); end
  def test_costs_per_capita_g210; assert_in_delta(0.0, (worksheet.costs_per_capita_g210||0), 0.002); end
  def test_costs_per_capita_h210; assert_in_delta(0.0, (worksheet.costs_per_capita_h210||0), 0.002); end
  def test_costs_per_capita_i210; assert_in_delta(0.0, (worksheet.costs_per_capita_i210||0), 0.002); end
  def test_costs_per_capita_j210; assert_in_delta(0.0, (worksheet.costs_per_capita_j210||0), 0.002); end
  def test_costs_per_capita_k210; assert_in_delta(0.0, (worksheet.costs_per_capita_k210||0), 0.002); end
  def test_costs_per_capita_l210; assert_in_delta(0.0, (worksheet.costs_per_capita_l210||0), 0.002); end
  def test_costs_per_capita_m210; assert_in_delta(0.0, (worksheet.costs_per_capita_m210||0), 0.002); end
  def test_costs_per_capita_e211; assert_equal("Distributed solar PV", worksheet.costs_per_capita_e211.to_s.gsub(/[\n\r]+/,'')); end
  def test_costs_per_capita_f211; assert_in_delta(0.0, (worksheet.costs_per_capita_f211||0), 0.002); end
  def test_costs_per_capita_g211; assert_in_delta(0.0, (worksheet.costs_per_capita_g211||0), 0.002); end
  def test_costs_per_capita_h211; assert_in_delta(0.0, (worksheet.costs_per_capita_h211||0), 0.002); end
  def test_costs_per_capita_i211; assert_in_delta(0.0, (worksheet.costs_per_capita_i211||0), 0.002); end
  def test_costs_per_capita_j211; assert_in_delta(0.0, (worksheet.costs_per_capita_j211||0), 0.002); end
  def test_costs_per_capita_k211; assert_in_delta(0.0, (worksheet.costs_per_capita_k211||0), 0.002); end
  def test_costs_per_capita_l211; assert_in_delta(0.0, (worksheet.costs_per_capita_l211||0), 0.002); end
  def test_costs_per_capita_m211; assert_in_delta(0.0, (worksheet.costs_per_capita_m211||0), 0.002); end
  def test_costs_per_capita_e212; assert_equal("Distributed solar thermal", worksheet.costs_per_capita_e212.to_s.gsub(/[\n\r]+/,'')); end
  def test_costs_per_capita_f212; assert_in_delta(0.0, (worksheet.costs_per_capita_f212||0), 0.002); end
  def test_costs_per_capita_g212; assert_in_delta(0.0, (worksheet.costs_per_capita_g212||0), 0.002); end
  def test_costs_per_capita_h212; assert_in_delta(0.0, (worksheet.costs_per_capita_h212||0), 0.002); end
  def test_costs_per_capita_i212; assert_in_delta(0.0, (worksheet.costs_per_capita_i212||0), 0.002); end
  def test_costs_per_capita_j212; assert_in_delta(0.0, (worksheet.costs_per_capita_j212||0), 0.002); end
  def test_costs_per_capita_k212; assert_in_delta(0.0, (worksheet.costs_per_capita_k212||0), 0.002); end
  def test_costs_per_capita_l212; assert_in_delta(0.0, (worksheet.costs_per_capita_l212||0), 0.002); end
  def test_costs_per_capita_m212; assert_in_delta(0.0, (worksheet.costs_per_capita_m212||0), 0.002); end
  def test_costs_per_capita_e213; assert_equal("Micro wind", worksheet.costs_per_capita_e213.to_s.gsub(/[\n\r]+/,'')); end
  def test_costs_per_capita_f213; assert_in_delta(0.0, (worksheet.costs_per_capita_f213||0), 0.002); end
  def test_costs_per_capita_g213; assert_in_delta(0.0, (worksheet.costs_per_capita_g213||0), 0.002); end
  def test_costs_per_capita_h213; assert_in_delta(0.0, (worksheet.costs_per_capita_h213||0), 0.002); end
  def test_costs_per_capita_i213; assert_in_delta(0.0, (worksheet.costs_per_capita_i213||0), 0.002); end
  def test_costs_per_capita_j213; assert_in_delta(0.0, (worksheet.costs_per_capita_j213||0), 0.002); end
  def test_costs_per_capita_k213; assert_in_delta(0.0, (worksheet.costs_per_capita_k213||0), 0.002); end
  def test_costs_per_capita_l213; assert_in_delta(0.0, (worksheet.costs_per_capita_l213||0), 0.002); end
  def test_costs_per_capita_m213; assert_in_delta(0.0, (worksheet.costs_per_capita_m213||0), 0.002); end
  def test_costs_per_capita_e214; assert_equal("Biomatter to fuel conversion", worksheet.costs_per_capita_e214.to_s.gsub(/[\n\r]+/,'')); end
  def test_costs_per_capita_f214; assert_in_delta(0.0, (worksheet.costs_per_capita_f214||0), 0.002); end
  def test_costs_per_capita_g214; assert_in_delta(0.0, (worksheet.costs_per_capita_g214||0), 0.002); end
  def test_costs_per_capita_h214; assert_in_delta(0.0, (worksheet.costs_per_capita_h214||0), 0.002); end
  def test_costs_per_capita_i214; assert_in_delta(0.0, (worksheet.costs_per_capita_i214||0), 0.002); end
  def test_costs_per_capita_j214; assert_in_delta(0.0, (worksheet.costs_per_capita_j214||0), 0.002); end
  def test_costs_per_capita_k214; assert_in_delta(0.0, (worksheet.costs_per_capita_k214||0), 0.002); end
  def test_costs_per_capita_l214; assert_in_delta(0.0, (worksheet.costs_per_capita_l214||0), 0.002); end
  def test_costs_per_capita_m214; assert_in_delta(0.0, (worksheet.costs_per_capita_m214||0), 0.002); end
  def test_costs_per_capita_e215; assert_equal("Bioenergy imports", worksheet.costs_per_capita_e215.to_s.gsub(/[\n\r]+/,'')); end
  def test_costs_per_capita_f215; assert_in_delta(0.0, (worksheet.costs_per_capita_f215||0), 0.002); end
  def test_costs_per_capita_g215; assert_in_delta(0.0, (worksheet.costs_per_capita_g215||0), 0.002); end
  def test_costs_per_capita_h215; assert_in_delta(0.0, (worksheet.costs_per_capita_h215||0), 0.002); end
  def test_costs_per_capita_i215; assert_in_delta(0.0, (worksheet.costs_per_capita_i215||0), 0.002); end
  def test_costs_per_capita_j215; assert_in_delta(0.0, (worksheet.costs_per_capita_j215||0), 0.002); end
  def test_costs_per_capita_k215; assert_in_delta(0.0, (worksheet.costs_per_capita_k215||0), 0.002); end
  def test_costs_per_capita_l215; assert_in_delta(0.0, (worksheet.costs_per_capita_l215||0), 0.002); end
  def test_costs_per_capita_m215; assert_in_delta(0.0, (worksheet.costs_per_capita_m215||0), 0.002); end
  def test_costs_per_capita_e216; assert_equal("Agriculture and land use", worksheet.costs_per_capita_e216.to_s.gsub(/[\n\r]+/,'')); end
  def test_costs_per_capita_f216; assert_in_delta(0.0, (worksheet.costs_per_capita_f216||0), 0.002); end
  def test_costs_per_capita_g216; assert_in_delta(0.0, (worksheet.costs_per_capita_g216||0), 0.002); end
  def test_costs_per_capita_h216; assert_in_delta(0.0, (worksheet.costs_per_capita_h216||0), 0.002); end
  def test_costs_per_capita_i216; assert_in_delta(0.0, (worksheet.costs_per_capita_i216||0), 0.002); end
  def test_costs_per_capita_j216; assert_in_delta(0.0, (worksheet.costs_per_capita_j216||0), 0.002); end
  def test_costs_per_capita_k216; assert_in_delta(0.0, (worksheet.costs_per_capita_k216||0), 0.002); end
  def test_costs_per_capita_l216; assert_in_delta(0.0, (worksheet.costs_per_capita_l216||0), 0.002); end
  def test_costs_per_capita_m216; assert_in_delta(0.0, (worksheet.costs_per_capita_m216||0), 0.002); end
  def test_costs_per_capita_e217; assert_equal("Energy from waste", worksheet.costs_per_capita_e217.to_s.gsub(/[\n\r]+/,'')); end
  def test_costs_per_capita_f217; assert_in_delta(0.0, (worksheet.costs_per_capita_f217||0), 0.002); end
  def test_costs_per_capita_g217; assert_in_delta(0.0, (worksheet.costs_per_capita_g217||0), 0.002); end
  def test_costs_per_capita_h217; assert_in_delta(0.0, (worksheet.costs_per_capita_h217||0), 0.002); end
  def test_costs_per_capita_i217; assert_in_delta(0.0, (worksheet.costs_per_capita_i217||0), 0.002); end
  def test_costs_per_capita_j217; assert_in_delta(0.0, (worksheet.costs_per_capita_j217||0), 0.002); end
  def test_costs_per_capita_k217; assert_in_delta(0.0, (worksheet.costs_per_capita_k217||0), 0.002); end
  def test_costs_per_capita_l217; assert_in_delta(0.0, (worksheet.costs_per_capita_l217||0), 0.002); end
  def test_costs_per_capita_m217; assert_in_delta(0.0, (worksheet.costs_per_capita_m217||0), 0.002); end
  def test_costs_per_capita_e218; assert_equal("Waste arising", worksheet.costs_per_capita_e218.to_s.gsub(/[\n\r]+/,'')); end
  def test_costs_per_capita_f218; assert_in_delta(0.0, (worksheet.costs_per_capita_f218||0), 0.002); end
  def test_costs_per_capita_g218; assert_in_delta(0.0, (worksheet.costs_per_capita_g218||0), 0.002); end
  def test_costs_per_capita_h218; assert_in_delta(0.0, (worksheet.costs_per_capita_h218||0), 0.002); end
  def test_costs_per_capita_i218; assert_in_delta(0.0, (worksheet.costs_per_capita_i218||0), 0.002); end
  def test_costs_per_capita_j218; assert_in_delta(0.0, (worksheet.costs_per_capita_j218||0), 0.002); end
  def test_costs_per_capita_k218; assert_in_delta(0.0, (worksheet.costs_per_capita_k218||0), 0.002); end
  def test_costs_per_capita_l218; assert_in_delta(0.0, (worksheet.costs_per_capita_l218||0), 0.002); end
  def test_costs_per_capita_m218; assert_in_delta(0.0, (worksheet.costs_per_capita_m218||0), 0.002); end
  def test_costs_per_capita_e219; assert_equal("Marine algae", worksheet.costs_per_capita_e219.to_s.gsub(/[\n\r]+/,'')); end
  def test_costs_per_capita_f219; assert_in_delta(0.0, (worksheet.costs_per_capita_f219||0), 0.002); end
  def test_costs_per_capita_g219; assert_in_delta(0.0, (worksheet.costs_per_capita_g219||0), 0.002); end
  def test_costs_per_capita_h219; assert_in_delta(0.0, (worksheet.costs_per_capita_h219||0), 0.002); end
  def test_costs_per_capita_i219; assert_in_delta(0.0, (worksheet.costs_per_capita_i219||0), 0.002); end
  def test_costs_per_capita_j219; assert_in_delta(0.0, (worksheet.costs_per_capita_j219||0), 0.002); end
  def test_costs_per_capita_k219; assert_in_delta(0.0, (worksheet.costs_per_capita_k219||0), 0.002); end
  def test_costs_per_capita_l219; assert_in_delta(0.0, (worksheet.costs_per_capita_l219||0), 0.002); end
  def test_costs_per_capita_m219; assert_in_delta(0.0, (worksheet.costs_per_capita_m219||0), 0.002); end
  def test_costs_per_capita_e220; assert_equal("Electricity imports", worksheet.costs_per_capita_e220.to_s.gsub(/[\n\r]+/,'')); end
  def test_costs_per_capita_f220; assert_in_delta(0.0, (worksheet.costs_per_capita_f220||0), 0.002); end
  def test_costs_per_capita_g220; assert_in_delta(0.0, (worksheet.costs_per_capita_g220||0), 0.002); end
  def test_costs_per_capita_h220; assert_in_delta(0.0, (worksheet.costs_per_capita_h220||0), 0.002); end
  def test_costs_per_capita_i220; assert_in_delta(0.0, (worksheet.costs_per_capita_i220||0), 0.002); end
  def test_costs_per_capita_j220; assert_in_delta(0.0, (worksheet.costs_per_capita_j220||0), 0.002); end
  def test_costs_per_capita_k220; assert_in_delta(0.0, (worksheet.costs_per_capita_k220||0), 0.002); end
  def test_costs_per_capita_l220; assert_in_delta(0.0, (worksheet.costs_per_capita_l220||0), 0.002); end
  def test_costs_per_capita_m220; assert_in_delta(0.0, (worksheet.costs_per_capita_m220||0), 0.002); end
  def test_costs_per_capita_e221; assert_equal("Electricity Exports", worksheet.costs_per_capita_e221.to_s.gsub(/[\n\r]+/,'')); end
  def test_costs_per_capita_f221; assert_in_delta(0.0, (worksheet.costs_per_capita_f221||0), 0.002); end
  def test_costs_per_capita_g221; assert_in_delta(0.0, (worksheet.costs_per_capita_g221||0), 0.002); end
  def test_costs_per_capita_h221; assert_in_delta(0.0, (worksheet.costs_per_capita_h221||0), 0.002); end
  def test_costs_per_capita_i221; assert_in_delta(0.0, (worksheet.costs_per_capita_i221||0), 0.002); end
  def test_costs_per_capita_j221; assert_in_delta(0.0, (worksheet.costs_per_capita_j221||0), 0.002); end
  def test_costs_per_capita_k221; assert_in_delta(0.0, (worksheet.costs_per_capita_k221||0), 0.002); end
  def test_costs_per_capita_l221; assert_in_delta(0.0, (worksheet.costs_per_capita_l221||0), 0.002); end
  def test_costs_per_capita_m221; assert_in_delta(0.0, (worksheet.costs_per_capita_m221||0), 0.002); end
  def test_costs_per_capita_e222; assert_equal("Electricity grid distribution", worksheet.costs_per_capita_e222.to_s.gsub(/[\n\r]+/,'')); end
  def test_costs_per_capita_f222; assert_in_delta(0.0, (worksheet.costs_per_capita_f222||0), 0.002); end
  def test_costs_per_capita_g222; assert_in_delta(0.0, (worksheet.costs_per_capita_g222||0), 0.002); end
  def test_costs_per_capita_h222; assert_in_delta(0.0, (worksheet.costs_per_capita_h222||0), 0.002); end
  def test_costs_per_capita_i222; assert_in_delta(0.0, (worksheet.costs_per_capita_i222||0), 0.002); end
  def test_costs_per_capita_j222; assert_in_delta(0.0, (worksheet.costs_per_capita_j222||0), 0.002); end
  def test_costs_per_capita_k222; assert_in_delta(0.0, (worksheet.costs_per_capita_k222||0), 0.002); end
  def test_costs_per_capita_l222; assert_in_delta(0.0, (worksheet.costs_per_capita_l222||0), 0.002); end
  def test_costs_per_capita_m222; assert_in_delta(0.0, (worksheet.costs_per_capita_m222||0), 0.002); end
  def test_costs_per_capita_e223; assert_equal("Storage, demand shifting, backup", worksheet.costs_per_capita_e223.to_s.gsub(/[\n\r]+/,'')); end
  def test_costs_per_capita_f223; assert_in_delta(0.0, (worksheet.costs_per_capita_f223||0), 0.002); end
  def test_costs_per_capita_g223; assert_in_delta(0.0, (worksheet.costs_per_capita_g223||0), 0.002); end
  def test_costs_per_capita_h223; assert_in_delta(0.0, (worksheet.costs_per_capita_h223||0), 0.002); end
  def test_costs_per_capita_i223; assert_in_delta(0.0, (worksheet.costs_per_capita_i223||0), 0.002); end
  def test_costs_per_capita_j223; assert_in_delta(0.0, (worksheet.costs_per_capita_j223||0), 0.002); end
  def test_costs_per_capita_k223; assert_in_delta(0.0, (worksheet.costs_per_capita_k223||0), 0.002); end
  def test_costs_per_capita_l223; assert_in_delta(0.0, (worksheet.costs_per_capita_l223||0), 0.002); end
  def test_costs_per_capita_m223; assert_in_delta(0.0, (worksheet.costs_per_capita_m223||0), 0.002); end
  def test_costs_per_capita_e224; assert_equal("H2 Production", worksheet.costs_per_capita_e224.to_s.gsub(/[\n\r]+/,'')); end
  def test_costs_per_capita_f224; assert_in_delta(0.0, (worksheet.costs_per_capita_f224||0), 0.002); end
  def test_costs_per_capita_g224; assert_in_delta(0.0, (worksheet.costs_per_capita_g224||0), 0.002); end
  def test_costs_per_capita_h224; assert_in_delta(0.0, (worksheet.costs_per_capita_h224||0), 0.002); end
  def test_costs_per_capita_i224; assert_in_delta(0.0, (worksheet.costs_per_capita_i224||0), 0.002); end
  def test_costs_per_capita_j224; assert_in_delta(0.0, (worksheet.costs_per_capita_j224||0), 0.002); end
  def test_costs_per_capita_k224; assert_in_delta(0.0, (worksheet.costs_per_capita_k224||0), 0.002); end
  def test_costs_per_capita_l224; assert_in_delta(0.0, (worksheet.costs_per_capita_l224||0), 0.002); end
  def test_costs_per_capita_m224; assert_in_delta(0.0, (worksheet.costs_per_capita_m224||0), 0.002); end
  def test_costs_per_capita_e225; assert_equal("Domestic heating", worksheet.costs_per_capita_e225.to_s.gsub(/[\n\r]+/,'')); end
  def test_costs_per_capita_f225; assert_in_delta(0.0, (worksheet.costs_per_capita_f225||0), 0.002); end
  def test_costs_per_capita_g225; assert_in_delta(0.0, (worksheet.costs_per_capita_g225||0), 0.002); end
  def test_costs_per_capita_h225; assert_in_delta(0.0, (worksheet.costs_per_capita_h225||0), 0.002); end
  def test_costs_per_capita_i225; assert_in_delta(0.0, (worksheet.costs_per_capita_i225||0), 0.002); end
  def test_costs_per_capita_j225; assert_in_delta(0.0, (worksheet.costs_per_capita_j225||0), 0.002); end
  def test_costs_per_capita_k225; assert_in_delta(0.0, (worksheet.costs_per_capita_k225||0), 0.002); end
  def test_costs_per_capita_l225; assert_in_delta(0.0, (worksheet.costs_per_capita_l225||0), 0.002); end
  def test_costs_per_capita_m225; assert_in_delta(0.0, (worksheet.costs_per_capita_m225||0), 0.002); end
  def test_costs_per_capita_e226; assert_equal("Domestic insulation", worksheet.costs_per_capita_e226.to_s.gsub(/[\n\r]+/,'')); end
  def test_costs_per_capita_f226; assert_in_delta(0.0, (worksheet.costs_per_capita_f226||0), 0.002); end
  def test_costs_per_capita_g226; assert_in_delta(0.0, (worksheet.costs_per_capita_g226||0), 0.002); end
  def test_costs_per_capita_h226; assert_in_delta(0.0, (worksheet.costs_per_capita_h226||0), 0.002); end
  def test_costs_per_capita_i226; assert_in_delta(0.0, (worksheet.costs_per_capita_i226||0), 0.002); end
  def test_costs_per_capita_j226; assert_in_delta(0.0, (worksheet.costs_per_capita_j226||0), 0.002); end
  def test_costs_per_capita_k226; assert_in_delta(0.0, (worksheet.costs_per_capita_k226||0), 0.002); end
  def test_costs_per_capita_l226; assert_in_delta(0.0, (worksheet.costs_per_capita_l226||0), 0.002); end
  def test_costs_per_capita_m226; assert_in_delta(0.0, (worksheet.costs_per_capita_m226||0), 0.002); end
  def test_costs_per_capita_e227; assert_equal("Commercial heating and cooling", worksheet.costs_per_capita_e227.to_s.gsub(/[\n\r]+/,'')); end
  def test_costs_per_capita_f227; assert_in_delta(0.0, (worksheet.costs_per_capita_f227||0), 0.002); end
  def test_costs_per_capita_g227; assert_in_delta(0.0, (worksheet.costs_per_capita_g227||0), 0.002); end
  def test_costs_per_capita_h227; assert_in_delta(0.0, (worksheet.costs_per_capita_h227||0), 0.002); end
  def test_costs_per_capita_i227; assert_in_delta(0.0, (worksheet.costs_per_capita_i227||0), 0.002); end
  def test_costs_per_capita_j227; assert_in_delta(0.0, (worksheet.costs_per_capita_j227||0), 0.002); end
  def test_costs_per_capita_k227; assert_in_delta(0.0, (worksheet.costs_per_capita_k227||0), 0.002); end
  def test_costs_per_capita_l227; assert_in_delta(0.0, (worksheet.costs_per_capita_l227||0), 0.002); end
  def test_costs_per_capita_m227; assert_in_delta(0.0, (worksheet.costs_per_capita_m227||0), 0.002); end
  def test_costs_per_capita_e228; assert_equal("Domestic lighting, appliances, and cooking", worksheet.costs_per_capita_e228.to_s.gsub(/[\n\r]+/,'')); end
  def test_costs_per_capita_f228; assert_in_delta(0.0, (worksheet.costs_per_capita_f228||0), 0.002); end
  def test_costs_per_capita_g228; assert_in_delta(0.0, (worksheet.costs_per_capita_g228||0), 0.002); end
  def test_costs_per_capita_h228; assert_in_delta(0.0, (worksheet.costs_per_capita_h228||0), 0.002); end
  def test_costs_per_capita_i228; assert_in_delta(0.0, (worksheet.costs_per_capita_i228||0), 0.002); end
  def test_costs_per_capita_j228; assert_in_delta(0.0, (worksheet.costs_per_capita_j228||0), 0.002); end
  def test_costs_per_capita_k228; assert_in_delta(0.0, (worksheet.costs_per_capita_k228||0), 0.002); end
  def test_costs_per_capita_l228; assert_in_delta(0.0, (worksheet.costs_per_capita_l228||0), 0.002); end
  def test_costs_per_capita_m228; assert_in_delta(0.0, (worksheet.costs_per_capita_m228||0), 0.002); end
  def test_costs_per_capita_e229; assert_equal("Commercial lighting, appliances, and catering", worksheet.costs_per_capita_e229.to_s.gsub(/[\n\r]+/,'')); end
  def test_costs_per_capita_f229; assert_in_delta(0.0, (worksheet.costs_per_capita_f229||0), 0.002); end
  def test_costs_per_capita_g229; assert_in_delta(0.0, (worksheet.costs_per_capita_g229||0), 0.002); end
  def test_costs_per_capita_h229; assert_in_delta(0.0, (worksheet.costs_per_capita_h229||0), 0.002); end
  def test_costs_per_capita_i229; assert_in_delta(0.0, (worksheet.costs_per_capita_i229||0), 0.002); end
  def test_costs_per_capita_j229; assert_in_delta(0.0, (worksheet.costs_per_capita_j229||0), 0.002); end
  def test_costs_per_capita_k229; assert_in_delta(0.0, (worksheet.costs_per_capita_k229||0), 0.002); end
  def test_costs_per_capita_l229; assert_in_delta(0.0, (worksheet.costs_per_capita_l229||0), 0.002); end
  def test_costs_per_capita_m229; assert_in_delta(0.0, (worksheet.costs_per_capita_m229||0), 0.002); end
  def test_costs_per_capita_e230; assert_equal("Industrial processes", worksheet.costs_per_capita_e230.to_s.gsub(/[\n\r]+/,'')); end
  def test_costs_per_capita_f230; assert_in_delta(0.0, (worksheet.costs_per_capita_f230||0), 0.002); end
  def test_costs_per_capita_g230; assert_in_delta(0.0, (worksheet.costs_per_capita_g230||0), 0.002); end
  def test_costs_per_capita_h230; assert_in_delta(0.0, (worksheet.costs_per_capita_h230||0), 0.002); end
  def test_costs_per_capita_i230; assert_in_delta(0.0, (worksheet.costs_per_capita_i230||0), 0.002); end
  def test_costs_per_capita_j230; assert_in_delta(0.0, (worksheet.costs_per_capita_j230||0), 0.002); end
  def test_costs_per_capita_k230; assert_in_delta(0.0, (worksheet.costs_per_capita_k230||0), 0.002); end
  def test_costs_per_capita_l230; assert_in_delta(0.0, (worksheet.costs_per_capita_l230||0), 0.002); end
  def test_costs_per_capita_m230; assert_in_delta(0.0, (worksheet.costs_per_capita_m230||0), 0.002); end
  def test_costs_per_capita_e231; assert_equal("Conventional cars and buses", worksheet.costs_per_capita_e231.to_s.gsub(/[\n\r]+/,'')); end
  def test_costs_per_capita_f231; assert_in_delta(0.0, (worksheet.costs_per_capita_f231||0), 0.002); end
  def test_costs_per_capita_g231; assert_in_delta(0.0, (worksheet.costs_per_capita_g231||0), 0.002); end
  def test_costs_per_capita_h231; assert_in_delta(0.0, (worksheet.costs_per_capita_h231||0), 0.002); end
  def test_costs_per_capita_i231; assert_in_delta(0.0, (worksheet.costs_per_capita_i231||0), 0.002); end
  def test_costs_per_capita_j231; assert_in_delta(0.0, (worksheet.costs_per_capita_j231||0), 0.002); end
  def test_costs_per_capita_k231; assert_in_delta(0.0, (worksheet.costs_per_capita_k231||0), 0.002); end
  def test_costs_per_capita_l231; assert_in_delta(0.0, (worksheet.costs_per_capita_l231||0), 0.002); end
  def test_costs_per_capita_m231; assert_in_delta(0.0, (worksheet.costs_per_capita_m231||0), 0.002); end
  def test_costs_per_capita_e232; assert_equal("Hybrid cars and buses", worksheet.costs_per_capita_e232.to_s.gsub(/[\n\r]+/,'')); end
  def test_costs_per_capita_f232; assert_in_delta(0.0, (worksheet.costs_per_capita_f232||0), 0.002); end
  def test_costs_per_capita_g232; assert_in_delta(0.0, (worksheet.costs_per_capita_g232||0), 0.002); end
  def test_costs_per_capita_h232; assert_in_delta(0.0, (worksheet.costs_per_capita_h232||0), 0.002); end
  def test_costs_per_capita_i232; assert_in_delta(0.0, (worksheet.costs_per_capita_i232||0), 0.002); end
  def test_costs_per_capita_j232; assert_in_delta(0.0, (worksheet.costs_per_capita_j232||0), 0.002); end
  def test_costs_per_capita_k232; assert_in_delta(0.0, (worksheet.costs_per_capita_k232||0), 0.002); end
  def test_costs_per_capita_l232; assert_in_delta(0.0, (worksheet.costs_per_capita_l232||0), 0.002); end
  def test_costs_per_capita_m232; assert_in_delta(0.0, (worksheet.costs_per_capita_m232||0), 0.002); end
  def test_costs_per_capita_e233; assert_equal("Electric cars and buses", worksheet.costs_per_capita_e233.to_s.gsub(/[\n\r]+/,'')); end
  def test_costs_per_capita_f233; assert_in_delta(0.0, (worksheet.costs_per_capita_f233||0), 0.002); end
  def test_costs_per_capita_g233; assert_in_delta(0.0, (worksheet.costs_per_capita_g233||0), 0.002); end
  def test_costs_per_capita_h233; assert_in_delta(0.0, (worksheet.costs_per_capita_h233||0), 0.002); end
  def test_costs_per_capita_i233; assert_in_delta(0.0, (worksheet.costs_per_capita_i233||0), 0.002); end
  def test_costs_per_capita_j233; assert_in_delta(0.0, (worksheet.costs_per_capita_j233||0), 0.002); end
  def test_costs_per_capita_k233; assert_in_delta(0.0, (worksheet.costs_per_capita_k233||0), 0.002); end
  def test_costs_per_capita_l233; assert_in_delta(0.0, (worksheet.costs_per_capita_l233||0), 0.002); end
  def test_costs_per_capita_m233; assert_in_delta(0.0, (worksheet.costs_per_capita_m233||0), 0.002); end
  def test_costs_per_capita_e234; assert_equal("Fuel cell cars and buses", worksheet.costs_per_capita_e234.to_s.gsub(/[\n\r]+/,'')); end
  def test_costs_per_capita_f234; assert_in_delta(0.0, (worksheet.costs_per_capita_f234||0), 0.002); end
  def test_costs_per_capita_g234; assert_in_delta(0.0, (worksheet.costs_per_capita_g234||0), 0.002); end
  def test_costs_per_capita_h234; assert_in_delta(0.0, (worksheet.costs_per_capita_h234||0), 0.002); end
  def test_costs_per_capita_i234; assert_in_delta(0.0, (worksheet.costs_per_capita_i234||0), 0.002); end
  def test_costs_per_capita_j234; assert_in_delta(0.0, (worksheet.costs_per_capita_j234||0), 0.002); end
  def test_costs_per_capita_k234; assert_in_delta(0.0, (worksheet.costs_per_capita_k234||0), 0.002); end
  def test_costs_per_capita_l234; assert_in_delta(0.0, (worksheet.costs_per_capita_l234||0), 0.002); end
  def test_costs_per_capita_m234; assert_in_delta(0.0, (worksheet.costs_per_capita_m234||0), 0.002); end
  def test_costs_per_capita_e235; assert_equal("Bikes", worksheet.costs_per_capita_e235.to_s.gsub(/[\n\r]+/,'')); end
  def test_costs_per_capita_f235; assert_in_delta(0.0, (worksheet.costs_per_capita_f235||0), 0.002); end
  def test_costs_per_capita_g235; assert_in_delta(0.0, (worksheet.costs_per_capita_g235||0), 0.002); end
  def test_costs_per_capita_h235; assert_in_delta(0.0, (worksheet.costs_per_capita_h235||0), 0.002); end
  def test_costs_per_capita_i235; assert_in_delta(0.0, (worksheet.costs_per_capita_i235||0), 0.002); end
  def test_costs_per_capita_j235; assert_in_delta(0.0, (worksheet.costs_per_capita_j235||0), 0.002); end
  def test_costs_per_capita_k235; assert_in_delta(0.0, (worksheet.costs_per_capita_k235||0), 0.002); end
  def test_costs_per_capita_l235; assert_in_delta(0.0, (worksheet.costs_per_capita_l235||0), 0.002); end
  def test_costs_per_capita_m235; assert_in_delta(0.0, (worksheet.costs_per_capita_m235||0), 0.002); end
  def test_costs_per_capita_e236; assert_equal("Rail", worksheet.costs_per_capita_e236.to_s.gsub(/[\n\r]+/,'')); end
  def test_costs_per_capita_f236; assert_in_delta(0.0, (worksheet.costs_per_capita_f236||0), 0.002); end
  def test_costs_per_capita_g236; assert_in_delta(0.0, (worksheet.costs_per_capita_g236||0), 0.002); end
  def test_costs_per_capita_h236; assert_in_delta(0.0, (worksheet.costs_per_capita_h236||0), 0.002); end
  def test_costs_per_capita_i236; assert_in_delta(0.0, (worksheet.costs_per_capita_i236||0), 0.002); end
  def test_costs_per_capita_j236; assert_in_delta(0.0, (worksheet.costs_per_capita_j236||0), 0.002); end
  def test_costs_per_capita_k236; assert_in_delta(0.0, (worksheet.costs_per_capita_k236||0), 0.002); end
  def test_costs_per_capita_l236; assert_in_delta(0.0, (worksheet.costs_per_capita_l236||0), 0.002); end
  def test_costs_per_capita_m236; assert_in_delta(0.0, (worksheet.costs_per_capita_m236||0), 0.002); end
  def test_costs_per_capita_e237; assert_equal("Domestic aviation", worksheet.costs_per_capita_e237.to_s.gsub(/[\n\r]+/,'')); end
  def test_costs_per_capita_f237; assert_in_delta(0.0, (worksheet.costs_per_capita_f237||0), 0.002); end
  def test_costs_per_capita_g237; assert_in_delta(0.0, (worksheet.costs_per_capita_g237||0), 0.002); end
  def test_costs_per_capita_h237; assert_in_delta(0.0, (worksheet.costs_per_capita_h237||0), 0.002); end
  def test_costs_per_capita_i237; assert_in_delta(0.0, (worksheet.costs_per_capita_i237||0), 0.002); end
  def test_costs_per_capita_j237; assert_in_delta(0.0, (worksheet.costs_per_capita_j237||0), 0.002); end
  def test_costs_per_capita_k237; assert_in_delta(0.0, (worksheet.costs_per_capita_k237||0), 0.002); end
  def test_costs_per_capita_l237; assert_in_delta(0.0, (worksheet.costs_per_capita_l237||0), 0.002); end
  def test_costs_per_capita_m237; assert_in_delta(0.0, (worksheet.costs_per_capita_m237||0), 0.002); end
  def test_costs_per_capita_e238; assert_equal("Domestic freight", worksheet.costs_per_capita_e238.to_s.gsub(/[\n\r]+/,'')); end
  def test_costs_per_capita_f238; assert_in_delta(0.0, (worksheet.costs_per_capita_f238||0), 0.002); end
  def test_costs_per_capita_g238; assert_in_delta(0.0, (worksheet.costs_per_capita_g238||0), 0.002); end
  def test_costs_per_capita_h238; assert_in_delta(0.0, (worksheet.costs_per_capita_h238||0), 0.002); end
  def test_costs_per_capita_i238; assert_in_delta(0.0, (worksheet.costs_per_capita_i238||0), 0.002); end
  def test_costs_per_capita_j238; assert_in_delta(0.0, (worksheet.costs_per_capita_j238||0), 0.002); end
  def test_costs_per_capita_k238; assert_in_delta(0.0, (worksheet.costs_per_capita_k238||0), 0.002); end
  def test_costs_per_capita_l238; assert_in_delta(0.0, (worksheet.costs_per_capita_l238||0), 0.002); end
  def test_costs_per_capita_m238; assert_in_delta(0.0, (worksheet.costs_per_capita_m238||0), 0.002); end
  def test_costs_per_capita_e239; assert_equal("International aviation", worksheet.costs_per_capita_e239.to_s.gsub(/[\n\r]+/,'')); end
  def test_costs_per_capita_f239; assert_in_delta(0.0, (worksheet.costs_per_capita_f239||0), 0.002); end
  def test_costs_per_capita_g239; assert_in_delta(0.0, (worksheet.costs_per_capita_g239||0), 0.002); end
  def test_costs_per_capita_h239; assert_in_delta(0.0, (worksheet.costs_per_capita_h239||0), 0.002); end
  def test_costs_per_capita_i239; assert_in_delta(0.0, (worksheet.costs_per_capita_i239||0), 0.002); end
  def test_costs_per_capita_j239; assert_in_delta(0.0, (worksheet.costs_per_capita_j239||0), 0.002); end
  def test_costs_per_capita_k239; assert_in_delta(0.0, (worksheet.costs_per_capita_k239||0), 0.002); end
  def test_costs_per_capita_l239; assert_in_delta(0.0, (worksheet.costs_per_capita_l239||0), 0.002); end
  def test_costs_per_capita_m239; assert_in_delta(0.0, (worksheet.costs_per_capita_m239||0), 0.002); end
  def test_costs_per_capita_e240; assert_equal("International shipping (maritime bunkers)", worksheet.costs_per_capita_e240.to_s.gsub(/[\n\r]+/,'')); end
  def test_costs_per_capita_f240; assert_in_delta(0.0, (worksheet.costs_per_capita_f240||0), 0.002); end
  def test_costs_per_capita_g240; assert_in_delta(0.0, (worksheet.costs_per_capita_g240||0), 0.002); end
  def test_costs_per_capita_h240; assert_in_delta(0.0, (worksheet.costs_per_capita_h240||0), 0.002); end
  def test_costs_per_capita_i240; assert_in_delta(0.0, (worksheet.costs_per_capita_i240||0), 0.002); end
  def test_costs_per_capita_j240; assert_in_delta(0.0, (worksheet.costs_per_capita_j240||0), 0.002); end
  def test_costs_per_capita_k240; assert_in_delta(0.0, (worksheet.costs_per_capita_k240||0), 0.002); end
  def test_costs_per_capita_l240; assert_in_delta(0.0, (worksheet.costs_per_capita_l240||0), 0.002); end
  def test_costs_per_capita_m240; assert_in_delta(0.0, (worksheet.costs_per_capita_m240||0), 0.002); end
  def test_costs_per_capita_e241; assert_equal("Geosequestration", worksheet.costs_per_capita_e241.to_s.gsub(/[\n\r]+/,'')); end
  def test_costs_per_capita_f241; assert_in_delta(0.0, (worksheet.costs_per_capita_f241||0), 0.002); end
  def test_costs_per_capita_g241; assert_in_delta(0.0, (worksheet.costs_per_capita_g241||0), 0.002); end
  def test_costs_per_capita_h241; assert_in_delta(0.0, (worksheet.costs_per_capita_h241||0), 0.002); end
  def test_costs_per_capita_i241; assert_in_delta(0.0, (worksheet.costs_per_capita_i241||0), 0.002); end
  def test_costs_per_capita_j241; assert_in_delta(0.0, (worksheet.costs_per_capita_j241||0), 0.002); end
  def test_costs_per_capita_k241; assert_in_delta(0.0, (worksheet.costs_per_capita_k241||0), 0.002); end
  def test_costs_per_capita_l241; assert_in_delta(0.0, (worksheet.costs_per_capita_l241||0), 0.002); end
  def test_costs_per_capita_m241; assert_in_delta(0.0, (worksheet.costs_per_capita_m241||0), 0.002); end
  def test_costs_per_capita_e242; assert_equal("Petroleum refineries", worksheet.costs_per_capita_e242.to_s.gsub(/[\n\r]+/,'')); end
  def test_costs_per_capita_f242; assert_in_delta(0.0, (worksheet.costs_per_capita_f242||0), 0.002); end
  def test_costs_per_capita_g242; assert_in_delta(0.0, (worksheet.costs_per_capita_g242||0), 0.002); end
  def test_costs_per_capita_h242; assert_in_delta(0.0, (worksheet.costs_per_capita_h242||0), 0.002); end
  def test_costs_per_capita_i242; assert_in_delta(0.0, (worksheet.costs_per_capita_i242||0), 0.002); end
  def test_costs_per_capita_j242; assert_in_delta(0.0, (worksheet.costs_per_capita_j242||0), 0.002); end
  def test_costs_per_capita_k242; assert_in_delta(0.0, (worksheet.costs_per_capita_k242||0), 0.002); end
  def test_costs_per_capita_l242; assert_in_delta(0.0, (worksheet.costs_per_capita_l242||0), 0.002); end
  def test_costs_per_capita_m242; assert_in_delta(0.0, (worksheet.costs_per_capita_m242||0), 0.002); end
  def test_costs_per_capita_e243; assert_equal("Fossil fuel transfers", worksheet.costs_per_capita_e243.to_s.gsub(/[\n\r]+/,'')); end
  def test_costs_per_capita_f243; assert_in_delta(0.0, (worksheet.costs_per_capita_f243||0), 0.002); end
  def test_costs_per_capita_g243; assert_in_delta(0.0, (worksheet.costs_per_capita_g243||0), 0.002); end
  def test_costs_per_capita_h243; assert_in_delta(0.0, (worksheet.costs_per_capita_h243||0), 0.002); end
  def test_costs_per_capita_i243; assert_in_delta(0.0, (worksheet.costs_per_capita_i243||0), 0.002); end
  def test_costs_per_capita_j243; assert_in_delta(0.0, (worksheet.costs_per_capita_j243||0), 0.002); end
  def test_costs_per_capita_k243; assert_in_delta(0.0, (worksheet.costs_per_capita_k243||0), 0.002); end
  def test_costs_per_capita_l243; assert_in_delta(0.0, (worksheet.costs_per_capita_l243||0), 0.002); end
  def test_costs_per_capita_m243; assert_in_delta(0.0, (worksheet.costs_per_capita_m243||0), 0.002); end
  def test_costs_per_capita_e244; assert_equal("District heating effective demand", worksheet.costs_per_capita_e244.to_s.gsub(/[\n\r]+/,'')); end
  def test_costs_per_capita_f244; assert_in_delta(0.0, (worksheet.costs_per_capita_f244||0), 0.002); end
  def test_costs_per_capita_g244; assert_in_delta(0.0, (worksheet.costs_per_capita_g244||0), 0.002); end
  def test_costs_per_capita_h244; assert_in_delta(0.0, (worksheet.costs_per_capita_h244||0), 0.002); end
  def test_costs_per_capita_i244; assert_in_delta(0.0, (worksheet.costs_per_capita_i244||0), 0.002); end
  def test_costs_per_capita_j244; assert_in_delta(0.0, (worksheet.costs_per_capita_j244||0), 0.002); end
  def test_costs_per_capita_k244; assert_in_delta(0.0, (worksheet.costs_per_capita_k244||0), 0.002); end
  def test_costs_per_capita_l244; assert_in_delta(0.0, (worksheet.costs_per_capita_l244||0), 0.002); end
  def test_costs_per_capita_m244; assert_in_delta(0.0, (worksheet.costs_per_capita_m244||0), 0.002); end
  def test_costs_per_capita_e245; assert_equal("Storage of captured CO2", worksheet.costs_per_capita_e245.to_s.gsub(/[\n\r]+/,'')); end
  def test_costs_per_capita_f245; assert_in_delta(0.0, (worksheet.costs_per_capita_f245||0), 0.002); end
  def test_costs_per_capita_g245; assert_in_delta(0.0, (worksheet.costs_per_capita_g245||0), 0.002); end
  def test_costs_per_capita_h245; assert_in_delta(0.0, (worksheet.costs_per_capita_h245||0), 0.002); end
  def test_costs_per_capita_i245; assert_in_delta(0.0, (worksheet.costs_per_capita_i245||0), 0.002); end
  def test_costs_per_capita_j245; assert_in_delta(0.0, (worksheet.costs_per_capita_j245||0), 0.002); end
  def test_costs_per_capita_k245; assert_in_delta(0.0, (worksheet.costs_per_capita_k245||0), 0.002); end
  def test_costs_per_capita_l245; assert_in_delta(0.0, (worksheet.costs_per_capita_l245||0), 0.002); end
  def test_costs_per_capita_m245; assert_in_delta(0.0, (worksheet.costs_per_capita_m245||0), 0.002); end
  def test_costs_per_capita_e246; assert_equal("Coal", worksheet.costs_per_capita_e246.to_s.gsub(/[\n\r]+/,'')); end
  def test_costs_per_capita_f246; assert_in_delta(0.0, (worksheet.costs_per_capita_f246||0), 0.002); end
  def test_costs_per_capita_g246; assert_in_delta(0.0, (worksheet.costs_per_capita_g246||0), 0.002); end
  def test_costs_per_capita_h246; assert_in_delta(0.0, (worksheet.costs_per_capita_h246||0), 0.002); end
  def test_costs_per_capita_i246; assert_in_delta(0.0, (worksheet.costs_per_capita_i246||0), 0.002); end
  def test_costs_per_capita_j246; assert_in_delta(0.0, (worksheet.costs_per_capita_j246||0), 0.002); end
  def test_costs_per_capita_k246; assert_in_delta(0.0, (worksheet.costs_per_capita_k246||0), 0.002); end
  def test_costs_per_capita_l246; assert_in_delta(0.0, (worksheet.costs_per_capita_l246||0), 0.002); end
  def test_costs_per_capita_m246; assert_in_delta(0.0, (worksheet.costs_per_capita_m246||0), 0.002); end
  def test_costs_per_capita_e247; assert_equal("Oil", worksheet.costs_per_capita_e247.to_s.gsub(/[\n\r]+/,'')); end
  def test_costs_per_capita_f247; assert_in_delta(0.0, (worksheet.costs_per_capita_f247||0), 0.002); end
  def test_costs_per_capita_g247; assert_in_delta(0.0, (worksheet.costs_per_capita_g247||0), 0.002); end
  def test_costs_per_capita_h247; assert_in_delta(0.0, (worksheet.costs_per_capita_h247||0), 0.002); end
  def test_costs_per_capita_i247; assert_in_delta(0.0, (worksheet.costs_per_capita_i247||0), 0.002); end
  def test_costs_per_capita_j247; assert_in_delta(0.0, (worksheet.costs_per_capita_j247||0), 0.002); end
  def test_costs_per_capita_k247; assert_in_delta(0.0, (worksheet.costs_per_capita_k247||0), 0.002); end
  def test_costs_per_capita_l247; assert_in_delta(0.0, (worksheet.costs_per_capita_l247||0), 0.002); end
  def test_costs_per_capita_m247; assert_in_delta(0.0, (worksheet.costs_per_capita_m247||0), 0.002); end
  def test_costs_per_capita_e248; assert_equal("Gas", worksheet.costs_per_capita_e248.to_s.gsub(/[\n\r]+/,'')); end
  def test_costs_per_capita_f248; assert_in_delta(0.0, (worksheet.costs_per_capita_f248||0), 0.002); end
  def test_costs_per_capita_g248; assert_in_delta(0.0, (worksheet.costs_per_capita_g248||0), 0.002); end
  def test_costs_per_capita_h248; assert_in_delta(0.0, (worksheet.costs_per_capita_h248||0), 0.002); end
  def test_costs_per_capita_i248; assert_in_delta(0.0, (worksheet.costs_per_capita_i248||0), 0.002); end
  def test_costs_per_capita_j248; assert_in_delta(0.0, (worksheet.costs_per_capita_j248||0), 0.002); end
  def test_costs_per_capita_k248; assert_in_delta(0.0, (worksheet.costs_per_capita_k248||0), 0.002); end
  def test_costs_per_capita_l248; assert_in_delta(0.0, (worksheet.costs_per_capita_l248||0), 0.002); end
  def test_costs_per_capita_m248; assert_in_delta(0.0, (worksheet.costs_per_capita_m248||0), 0.002); end
  def test_costs_per_capita_e249; assert_equal("Finance cost", worksheet.costs_per_capita_e249.to_s.gsub(/[\n\r]+/,'')); end
  def test_costs_per_capita_f249; assert_in_delta(0.0, (worksheet.costs_per_capita_f249||0), 0.002); end
  def test_costs_per_capita_g249; assert_in_delta(0.0, (worksheet.costs_per_capita_g249||0), 0.002); end
  def test_costs_per_capita_h249; assert_in_delta(0.0, (worksheet.costs_per_capita_h249||0), 0.002); end
  def test_costs_per_capita_i249; assert_in_delta(0.0, (worksheet.costs_per_capita_i249||0), 0.002); end
  def test_costs_per_capita_j249; assert_in_delta(0.0, (worksheet.costs_per_capita_j249||0), 0.002); end
  def test_costs_per_capita_k249; assert_in_delta(0.0, (worksheet.costs_per_capita_k249||0), 0.002); end
  def test_costs_per_capita_l249; assert_in_delta(0.0, (worksheet.costs_per_capita_l249||0), 0.002); end
  def test_costs_per_capita_m249; assert_in_delta(0.0, (worksheet.costs_per_capita_m249||0), 0.002); end
  def test_electricity_d63; assert_equal("Sector", worksheet.electricity_d63.to_s.gsub(/[\n\r]+/,'')); end
  def test_electricity_e63; assert_in_epsilon(2012.0, worksheet.electricity_e63, 0.002); end
  def test_electricity_f63; assert_in_epsilon(2015.0, worksheet.electricity_f63, 0.002); end
  def test_electricity_g63; assert_in_epsilon(2020.0, worksheet.electricity_g63, 0.002); end
  def test_electricity_h63; assert_in_epsilon(2025.0, worksheet.electricity_h63, 0.002); end
  def test_electricity_i63; assert_in_epsilon(2030.0, worksheet.electricity_i63, 0.002); end
  def test_electricity_j63; assert_in_epsilon(2035.0, worksheet.electricity_j63, 0.002); end
  def test_electricity_k63; assert_in_epsilon(2040.0, worksheet.electricity_k63, 0.002); end
  def test_electricity_l63; assert_in_epsilon(2045.0, worksheet.electricity_l63, 0.002); end
  def test_electricity_m63; assert_in_epsilon(2050.0, worksheet.electricity_m63, 0.002); end
  def test_electricity_d64; assert_equal("Oil / Biofuel", worksheet.electricity_d64.to_s.gsub(/[\n\r]+/,'')); end
  def test_electricity_e64; assert_in_delta(0.0, (worksheet.electricity_e64||0), 0.002); end
  def test_electricity_f64; assert_in_delta(0.0, (worksheet.electricity_f64||0), 0.002); end
  def test_electricity_g64; assert_in_delta(0.0, (worksheet.electricity_g64||0), 0.002); end
  def test_electricity_h64; assert_in_delta(0.0, (worksheet.electricity_h64||0), 0.002); end
  def test_electricity_i64; assert_in_delta(0.0, (worksheet.electricity_i64||0), 0.002); end
  def test_electricity_j64; assert_in_delta(0.0, (worksheet.electricity_j64||0), 0.002); end
  def test_electricity_k64; assert_in_delta(0.0, (worksheet.electricity_k64||0), 0.002); end
  def test_electricity_l64; assert_in_delta(0.0, (worksheet.electricity_l64||0), 0.002); end
  def test_electricity_m64; assert_in_delta(0.0, (worksheet.electricity_m64||0), 0.002); end
  def test_electricity_d65; assert_equal("Coal / Biomass", worksheet.electricity_d65.to_s.gsub(/[\n\r]+/,'')); end
  def test_electricity_e65; assert_in_delta(0.0, (worksheet.electricity_e65||0), 0.002); end
  def test_electricity_f65; assert_in_delta(0.0, (worksheet.electricity_f65||0), 0.002); end
  def test_electricity_g65; assert_in_delta(0.0, (worksheet.electricity_g65||0), 0.002); end
  def test_electricity_h65; assert_in_delta(0.0, (worksheet.electricity_h65||0), 0.002); end
  def test_electricity_i65; assert_in_delta(0.0, (worksheet.electricity_i65||0), 0.002); end
  def test_electricity_j65; assert_in_delta(0.0, (worksheet.electricity_j65||0), 0.002); end
  def test_electricity_k65; assert_in_delta(0.0, (worksheet.electricity_k65||0), 0.002); end
  def test_electricity_l65; assert_in_delta(0.0, (worksheet.electricity_l65||0), 0.002); end
  def test_electricity_m65; assert_in_delta(0.0, (worksheet.electricity_m65||0), 0.002); end
  def test_electricity_d66; assert_equal("Gas / Biogas", worksheet.electricity_d66.to_s.gsub(/[\n\r]+/,'')); end
  def test_electricity_e66; assert_in_delta(0.0, (worksheet.electricity_e66||0), 0.002); end
  def test_electricity_f66; assert_in_delta(0.0, (worksheet.electricity_f66||0), 0.002); end
  def test_electricity_g66; assert_in_delta(0.0, (worksheet.electricity_g66||0), 0.002); end
  def test_electricity_h66; assert_in_delta(0.0, (worksheet.electricity_h66||0), 0.002); end
  def test_electricity_i66; assert_in_delta(0.0, (worksheet.electricity_i66||0), 0.002); end
  def test_electricity_j66; assert_in_delta(0.0, (worksheet.electricity_j66||0), 0.002); end
  def test_electricity_k66; assert_in_delta(0.0, (worksheet.electricity_k66||0), 0.002); end
  def test_electricity_l66; assert_in_delta(0.0, (worksheet.electricity_l66||0), 0.002); end
  def test_electricity_m66; assert_in_delta(0.0, (worksheet.electricity_m66||0), 0.002); end
  def test_electricity_d67; assert_equal("CCS Power [UNUSED]", worksheet.electricity_d67.to_s.gsub(/[\n\r]+/,'')); end
  def test_electricity_e67; assert_in_delta(0.0, (worksheet.electricity_e67||0), 0.002); end
  def test_electricity_f67; assert_in_delta(0.0, (worksheet.electricity_f67||0), 0.002); end
  def test_electricity_g67; assert_in_delta(0.0, (worksheet.electricity_g67||0), 0.002); end
  def test_electricity_h67; assert_in_delta(0.0, (worksheet.electricity_h67||0), 0.002); end
  def test_electricity_i67; assert_in_delta(0.0, (worksheet.electricity_i67||0), 0.002); end
  def test_electricity_j67; assert_in_delta(0.0, (worksheet.electricity_j67||0), 0.002); end
  def test_electricity_k67; assert_in_delta(0.0, (worksheet.electricity_k67||0), 0.002); end
  def test_electricity_l67; assert_in_delta(0.0, (worksheet.electricity_l67||0), 0.002); end
  def test_electricity_m67; assert_in_delta(0.0, (worksheet.electricity_m67||0), 0.002); end
  def test_electricity_d68; assert_equal("Nuclear power [UNUSED]", worksheet.electricity_d68.to_s.gsub(/[\n\r]+/,'')); end
  def test_electricity_e68; assert_in_delta(0.0, (worksheet.electricity_e68||0), 0.002); end
  def test_electricity_f68; assert_in_delta(0.0, (worksheet.electricity_f68||0), 0.002); end
  def test_electricity_g68; assert_in_delta(0.0, (worksheet.electricity_g68||0), 0.002); end
  def test_electricity_h68; assert_in_delta(0.0, (worksheet.electricity_h68||0), 0.002); end
  def test_electricity_i68; assert_in_delta(0.0, (worksheet.electricity_i68||0), 0.002); end
  def test_electricity_j68; assert_in_delta(0.0, (worksheet.electricity_j68||0), 0.002); end
  def test_electricity_k68; assert_in_delta(0.0, (worksheet.electricity_k68||0), 0.002); end
  def test_electricity_l68; assert_in_delta(0.0, (worksheet.electricity_l68||0), 0.002); end
  def test_electricity_m68; assert_in_delta(0.0, (worksheet.electricity_m68||0), 0.002); end
  def test_electricity_d69; assert_equal("Onshore wind", worksheet.electricity_d69.to_s.gsub(/[\n\r]+/,'')); end
  def test_electricity_e69; assert_in_delta(0.0, (worksheet.electricity_e69||0), 0.002); end
  def test_electricity_f69; assert_in_delta(0.0, (worksheet.electricity_f69||0), 0.002); end
  def test_electricity_g69; assert_in_delta(0.0, (worksheet.electricity_g69||0), 0.002); end
  def test_electricity_h69; assert_in_delta(0.0, (worksheet.electricity_h69||0), 0.002); end
  def test_electricity_i69; assert_in_delta(0.0, (worksheet.electricity_i69||0), 0.002); end
  def test_electricity_j69; assert_in_delta(0.0, (worksheet.electricity_j69||0), 0.002); end
  def test_electricity_k69; assert_in_delta(0.0, (worksheet.electricity_k69||0), 0.002); end
  def test_electricity_l69; assert_in_delta(0.0, (worksheet.electricity_l69||0), 0.002); end
  def test_electricity_m69; assert_in_delta(0.0, (worksheet.electricity_m69||0), 0.002); end
  def test_electricity_d70; assert_equal("Offshore wind [UNUSED]", worksheet.electricity_d70.to_s.gsub(/[\n\r]+/,'')); end
  def test_electricity_e70; assert_in_delta(0.0, (worksheet.electricity_e70||0), 0.002); end
  def test_electricity_f70; assert_in_delta(0.0, (worksheet.electricity_f70||0), 0.002); end
  def test_electricity_g70; assert_in_delta(0.0, (worksheet.electricity_g70||0), 0.002); end
  def test_electricity_h70; assert_in_delta(0.0, (worksheet.electricity_h70||0), 0.002); end
  def test_electricity_i70; assert_in_delta(0.0, (worksheet.electricity_i70||0), 0.002); end
  def test_electricity_j70; assert_in_delta(0.0, (worksheet.electricity_j70||0), 0.002); end
  def test_electricity_k70; assert_in_delta(0.0, (worksheet.electricity_k70||0), 0.002); end
  def test_electricity_l70; assert_in_delta(0.0, (worksheet.electricity_l70||0), 0.002); end
  def test_electricity_m70; assert_in_delta(0.0, (worksheet.electricity_m70||0), 0.002); end
  def test_electricity_d71; assert_equal("Hydro power", worksheet.electricity_d71.to_s.gsub(/[\n\r]+/,'')); end
  def test_electricity_e71; assert_in_delta(0.0, (worksheet.electricity_e71||0), 0.002); end
  def test_electricity_f71; assert_in_delta(0.0, (worksheet.electricity_f71||0), 0.002); end
  def test_electricity_g71; assert_in_delta(0.0, (worksheet.electricity_g71||0), 0.002); end
  def test_electricity_h71; assert_in_delta(0.0, (worksheet.electricity_h71||0), 0.002); end
  def test_electricity_i71; assert_in_delta(0.0, (worksheet.electricity_i71||0), 0.002); end
  def test_electricity_j71; assert_in_delta(0.0, (worksheet.electricity_j71||0), 0.002); end
  def test_electricity_k71; assert_in_delta(0.0, (worksheet.electricity_k71||0), 0.002); end
  def test_electricity_l71; assert_in_delta(0.0, (worksheet.electricity_l71||0), 0.002); end
  def test_electricity_m71; assert_in_delta(0.0, (worksheet.electricity_m71||0), 0.002); end
  def test_electricity_d72; assert_equal("Wave", worksheet.electricity_d72.to_s.gsub(/[\n\r]+/,'')); end
  def test_electricity_e72; assert_in_delta(0.0, (worksheet.electricity_e72||0), 0.002); end
  def test_electricity_f72; assert_in_delta(0.0, (worksheet.electricity_f72||0), 0.002); end
  def test_electricity_g72; assert_in_delta(0.0, (worksheet.electricity_g72||0), 0.002); end
  def test_electricity_h72; assert_in_delta(0.0, (worksheet.electricity_h72||0), 0.002); end
  def test_electricity_i72; assert_in_delta(0.0, (worksheet.electricity_i72||0), 0.002); end
  def test_electricity_j72; assert_in_delta(0.0, (worksheet.electricity_j72||0), 0.002); end
  def test_electricity_k72; assert_in_delta(0.0, (worksheet.electricity_k72||0), 0.002); end
  def test_electricity_l72; assert_in_delta(0.0, (worksheet.electricity_l72||0), 0.002); end
  def test_electricity_m72; assert_in_delta(0.0, (worksheet.electricity_m72||0), 0.002); end
  def test_electricity_d73; assert_equal("Tidal Stream", worksheet.electricity_d73.to_s.gsub(/[\n\r]+/,'')); end
  def test_electricity_e73; assert_in_delta(0.0, (worksheet.electricity_e73||0), 0.002); end
  def test_electricity_f73; assert_in_delta(0.0, (worksheet.electricity_f73||0), 0.002); end
  def test_electricity_g73; assert_in_delta(0.0, (worksheet.electricity_g73||0), 0.002); end
  def test_electricity_h73; assert_in_delta(0.0, (worksheet.electricity_h73||0), 0.002); end
  def test_electricity_i73; assert_in_delta(0.0, (worksheet.electricity_i73||0), 0.002); end
  def test_electricity_j73; assert_in_delta(0.0, (worksheet.electricity_j73||0), 0.002); end
  def test_electricity_k73; assert_in_delta(0.0, (worksheet.electricity_k73||0), 0.002); end
  def test_electricity_l73; assert_in_delta(0.0, (worksheet.electricity_l73||0), 0.002); end
  def test_electricity_m73; assert_in_delta(0.0, (worksheet.electricity_m73||0), 0.002); end
  def test_electricity_d74; assert_equal("Tidal Range [UNUSED]", worksheet.electricity_d74.to_s.gsub(/[\n\r]+/,'')); end
  def test_electricity_e74; assert_in_delta(0.0, (worksheet.electricity_e74||0), 0.002); end
  def test_electricity_f74; assert_in_delta(0.0, (worksheet.electricity_f74||0), 0.002); end
  def test_electricity_g74; assert_in_delta(0.0, (worksheet.electricity_g74||0), 0.002); end
  def test_electricity_h74; assert_in_delta(0.0, (worksheet.electricity_h74||0), 0.002); end
  def test_electricity_i74; assert_in_delta(0.0, (worksheet.electricity_i74||0), 0.002); end
  def test_electricity_j74; assert_in_delta(0.0, (worksheet.electricity_j74||0), 0.002); end
  def test_electricity_k74; assert_in_delta(0.0, (worksheet.electricity_k74||0), 0.002); end
  def test_electricity_l74; assert_in_delta(0.0, (worksheet.electricity_l74||0), 0.002); end
  def test_electricity_m74; assert_in_delta(0.0, (worksheet.electricity_m74||0), 0.002); end
  def test_electricity_d75; assert_equal("Geothermal electricity [UNUSED]", worksheet.electricity_d75.to_s.gsub(/[\n\r]+/,'')); end
  def test_electricity_e75; assert_in_delta(0.0, (worksheet.electricity_e75||0), 0.002); end
  def test_electricity_f75; assert_in_delta(0.0, (worksheet.electricity_f75||0), 0.002); end
  def test_electricity_g75; assert_in_delta(0.0, (worksheet.electricity_g75||0), 0.002); end
  def test_electricity_h75; assert_in_delta(0.0, (worksheet.electricity_h75||0), 0.002); end
  def test_electricity_i75; assert_in_delta(0.0, (worksheet.electricity_i75||0), 0.002); end
  def test_electricity_j75; assert_in_delta(0.0, (worksheet.electricity_j75||0), 0.002); end
  def test_electricity_k75; assert_in_delta(0.0, (worksheet.electricity_k75||0), 0.002); end
  def test_electricity_l75; assert_in_delta(0.0, (worksheet.electricity_l75||0), 0.002); end
  def test_electricity_m75; assert_in_delta(0.0, (worksheet.electricity_m75||0), 0.002); end
  def test_electricity_d76; assert_equal("Solar PV", worksheet.electricity_d76.to_s.gsub(/[\n\r]+/,'')); end
  def test_electricity_e76; assert_in_delta(0.0, (worksheet.electricity_e76||0), 0.002); end
  def test_electricity_f76; assert_in_delta(0.0, (worksheet.electricity_f76||0), 0.002); end
  def test_electricity_g76; assert_in_delta(0.0, (worksheet.electricity_g76||0), 0.002); end
  def test_electricity_h76; assert_in_delta(0.0, (worksheet.electricity_h76||0), 0.002); end
  def test_electricity_i76; assert_in_delta(0.0, (worksheet.electricity_i76||0), 0.002); end
  def test_electricity_j76; assert_in_delta(0.0, (worksheet.electricity_j76||0), 0.002); end
  def test_electricity_k76; assert_in_delta(0.0, (worksheet.electricity_k76||0), 0.002); end
  def test_electricity_l76; assert_in_delta(0.0, (worksheet.electricity_l76||0), 0.002); end
  def test_electricity_m76; assert_in_delta(0.0, (worksheet.electricity_m76||0), 0.002); end
  def test_electricity_d77; assert_equal("Standby / peaking gas", worksheet.electricity_d77.to_s.gsub(/[\n\r]+/,'')); end
  def test_electricity_e77; assert_in_delta(0.0, (worksheet.electricity_e77||0), 0.002); end
  def test_electricity_f77; assert_in_delta(0.0, (worksheet.electricity_f77||0), 0.002); end
  def test_electricity_g77; assert_in_delta(0.0, (worksheet.electricity_g77||0), 0.002); end
  def test_electricity_h77; assert_in_delta(0.0, (worksheet.electricity_h77||0), 0.002); end
  def test_electricity_i77; assert_in_delta(0.0, (worksheet.electricity_i77||0), 0.002); end
  def test_electricity_j77; assert_in_delta(0.0, (worksheet.electricity_j77||0), 0.002); end
  def test_electricity_k77; assert_in_delta(0.0, (worksheet.electricity_k77||0), 0.002); end
  def test_electricity_l77; assert_in_delta(0.0, (worksheet.electricity_l77||0), 0.002); end
  def test_electricity_m77; assert_in_delta(0.0, (worksheet.electricity_m77||0), 0.002); end
  def test_electricity_d78; assert_equal("Total generation", worksheet.electricity_d78.to_s.gsub(/[\n\r]+/,'')); end
  def test_electricity_e78; assert_in_delta(0.0, (worksheet.electricity_e78||0), 0.002); end
  def test_electricity_f78; assert_in_delta(0.0, (worksheet.electricity_f78||0), 0.002); end
  def test_electricity_g78; assert_in_delta(0.0, (worksheet.electricity_g78||0), 0.002); end
  def test_electricity_h78; assert_in_delta(0.0, (worksheet.electricity_h78||0), 0.002); end
  def test_electricity_i78; assert_in_delta(0.0, (worksheet.electricity_i78||0), 0.002); end
  def test_electricity_j78; assert_in_delta(0.0, (worksheet.electricity_j78||0), 0.002); end
  def test_electricity_k78; assert_in_delta(0.0, (worksheet.electricity_k78||0), 0.002); end
  def test_electricity_l78; assert_in_delta(0.0, (worksheet.electricity_l78||0), 0.002); end
  def test_electricity_m78; assert_in_delta(0.0, (worksheet.electricity_m78||0), 0.002); end
  def test_electricity_d25; assert_equal("Sector", worksheet.electricity_d25.to_s.gsub(/[\n\r]+/,'')); end
  def test_electricity_e25; assert_in_epsilon(2012.0, worksheet.electricity_e25, 0.002); end
  def test_electricity_f25; assert_in_epsilon(2015.0, worksheet.electricity_f25, 0.002); end
  def test_electricity_g25; assert_in_epsilon(2020.0, worksheet.electricity_g25, 0.002); end
  def test_electricity_h25; assert_in_epsilon(2025.0, worksheet.electricity_h25, 0.002); end
  def test_electricity_i25; assert_in_epsilon(2030.0, worksheet.electricity_i25, 0.002); end
  def test_electricity_j25; assert_in_epsilon(2035.0, worksheet.electricity_j25, 0.002); end
  def test_electricity_k25; assert_in_epsilon(2040.0, worksheet.electricity_k25, 0.002); end
  def test_electricity_l25; assert_in_epsilon(2045.0, worksheet.electricity_l25, 0.002); end
  def test_electricity_m25; assert_in_epsilon(2050.0, worksheet.electricity_m25, 0.002); end
  def test_electricity_d26; assert_equal("Transport", worksheet.electricity_d26.to_s.gsub(/[\n\r]+/,'')); end
  def test_electricity_e26; assert_in_epsilon(24.783234405217023, worksheet.electricity_e26, 0.002); end
  def test_electricity_f26; assert_in_epsilon(25.490861341891197, worksheet.electricity_f26, 0.002); end
  def test_electricity_g26; assert_in_epsilon(25.416372292786665, worksheet.electricity_g26, 0.002); end
  def test_electricity_h26; assert_in_epsilon(92.59557957991419, worksheet.electricity_h26, 0.002); end
  def test_electricity_i26; assert_in_epsilon(222.74571892093255, worksheet.electricity_i26, 0.002); end
  def test_electricity_j26; assert_in_epsilon(342.71434357907077, worksheet.electricity_j26, 0.002); end
  def test_electricity_k26; assert_in_epsilon(432.6187790041113, worksheet.electricity_k26, 0.002); end
  def test_electricity_l26; assert_in_epsilon(498.8775318366574, worksheet.electricity_l26, 0.002); end
  def test_electricity_m26; assert_in_epsilon(562.6601273553823, worksheet.electricity_m26, 0.002); end
  def test_electricity_d27; assert_equal("Industry", worksheet.electricity_d27.to_s.gsub(/[\n\r]+/,'')); end
  def test_electricity_e27; assert_in_epsilon(559.44822, worksheet.electricity_e27, 0.002); end
  def test_electricity_f27; assert_in_epsilon(560.7884098449158, worksheet.electricity_f27, 0.002); end
  def test_electricity_g27; assert_in_epsilon(611.9391379359205, worksheet.electricity_g27, 0.002); end
  def test_electricity_h27; assert_in_epsilon(664.1156554578092, worksheet.electricity_h27, 0.002); end
  def test_electricity_i27; assert_in_epsilon(707.5080095229046, worksheet.electricity_i27, 0.002); end
  def test_electricity_j27; assert_in_epsilon(756.6007328920734, worksheet.electricity_j27, 0.002); end
  def test_electricity_k27; assert_in_epsilon(805.8531409285557, worksheet.electricity_k27, 0.002); end
  def test_electricity_l27; assert_in_epsilon(858.6716138026235, worksheet.electricity_l27, 0.002); end
  def test_electricity_m27; assert_in_epsilon(905.3261447321629, worksheet.electricity_m27, 0.002); end
  def test_electricity_d28; assert_equal("Heating and cooling", worksheet.electricity_d28.to_s.gsub(/[\n\r]+/,'')); end
  def test_electricity_e28; assert_in_epsilon(950.1288070185262, worksheet.electricity_e28, 0.002); end
  def test_electricity_f28; assert_in_epsilon(985.6344075117547, worksheet.electricity_f28, 0.002); end
  def test_electricity_g28; assert_in_epsilon(1043.1832855655837, worksheet.electricity_g28, 0.002); end
  def test_electricity_h28; assert_in_epsilon(1084.5155647398128, worksheet.electricity_h28, 0.002); end
  def test_electricity_i28; assert_in_epsilon(1118.5253354930062, worksheet.electricity_i28, 0.002); end
  def test_electricity_j28; assert_in_epsilon(1146.4105106889656, worksheet.electricity_j28, 0.002); end
  def test_electricity_k28; assert_in_epsilon(1168.8810711578872, worksheet.electricity_k28, 0.002); end
  def test_electricity_l28; assert_in_epsilon(1185.762363036262, worksheet.electricity_l28, 0.002); end
  def test_electricity_m28; assert_in_epsilon(1197.0543863240905, worksheet.electricity_m28, 0.002); end
  def test_electricity_d29; assert_equal("Lighting & appliances", worksheet.electricity_d29.to_s.gsub(/[\n\r]+/,'')); end
  def test_electricity_e29; assert_in_epsilon(1467.4347354800002, worksheet.electricity_e29, 0.002); end
  def test_electricity_f29; assert_in_epsilon(1518.7835085217698, worksheet.electricity_f29, 0.002); end
  def test_electricity_g29; assert_in_epsilon(1605.451161168009, worksheet.electricity_g29, 0.002); end
  def test_electricity_h29; assert_in_epsilon(1666.4149864161136, worksheet.electricity_h29, 0.002); end
  def test_electricity_i29; assert_in_epsilon(1716.3513613449004, worksheet.electricity_i29, 0.002); end
  def test_electricity_j29; assert_in_epsilon(1757.140790563597, worksheet.electricity_j29, 0.002); end
  def test_electricity_k29; assert_in_epsilon(1789.5352371124757, worksheet.electricity_k29, 0.002); end
  def test_electricity_l29; assert_in_epsilon(1813.3136211172505, worksheet.electricity_l29, 0.002); end
  def test_electricity_m29; assert_in_epsilon(1828.4749344750649, worksheet.electricity_m29, 0.002); end
  def test_electricity_d30; assert_equal("Total", worksheet.electricity_d30.to_s.gsub(/[\n\r]+/,'')); end
  def test_electricity_e30; assert_in_epsilon(3001.7949969037436, worksheet.electricity_e30, 0.002); end
  def test_electricity_f30; assert_in_epsilon(3090.6971872203317, worksheet.electricity_f30, 0.002); end
  def test_electricity_g30; assert_in_epsilon(3285.9899569623, worksheet.electricity_g30, 0.002); end
  def test_electricity_h30; assert_in_epsilon(3507.6417861936498, worksheet.electricity_h30, 0.002); end
  def test_electricity_i30; assert_in_epsilon(3765.1304252817436, worksheet.electricity_i30, 0.002); end
  def test_electricity_j30; assert_in_epsilon(4002.866377723707, worksheet.electricity_j30, 0.002); end
  def test_electricity_k30; assert_in_epsilon(4196.88822820303, worksheet.electricity_k30, 0.002); end
  def test_electricity_l30; assert_in_epsilon(4356.625129792794, worksheet.electricity_l30, 0.002); end
  def test_electricity_m30; assert_in_epsilon(4493.515592886701, worksheet.electricity_m30, 0.002); end
  def test_electricity_d112; assert_equal("Source", worksheet.electricity_d112.to_s.gsub(/[\n\r]+/,'')); end
  def test_electricity_e112; assert_in_epsilon(2012.0, worksheet.electricity_e112, 0.002); end
  def test_electricity_f112; assert_in_epsilon(2015.0, worksheet.electricity_f112, 0.002); end
  def test_electricity_g112; assert_in_epsilon(2020.0, worksheet.electricity_g112, 0.002); end
  def test_electricity_h112; assert_in_epsilon(2025.0, worksheet.electricity_h112, 0.002); end
  def test_electricity_i112; assert_in_epsilon(2030.0, worksheet.electricity_i112, 0.002); end
  def test_electricity_j112; assert_in_epsilon(2035.0, worksheet.electricity_j112, 0.002); end
  def test_electricity_k112; assert_in_epsilon(2040.0, worksheet.electricity_k112, 0.002); end
  def test_electricity_l112; assert_in_epsilon(2045.0, worksheet.electricity_l112, 0.002); end
  def test_electricity_m112; assert_in_epsilon(2050.0, worksheet.electricity_m112, 0.002); end
  def test_electricity_d113; assert_equal("Biogas generation", worksheet.electricity_d113.to_s.gsub(/[\n\r]+/,'')); end
  def test_electricity_e113; assert_in_delta(0.011658542637987478, worksheet.electricity_e113, 0.002); end
  def test_electricity_f113; assert_in_delta(0.012231015408970274, worksheet.electricity_f113, 0.002); end
  def test_electricity_g113; assert_in_delta(0.01333081070393154, worksheet.electricity_g113, 0.002); end
  def test_electricity_h113; assert_in_delta(0.014366795659524076, worksheet.electricity_h113, 0.002); end
  def test_electricity_i113; assert_in_delta(0.015269963982040119, worksheet.electricity_i113, 0.002); end
  def test_electricity_j113; assert_in_delta(0.016050638114115168, worksheet.electricity_j113, 0.002); end
  def test_electricity_k113; assert_in_delta(0.016721196284195564, worksheet.electricity_k113, 0.002); end
  def test_electricity_l113; assert_in_delta(0.01728713046199693, worksheet.electricity_l113, 0.002); end
  def test_electricity_m113; assert_in_delta(0.017751841917230612, worksheet.electricity_m113, 0.002); end
  def test_electricity_d114; assert_equal("National grid", worksheet.electricity_d114.to_s.gsub(/[\n\r]+/,'')); end
  def test_electricity_e114; assert_in_delta(0.46598329669071625, worksheet.electricity_e114, 0.002); end
  def test_electricity_f114; assert_in_delta(0.37797963624764847, worksheet.electricity_f114, 0.002); end
  def test_electricity_g114; assert_in_delta(0.32607806669424544, worksheet.electricity_g114, 0.002); end
  def test_electricity_h114; assert_in_delta(0.2607144395095217, worksheet.electricity_h114, 0.002); end
  def test_electricity_i114; assert_in_delta(0.1863687644677232, worksheet.electricity_i114, 0.002); end
  def test_electricity_j114; assert_in_delta(0.09896982504115093, worksheet.electricity_j114, 0.002); end
  def test_electricity_k114; assert_in_delta(0.09536983432131982, worksheet.electricity_k114, 0.002); end
  def test_electricity_l114; assert_in_delta(0.09030061699009902, worksheet.electricity_l114, 0.002); end
  def test_electricity_m114; assert_in_delta(0.08861670157475796, worksheet.electricity_m114, 0.002); end
  def test_electricity_d115; assert_equal("Bioenergy credit", worksheet.electricity_d115.to_s.gsub(/[\n\r]+/,'')); end
  def test_electricity_e115; assert_in_delta(-0.011606790751759494, worksheet.electricity_e115, 0.002); end
  def test_electricity_f115; assert_in_delta(-0.012176722334994176, worksheet.electricity_f115, 0.002); end
  def test_electricity_g115; assert_in_delta(-0.013271635674916443, worksheet.electricity_g115, 0.002); end
  def test_electricity_h115; assert_in_delta(-0.014303021927461737, worksheet.electricity_h115, 0.002); end
  def test_electricity_i115; assert_in_delta(-0.015202181115583975, worksheet.electricity_i115, 0.002); end
  def test_electricity_j115; assert_in_delta(-0.015979389860936274, worksheet.electricity_j115, 0.002); end
  def test_electricity_k115; assert_in_delta(-0.016646971445417186, worksheet.electricity_k115, 0.002); end
  def test_electricity_l115; assert_in_delta(-0.017210393460069903, worksheet.electricity_l115, 0.002); end
  def test_electricity_m115; assert_in_delta(-0.017673042076481713, worksheet.electricity_m115, 0.002); end
  def test_electricity_d116; assert_equal("Total", worksheet.electricity_d116.to_s.gsub(/[\n\r]+/,'')); end
  def test_electricity_e116; assert_in_delta(0.4660350485769442, worksheet.electricity_e116, 0.002); end
  def test_electricity_f116; assert_in_delta(0.37803392932162455, worksheet.electricity_f116, 0.002); end
  def test_electricity_g116; assert_in_delta(0.32613724172326053, worksheet.electricity_g116, 0.002); end
  def test_electricity_h116; assert_in_delta(0.26077821324158407, worksheet.electricity_h116, 0.002); end
  def test_electricity_i116; assert_in_delta(0.18643654733417936, worksheet.electricity_i116, 0.002); end
  def test_electricity_j116; assert_in_delta(0.09904107329432982, worksheet.electricity_j116, 0.002); end
  def test_electricity_k116; assert_in_delta(0.0954440591600982, worksheet.electricity_k116, 0.002); end
  def test_electricity_l116; assert_in_delta(0.09037735399202605, worksheet.electricity_l116, 0.002); end
  def test_electricity_m116; assert_in_delta(0.08869550141550686, worksheet.electricity_m116, 0.002); end
  def test_electricity_d45; assert_equal("Sector", worksheet.electricity_d45.to_s.gsub(/[\n\r]+/,'')); end
  def test_electricity_e45; assert_in_epsilon(2012.0, worksheet.electricity_e45, 0.002); end
  def test_electricity_f45; assert_in_epsilon(2015.0, worksheet.electricity_f45, 0.002); end
  def test_electricity_g45; assert_in_epsilon(2020.0, worksheet.electricity_g45, 0.002); end
  def test_electricity_h45; assert_in_epsilon(2025.0, worksheet.electricity_h45, 0.002); end
  def test_electricity_i45; assert_in_epsilon(2030.0, worksheet.electricity_i45, 0.002); end
  def test_electricity_j45; assert_in_epsilon(2035.0, worksheet.electricity_j45, 0.002); end
  def test_electricity_k45; assert_in_epsilon(2040.0, worksheet.electricity_k45, 0.002); end
  def test_electricity_l45; assert_in_epsilon(2045.0, worksheet.electricity_l45, 0.002); end
  def test_electricity_m45; assert_in_epsilon(2050.0, worksheet.electricity_m45, 0.002); end
  def test_electricity_d46; assert_equal("Conventional", worksheet.electricity_d46.to_s.gsub(/[\n\r]+/,'')); end
  def test_electricity_e46; assert_in_epsilon(14.508488439699367, worksheet.electricity_e46, 0.002); end
  def test_electricity_f46; assert_in_epsilon(15.22090291874272, worksheet.electricity_f46, 0.002); end
  def test_electricity_g46; assert_in_epsilon(16.589544593645552, worksheet.electricity_g46, 0.002); end
  def test_electricity_h46; assert_in_epsilon(17.87877740932717, worksheet.electricity_h46, 0.002); end
  def test_electricity_i46; assert_in_epsilon(19.00272639447997, worksheet.electricity_i46, 0.002); end
  def test_electricity_j46; assert_in_epsilon(19.974237326170343, worksheet.electricity_j46, 0.002); end
  def test_electricity_k46; assert_in_epsilon(20.808714306771485, worksheet.electricity_k46, 0.002); end
  def test_electricity_l46; assert_in_epsilon(21.51299182508738, worksheet.electricity_l46, 0.002); end
  def test_electricity_m46; assert_in_epsilon(22.091302595602144, worksheet.electricity_m46, 0.002); end
  def test_electricity_d47; assert_equal("CCS Power [UNUSED]", worksheet.electricity_d47.to_s.gsub(/[\n\r]+/,'')); end
  def test_electricity_e47; assert_in_delta(0.0, (worksheet.electricity_e47||0), 0.002); end
  def test_electricity_f47; assert_in_delta(0.0, (worksheet.electricity_f47||0), 0.002); end
  def test_electricity_g47; assert_in_delta(0.0, (worksheet.electricity_g47||0), 0.002); end
  def test_electricity_h47; assert_in_delta(0.0, (worksheet.electricity_h47||0), 0.002); end
  def test_electricity_i47; assert_in_delta(0.0, (worksheet.electricity_i47||0), 0.002); end
  def test_electricity_j47; assert_in_delta(0.0, (worksheet.electricity_j47||0), 0.002); end
  def test_electricity_k47; assert_in_delta(0.0, (worksheet.electricity_k47||0), 0.002); end
  def test_electricity_l47; assert_in_delta(0.0, (worksheet.electricity_l47||0), 0.002); end
  def test_electricity_m47; assert_in_delta(0.0, (worksheet.electricity_m47||0), 0.002); end
  def test_electricity_d48; assert_equal("Nuclear power [UNUSED]", worksheet.electricity_d48.to_s.gsub(/[\n\r]+/,'')); end
  def test_electricity_e48; assert_in_delta(0.0, (worksheet.electricity_e48||0), 0.002); end
  def test_electricity_f48; assert_in_delta(0.0, (worksheet.electricity_f48||0), 0.002); end
  def test_electricity_g48; assert_in_delta(0.0, (worksheet.electricity_g48||0), 0.002); end
  def test_electricity_h48; assert_in_delta(0.0, (worksheet.electricity_h48||0), 0.002); end
  def test_electricity_i48; assert_in_delta(0.0, (worksheet.electricity_i48||0), 0.002); end
  def test_electricity_j48; assert_in_delta(0.0, (worksheet.electricity_j48||0), 0.002); end
  def test_electricity_k48; assert_in_delta(0.0, (worksheet.electricity_k48||0), 0.002); end
  def test_electricity_l48; assert_in_delta(0.0, (worksheet.electricity_l48||0), 0.002); end
  def test_electricity_m48; assert_in_delta(0.0, (worksheet.electricity_m48||0), 0.002); end
  def test_electricity_d49; assert_equal("Onshore wind", worksheet.electricity_d49.to_s.gsub(/[\n\r]+/,'')); end
  def test_electricity_e49; assert_in_delta(0.0, (worksheet.electricity_e49||0), 0.002); end
  def test_electricity_f49; assert_in_delta(0.0, (worksheet.electricity_f49||0), 0.002); end
  def test_electricity_g49; assert_in_delta(0.0, (worksheet.electricity_g49||0), 0.002); end
  def test_electricity_h49; assert_in_delta(0.0, (worksheet.electricity_h49||0), 0.002); end
  def test_electricity_i49; assert_in_delta(0.0, (worksheet.electricity_i49||0), 0.002); end
  def test_electricity_j49; assert_in_delta(0.0, (worksheet.electricity_j49||0), 0.002); end
  def test_electricity_k49; assert_in_delta(0.0, (worksheet.electricity_k49||0), 0.002); end
  def test_electricity_l49; assert_in_delta(0.0, (worksheet.electricity_l49||0), 0.002); end
  def test_electricity_m49; assert_in_delta(0.0, (worksheet.electricity_m49||0), 0.002); end
  def test_electricity_d50; assert_equal("Offshore wind [UNUSED]", worksheet.electricity_d50.to_s.gsub(/[\n\r]+/,'')); end
  def test_electricity_e50; assert_in_delta(0.0, (worksheet.electricity_e50||0), 0.002); end
  def test_electricity_f50; assert_in_delta(0.0, (worksheet.electricity_f50||0), 0.002); end
  def test_electricity_g50; assert_in_delta(0.0, (worksheet.electricity_g50||0), 0.002); end
  def test_electricity_h50; assert_in_delta(0.0, (worksheet.electricity_h50||0), 0.002); end
  def test_electricity_i50; assert_in_delta(0.0, (worksheet.electricity_i50||0), 0.002); end
  def test_electricity_j50; assert_in_delta(0.0, (worksheet.electricity_j50||0), 0.002); end
  def test_electricity_k50; assert_in_delta(0.0, (worksheet.electricity_k50||0), 0.002); end
  def test_electricity_l50; assert_in_delta(0.0, (worksheet.electricity_l50||0), 0.002); end
  def test_electricity_m50; assert_in_delta(0.0, (worksheet.electricity_m50||0), 0.002); end
  def test_electricity_d51; assert_equal("Hydro power", worksheet.electricity_d51.to_s.gsub(/[\n\r]+/,'')); end
  def test_electricity_e51; assert_in_delta(0.0, (worksheet.electricity_e51||0), 0.002); end
  def test_electricity_f51; assert_in_delta(0.0, (worksheet.electricity_f51||0), 0.002); end
  def test_electricity_g51; assert_in_delta(0.0, (worksheet.electricity_g51||0), 0.002); end
  def test_electricity_h51; assert_in_delta(0.0, (worksheet.electricity_h51||0), 0.002); end
  def test_electricity_i51; assert_in_delta(0.0, (worksheet.electricity_i51||0), 0.002); end
  def test_electricity_j51; assert_in_delta(0.0, (worksheet.electricity_j51||0), 0.002); end
  def test_electricity_k51; assert_in_delta(0.0, (worksheet.electricity_k51||0), 0.002); end
  def test_electricity_l51; assert_in_delta(0.0, (worksheet.electricity_l51||0), 0.002); end
  def test_electricity_m51; assert_in_delta(0.0, (worksheet.electricity_m51||0), 0.002); end
  def test_electricity_d52; assert_equal("Tidal & Wave", worksheet.electricity_d52.to_s.gsub(/[\n\r]+/,'')); end
  def test_electricity_e52; assert_in_delta(0.0, (worksheet.electricity_e52||0), 0.002); end
  def test_electricity_f52; assert_in_delta(0.0, (worksheet.electricity_f52||0), 0.002); end
  def test_electricity_g52; assert_in_delta(0.0, (worksheet.electricity_g52||0), 0.002); end
  def test_electricity_h52; assert_in_delta(0.0, (worksheet.electricity_h52||0), 0.002); end
  def test_electricity_i52; assert_in_delta(0.0, (worksheet.electricity_i52||0), 0.002); end
  def test_electricity_j52; assert_in_delta(0.0, (worksheet.electricity_j52||0), 0.002); end
  def test_electricity_k52; assert_in_delta(0.0, (worksheet.electricity_k52||0), 0.002); end
  def test_electricity_l52; assert_in_delta(0.0, (worksheet.electricity_l52||0), 0.002); end
  def test_electricity_m52; assert_in_delta(0.0, (worksheet.electricity_m52||0), 0.002); end
  def test_electricity_d53; assert_equal("Geothermal electricity [UNUSED]", worksheet.electricity_d53.to_s.gsub(/[\n\r]+/,'')); end
  def test_electricity_e53; assert_in_delta(0.0, (worksheet.electricity_e53||0), 0.002); end
  def test_electricity_f53; assert_in_delta(0.0, (worksheet.electricity_f53||0), 0.002); end
  def test_electricity_g53; assert_in_delta(0.0, (worksheet.electricity_g53||0), 0.002); end
  def test_electricity_h53; assert_in_delta(0.0, (worksheet.electricity_h53||0), 0.002); end
  def test_electricity_i53; assert_in_delta(0.0, (worksheet.electricity_i53||0), 0.002); end
  def test_electricity_j53; assert_in_delta(0.0, (worksheet.electricity_j53||0), 0.002); end
  def test_electricity_k53; assert_in_delta(0.0, (worksheet.electricity_k53||0), 0.002); end
  def test_electricity_l53; assert_in_delta(0.0, (worksheet.electricity_l53||0), 0.002); end
  def test_electricity_m53; assert_in_delta(0.0, (worksheet.electricity_m53||0), 0.002); end
  def test_electricity_d54; assert_equal("Solar PV", worksheet.electricity_d54.to_s.gsub(/[\n\r]+/,'')); end
  def test_electricity_e54; assert_in_delta(0.214093779966, worksheet.electricity_e54, 0.002); end
  def test_electricity_f54; assert_in_epsilon(2.47111155648, worksheet.electricity_f54, 0.002); end
  def test_electricity_g54; assert_in_epsilon(8.619745426200002, worksheet.electricity_g54, 0.002); end
  def test_electricity_h54; assert_in_epsilon(13.570481990700003, worksheet.electricity_h54, 0.002); end
  def test_electricity_i54; assert_in_epsilon(18.7524095328, worksheet.electricity_i54, 0.002); end
  def test_electricity_j54; assert_in_epsilon(24.0991387515, worksheet.electricity_j54, 0.002); end
  def test_electricity_k54; assert_in_epsilon(29.564978186699996, worksheet.electricity_k54, 0.002); end
  def test_electricity_l54; assert_in_epsilon(35.082757486800006, worksheet.electricity_l54, 0.002); end
  def test_electricity_m54; assert_in_epsilon(40.5892115532, worksheet.electricity_m54, 0.002); end
  def test_electricity_d55; assert_equal("Electricity imports from national grid", worksheet.electricity_d55.to_s.gsub(/[\n\r]+/,'')); end
  def test_electricity_e55; assert_in_epsilon(2987.0724146840785, worksheet.electricity_e55, 0.002); end
  def test_electricity_f55; assert_in_epsilon(3073.005172745109, worksheet.electricity_f55, 0.002); end
  def test_electricity_g55; assert_in_epsilon(3260.7806669424544, worksheet.electricity_g55, 0.002); end
  def test_electricity_h55; assert_in_epsilon(3476.1925267936226, worksheet.electricity_h55, 0.002); end
  def test_electricity_i55; assert_in_epsilon(3727.3752893544643, worksheet.electricity_i55, 0.002); end
  def test_electricity_j55; assert_in_epsilon(3958.793001646037, worksheet.electricity_j55, 0.002); end
  def test_electricity_k55; assert_in_epsilon(4146.514535709557, worksheet.electricity_k55, 0.002); end
  def test_electricity_l55; assert_in_epsilon(4300.029380480905, worksheet.electricity_l55, 0.002); end
  def test_electricity_m55; assert_in_epsilon(4430.835078737898, worksheet.electricity_m55, 0.002); end
  def test_electricity_d56; assert_equal("Total", worksheet.electricity_d56.to_s.gsub(/[\n\r]+/,'')); end
  def test_electricity_e56; assert_in_epsilon(3001.794996903744, worksheet.electricity_e56, 0.002); end
  def test_electricity_f56; assert_in_epsilon(3090.6971872203317, worksheet.electricity_f56, 0.002); end
  def test_electricity_g56; assert_in_epsilon(3285.9899569623, worksheet.electricity_g56, 0.002); end
  def test_electricity_h56; assert_in_epsilon(3507.6417861936498, worksheet.electricity_h56, 0.002); end
  def test_electricity_i56; assert_in_epsilon(3765.130425281744, worksheet.electricity_i56, 0.002); end
  def test_electricity_j56; assert_in_epsilon(4002.866377723707, worksheet.electricity_j56, 0.002); end
  def test_electricity_k56; assert_in_epsilon(4196.888228203028, worksheet.electricity_k56, 0.002); end
  def test_electricity_l56; assert_in_epsilon(4356.625129792793, worksheet.electricity_l56, 0.002); end
  def test_electricity_m56; assert_in_epsilon(4493.5155928867, worksheet.electricity_m56, 0.002); end
  def test_output_emissions_f31; assert_in_epsilon(1.0313275855144945, worksheet.output_emissions_f31, 0.002); end
  def test_energy_d17; assert_equal("Vector", worksheet.energy_d17.to_s.gsub(/[\n\r]+/,'')); end
  def test_energy_e17; assert_equal("2012", worksheet.energy_e17.to_s.gsub(/[\n\r]+/,'')); end
  def test_energy_f17; assert_in_epsilon(2015.0, worksheet.energy_f17, 0.002); end
  def test_energy_g17; assert_in_epsilon(2020.0, worksheet.energy_g17, 0.002); end
  def test_energy_h17; assert_in_epsilon(2025.0, worksheet.energy_h17, 0.002); end
  def test_energy_i17; assert_in_epsilon(2030.0, worksheet.energy_i17, 0.002); end
  def test_energy_j17; assert_in_epsilon(2035.0, worksheet.energy_j17, 0.002); end
  def test_energy_k17; assert_in_epsilon(2040.0, worksheet.energy_k17, 0.002); end
  def test_energy_l17; assert_in_epsilon(2045.0, worksheet.energy_l17, 0.002); end
  def test_energy_m17; assert_in_epsilon(2050.0, worksheet.energy_m17, 0.002); end
  def test_energy_d18; assert_equal("Transport", worksheet.energy_d18.to_s.gsub(/[\n\r]+/,'')); end
  def test_energy_e18; assert_in_epsilon(5185.005561780823, worksheet.energy_e18, 0.002); end
  def test_energy_f18; assert_in_epsilon(5218.447061686419, worksheet.energy_f18, 0.002); end
  def test_energy_g18; assert_in_epsilon(5500.199865778883, worksheet.energy_g18, 0.002); end
  def test_energy_h18; assert_in_epsilon(5358.04661325354, worksheet.energy_h18, 0.002); end
  def test_energy_i18; assert_in_epsilon(4635.578563398951, worksheet.energy_i18, 0.002); end
  def test_energy_j18; assert_in_epsilon(3789.8152258304194, worksheet.energy_j18, 0.002); end
  def test_energy_k18; assert_in_epsilon(3027.0187144286156, worksheet.energy_k18, 0.002); end
  def test_energy_l18; assert_in_epsilon(2606.147745304606, worksheet.energy_l18, 0.002); end
  def test_energy_m18; assert_in_epsilon(2151.811826797989, worksheet.energy_m18, 0.002); end
  def test_energy_d19; assert_equal("Industry", worksheet.energy_d19.to_s.gsub(/[\n\r]+/,'')); end
  def test_energy_e19; assert_in_epsilon(2112.6765528258634, worksheet.energy_e19, 0.002); end
  def test_energy_f19; assert_in_epsilon(2112.400249918263, worksheet.energy_f19, 0.002); end
  def test_energy_g19; assert_in_epsilon(2129.665758867159, worksheet.energy_g19, 0.002); end
  def test_energy_h19; assert_in_epsilon(2165.7057375641625, worksheet.energy_h19, 0.002); end
  def test_energy_i19; assert_in_epsilon(2137.154702188106, worksheet.energy_i19, 0.002); end
  def test_energy_j19; assert_in_epsilon(2097.1340693889533, worksheet.energy_j19, 0.002); end
  def test_energy_k19; assert_in_epsilon(2070.850700195455, worksheet.energy_k19, 0.002); end
  def test_energy_l19; assert_in_epsilon(2086.9081166063374, worksheet.energy_l19, 0.002); end
  def test_energy_m19; assert_in_epsilon(2067.0518831200143, worksheet.energy_m19, 0.002); end
  def test_energy_d20; assert_equal("Heating & cooling", worksheet.energy_d20.to_s.gsub(/[\n\r]+/,'')); end
  def test_energy_e20; assert_in_epsilon(2272.665669413425, worksheet.energy_e20, 0.002); end
  def test_energy_f20; assert_in_epsilon(2353.90732310535, worksheet.energy_f20, 0.002); end
  def test_energy_g20; assert_in_epsilon(2489.1551750352696, worksheet.energy_g20, 0.002); end
  def test_energy_h20; assert_in_epsilon(2584.9124741754645, worksheet.energy_h20, 0.002); end
  def test_energy_i20; assert_in_epsilon(2663.4481347981773, worksheet.energy_i20, 0.002); end
  def test_energy_j20; assert_in_epsilon(2727.660803157485, worksheet.energy_j20, 0.002); end
  def test_energy_k20; assert_in_epsilon(2778.885441577627, worksheet.energy_k20, 0.002); end
  def test_energy_l20; assert_in_epsilon(2816.7568286432397, worksheet.energy_l20, 0.002); end
  def test_energy_m20; assert_in_epsilon(2841.274964354324, worksheet.energy_m20, 0.002); end
  def test_energy_d21; assert_equal("Lighting & appliances", worksheet.energy_d21.to_s.gsub(/[\n\r]+/,'')); end
  def test_energy_e21; assert_in_epsilon(1626.0946184000002, worksheet.energy_e21, 0.002); end
  def test_energy_f21; assert_in_epsilon(1682.156449744555, worksheet.energy_f21, 0.002); end
  def test_energy_g21; assert_in_epsilon(1777.5772182832213, worksheet.energy_g21, 0.002); end
  def test_energy_h21; assert_in_epsilon(1844.3493412087585, worksheet.energy_h21, 0.002); end
  def test_energy_i21; assert_in_epsilon(1898.963901529042, worksheet.energy_i21, 0.002); end
  def test_energy_j21; assert_in_epsilon(1943.513548981205, worksheet.energy_j21, 0.002); end
  def test_energy_k21; assert_in_epsilon(1978.749776361008, worksheet.energy_k21, 0.002); end
  def test_energy_l21; assert_in_epsilon(2004.4407256684508, worksheet.energy_l21, 0.002); end
  def test_energy_m21; assert_in_epsilon(2020.5863969035338, worksheet.energy_m21, 0.002); end
  def test_energy_d22; assert_equal("Total", worksheet.energy_d22.to_s.gsub(/[\n\r]+/,'')); end
  def test_energy_e22; assert_in_epsilon(11196.442402420113, worksheet.energy_e22, 0.002); end
  def test_energy_f22; assert_in_epsilon(11366.911084454587, worksheet.energy_f22, 0.002); end
  def test_energy_g22; assert_in_epsilon(11896.598017964532, worksheet.energy_g22, 0.002); end
  def test_energy_h22; assert_in_epsilon(11953.014166201927, worksheet.energy_h22, 0.002); end
  def test_energy_i22; assert_in_epsilon(11335.145301914275, worksheet.energy_i22, 0.002); end
  def test_energy_j22; assert_in_epsilon(10558.123647358063, worksheet.energy_j22, 0.002); end
  def test_energy_k22; assert_in_epsilon(9855.504632562705, worksheet.energy_k22, 0.002); end
  def test_energy_l22; assert_in_epsilon(9514.253416222633, worksheet.energy_l22, 0.002); end
  def test_energy_m22; assert_in_epsilon(9080.72507117586, worksheet.energy_m22, 0.002); end
  def test_energy_d58; assert_equal("Vector", worksheet.energy_d58.to_s.gsub(/[\n\r]+/,'')); end
  def test_energy_e58; assert_equal("2012", worksheet.energy_e58.to_s.gsub(/[\n\r]+/,'')); end
  def test_energy_f58; assert_in_epsilon(2015.0, worksheet.energy_f58, 0.002); end
  def test_energy_g58; assert_in_epsilon(2020.0, worksheet.energy_g58, 0.002); end
  def test_energy_h58; assert_in_epsilon(2025.0, worksheet.energy_h58, 0.002); end
  def test_energy_i58; assert_in_epsilon(2030.0, worksheet.energy_i58, 0.002); end
  def test_energy_j58; assert_in_epsilon(2035.0, worksheet.energy_j58, 0.002); end
  def test_energy_k58; assert_in_epsilon(2040.0, worksheet.energy_k58, 0.002); end
  def test_energy_l58; assert_in_epsilon(2045.0, worksheet.energy_l58, 0.002); end
  def test_energy_m58; assert_in_epsilon(2050.0, worksheet.energy_m58, 0.002); end
  def test_energy_d59; assert_equal("UK Gas", worksheet.energy_d59.to_s.gsub(/[\n\r]+/,'')); end
  def test_energy_e59; assert_in_delta(0.0, (worksheet.energy_e59||0), 0.002); end
  def test_energy_f59; assert_in_delta(0.0, (worksheet.energy_f59||0), 0.002); end
  def test_energy_g59; assert_in_delta(0.0, (worksheet.energy_g59||0), 0.002); end
  def test_energy_h59; assert_in_delta(0.0, (worksheet.energy_h59||0), 0.002); end
  def test_energy_i59; assert_in_delta(0.0, (worksheet.energy_i59||0), 0.002); end
  def test_energy_j59; assert_in_delta(0.0, (worksheet.energy_j59||0), 0.002); end
  def test_energy_k59; assert_in_delta(0.0, (worksheet.energy_k59||0), 0.002); end
  def test_energy_l59; assert_in_delta(0.0, (worksheet.energy_l59||0), 0.002); end
  def test_energy_m59; assert_in_delta(0.0, (worksheet.energy_m59||0), 0.002); end
  def test_energy_d60; assert_equal("Imported Gas", worksheet.energy_d60.to_s.gsub(/[\n\r]+/,'')); end
  def test_energy_e60; assert_in_epsilon(1430.614664342593, worksheet.energy_e60, 0.002); end
  def test_energy_f60; assert_in_epsilon(1456.267079044218, worksheet.energy_f60, 0.002); end
  def test_energy_g60; assert_in_epsilon(1457.9861849494096, worksheet.energy_g60, 0.002); end
  def test_energy_h60; assert_in_epsilon(1445.395798188943, worksheet.energy_h60, 0.002); end
  def test_energy_i60; assert_in_epsilon(1427.0318850842575, worksheet.energy_i60, 0.002); end
  def test_energy_j60; assert_in_epsilon(1370.4259102428077, worksheet.energy_j60, 0.002); end
  def test_energy_k60; assert_in_epsilon(1309.4395363350611, worksheet.energy_k60, 0.002); end
  def test_energy_l60; assert_in_epsilon(1244.0042246515577, worksheet.energy_l60, 0.002); end
  def test_energy_m60; assert_in_epsilon(1174.1356174704265, worksheet.energy_m60, 0.002); end
  def test_energy_d61; assert_equal("UK Oil", worksheet.energy_d61.to_s.gsub(/[\n\r]+/,'')); end
  def test_energy_e61; assert_in_delta(0.0, (worksheet.energy_e61||0), 0.002); end
  def test_energy_f61; assert_in_delta(0.0, (worksheet.energy_f61||0), 0.002); end
  def test_energy_g61; assert_in_delta(0.0, (worksheet.energy_g61||0), 0.002); end
  def test_energy_h61; assert_in_delta(0.0, (worksheet.energy_h61||0), 0.002); end
  def test_energy_i61; assert_in_delta(0.0, (worksheet.energy_i61||0), 0.002); end
  def test_energy_j61; assert_in_delta(0.0, (worksheet.energy_j61||0), 0.002); end
  def test_energy_k61; assert_in_delta(0.0, (worksheet.energy_k61||0), 0.002); end
  def test_energy_l61; assert_in_delta(0.0, (worksheet.energy_l61||0), 0.002); end
  def test_energy_m61; assert_in_delta(0.0, (worksheet.energy_m61||0), 0.002); end
  def test_energy_d62; assert_equal("Imported Oil", worksheet.energy_d62.to_s.gsub(/[\n\r]+/,'')); end
  def test_energy_e62; assert_in_epsilon(5583.968924946566, worksheet.energy_e62, 0.002); end
  def test_energy_f62; assert_in_epsilon(5616.186866296027, worksheet.energy_f62, 0.002); end
  def test_energy_g62; assert_in_epsilon(5886.174177279776, worksheet.energy_g62, 0.002); end
  def test_energy_h62; assert_in_epsilon(5329.24656902558, worksheet.energy_h62, 0.002); end
  def test_energy_i62; assert_in_epsilon(4056.4442051237993, worksheet.energy_i62, 0.002); end
  def test_energy_j62; assert_in_epsilon(2661.7047835272333, worksheet.energy_j62, 0.002); end
  def test_energy_k62; assert_in_epsilon(1387.481236141547, worksheet.energy_k62, 0.002); end
  def test_energy_l62; assert_in_epsilon(517.0489044248134, worksheet.energy_l62, 0.002); end
  def test_energy_m62; assert_in_delta(0.0, (worksheet.energy_m62||0), 0.002); end
  def test_energy_d63; assert_equal("UK Coal", worksheet.energy_d63.to_s.gsub(/[\n\r]+/,'')); end
  def test_energy_e63; assert_in_delta(0.0, (worksheet.energy_e63||0), 0.002); end
  def test_energy_f63; assert_in_delta(0.0, (worksheet.energy_f63||0), 0.002); end
  def test_energy_g63; assert_in_delta(0.0, (worksheet.energy_g63||0), 0.002); end
  def test_energy_h63; assert_in_delta(0.0, (worksheet.energy_h63||0), 0.002); end
  def test_energy_i63; assert_in_delta(0.0, (worksheet.energy_i63||0), 0.002); end
  def test_energy_j63; assert_in_delta(0.0, (worksheet.energy_j63||0), 0.002); end
  def test_energy_k63; assert_in_delta(0.0, (worksheet.energy_k63||0), 0.002); end
  def test_energy_l63; assert_in_delta(0.0, (worksheet.energy_l63||0), 0.002); end
  def test_energy_m63; assert_in_delta(0.0, (worksheet.energy_m63||0), 0.002); end
  def test_energy_d64; assert_equal("Imported Coal", worksheet.energy_d64.to_s.gsub(/[\n\r]+/,'')); end
  def test_energy_e64; assert_in_epsilon(54.67677763831769, worksheet.energy_e64, 0.002); end
  def test_energy_f64; assert_in_epsilon(56.27203144190709, worksheet.energy_f64, 0.002); end
  def test_energy_g64; assert_in_epsilon(59.29131976164692, worksheet.energy_g64, 0.002); end
  def test_energy_h64; assert_in_epsilon(61.2921832608632, worksheet.energy_h64, 0.002); end
  def test_energy_i64; assert_in_epsilon(62.90732634459812, worksheet.energy_i64, 0.002); end
  def test_energy_j64; assert_in_epsilon(64.20973092418254, worksheet.energy_j64, 0.002); end
  def test_energy_k64; assert_in_epsilon(65.19610484818995, worksheet.energy_k64, 0.002); end
  def test_energy_l64; assert_in_epsilon(65.86278285990707, worksheet.energy_l64, 0.002); end
  def test_energy_m64; assert_in_epsilon(66.20976495933392, worksheet.energy_m64, 0.002); end
  def test_energy_d65; assert_equal("UK Bioenergy", worksheet.energy_d65.to_s.gsub(/[\n\r]+/,'')); end
  def test_energy_e65; assert_in_epsilon(463.193384520432, worksheet.energy_e65, 0.002); end
  def test_energy_f65; assert_in_epsilon(364.12733877714226, worksheet.energy_f65, 0.002); end
  def test_energy_g65; assert_in_epsilon(656.4642547549807, worksheet.energy_g65, 0.002); end
  def test_energy_h65; assert_in_epsilon(1295.0234148231616, worksheet.energy_h65, 0.002); end
  def test_energy_i65; assert_in_epsilon(1018.0571495412173, worksheet.energy_i65, 0.002); end
  def test_energy_j65; assert_in_epsilon(589.1210101137841, worksheet.energy_j65, 0.002); end
  def test_energy_k65; assert_in_epsilon(373.1797708990065, worksheet.energy_k65, 0.002); end
  def test_energy_l65; assert_in_epsilon(782.9905470655974, worksheet.energy_l65, 0.002); end
  def test_energy_m65; assert_in_epsilon(680.3849417200094, worksheet.energy_m65, 0.002); end
  def test_energy_d66; assert_equal("Imported Bioenergy", worksheet.energy_d66.to_s.gsub(/[\n\r]+/,'')); end
  def test_energy_e66; assert_in_epsilon(372.4910967194163, worksheet.energy_e66, 0.002); end
  def test_energy_f66; assert_in_epsilon(479.2063334600729, worksheet.energy_f66, 0.002); end
  def test_energy_g66; assert_in_epsilon(245.20081779134034, worksheet.energy_g66, 0.002); end
  def test_energy_h66; assert_in_epsilon(31.215244281024468, worksheet.energy_h66, 0.002); end
  def test_energy_i66; assert_in_epsilon(700.962724112909, worksheet.energy_i66, 0.002); end
  def test_energy_j66; assert_in_epsilon(1537.8146525231978, worksheet.energy_j66, 0.002); end
  def test_energy_k66; assert_in_epsilon(2176.1919267670773, worksheet.energy_k66, 0.002); end
  def test_energy_l66; assert_in_epsilon(2218.38367483715, worksheet.energy_l66, 0.002); end
  def test_energy_m66; assert_in_epsilon(2330.976065276629, worksheet.energy_m66, 0.002); end
  def test_energy_d67; assert_equal("Nuclear fission", worksheet.energy_d67.to_s.gsub(/[\n\r]+/,'')); end
  def test_energy_e67; assert_in_delta(0.0, (worksheet.energy_e67||0), 0.002); end
  def test_energy_f67; assert_in_delta(0.0, (worksheet.energy_f67||0), 0.002); end
  def test_energy_g67; assert_in_delta(0.0, (worksheet.energy_g67||0), 0.002); end
  def test_energy_h67; assert_in_delta(0.0, (worksheet.energy_h67||0), 0.002); end
  def test_energy_i67; assert_in_delta(0.0, (worksheet.energy_i67||0), 0.002); end
  def test_energy_j67; assert_in_delta(0.0, (worksheet.energy_j67||0), 0.002); end
  def test_energy_k67; assert_in_delta(0.0, (worksheet.energy_k67||0), 0.002); end
  def test_energy_l67; assert_in_delta(0.0, (worksheet.energy_l67||0), 0.002); end
  def test_energy_m67; assert_in_delta(0.0, (worksheet.energy_m67||0), 0.002); end
  def test_energy_d68; assert_equal("Wind", worksheet.energy_d68.to_s.gsub(/[\n\r]+/,'')); end
  def test_energy_e68; assert_in_delta(0.0, (worksheet.energy_e68||0), 0.002); end
  def test_energy_f68; assert_in_delta(0.0, (worksheet.energy_f68||0), 0.002); end
  def test_energy_g68; assert_in_delta(0.0, (worksheet.energy_g68||0), 0.002); end
  def test_energy_h68; assert_in_delta(0.0, (worksheet.energy_h68||0), 0.002); end
  def test_energy_i68; assert_in_delta(0.0, (worksheet.energy_i68||0), 0.002); end
  def test_energy_j68; assert_in_delta(0.0, (worksheet.energy_j68||0), 0.002); end
  def test_energy_k68; assert_in_delta(0.0, (worksheet.energy_k68||0), 0.002); end
  def test_energy_l68; assert_in_delta(0.0, (worksheet.energy_l68||0), 0.002); end
  def test_energy_m68; assert_in_delta(0.0, (worksheet.energy_m68||0), 0.002); end
  def test_energy_d69; assert_equal("Solar", worksheet.energy_d69.to_s.gsub(/[\n\r]+/,'')); end
  def test_energy_e69; assert_in_epsilon(5.740151379966, worksheet.energy_e69, 0.002); end
  def test_energy_f69; assert_in_epsilon(8.238484356479999, worksheet.energy_f69, 0.002); end
  def test_energy_g69; assert_in_epsilon(14.7445550262, worksheet.energy_g69, 0.002); end
  def test_energy_h69; assert_in_epsilon(19.965032390700003, worksheet.energy_h69, 0.002); end
  def test_energy_i69; assert_in_epsilon(25.3713407328, worksheet.energy_i69, 0.002); end
  def test_energy_j69; assert_in_epsilon(30.9037435515, worksheet.energy_j69, 0.002); end
  def test_energy_k69; assert_in_epsilon(36.5241093867, worksheet.energy_k69, 0.002); end
  def test_energy_l69; assert_in_epsilon(42.163755886800004, worksheet.energy_l69, 0.002); end
  def test_energy_m69; assert_in_epsilon(47.7594179532, worksheet.energy_m69, 0.002); end
  def test_energy_d70; assert_equal("Tidal", worksheet.energy_d70.to_s.gsub(/[\n\r]+/,'')); end
  def test_energy_e70; assert_in_delta(0.0, (worksheet.energy_e70||0), 0.002); end
  def test_energy_f70; assert_in_delta(0.0, (worksheet.energy_f70||0), 0.002); end
  def test_energy_g70; assert_in_delta(0.0, (worksheet.energy_g70||0), 0.002); end
  def test_energy_h70; assert_in_delta(0.0, (worksheet.energy_h70||0), 0.002); end
  def test_energy_i70; assert_in_delta(0.0, (worksheet.energy_i70||0), 0.002); end
  def test_energy_j70; assert_in_delta(0.0, (worksheet.energy_j70||0), 0.002); end
  def test_energy_k70; assert_in_delta(0.0, (worksheet.energy_k70||0), 0.002); end
  def test_energy_l70; assert_in_delta(0.0, (worksheet.energy_l70||0), 0.002); end
  def test_energy_m70; assert_in_delta(0.0, (worksheet.energy_m70||0), 0.002); end
  def test_energy_d71; assert_equal("Wave", worksheet.energy_d71.to_s.gsub(/[\n\r]+/,'')); end
  def test_energy_e71; assert_in_delta(0.0, (worksheet.energy_e71||0), 0.002); end
  def test_energy_f71; assert_in_delta(0.0, (worksheet.energy_f71||0), 0.002); end
  def test_energy_g71; assert_in_delta(0.0, (worksheet.energy_g71||0), 0.002); end
  def test_energy_h71; assert_in_delta(0.0, (worksheet.energy_h71||0), 0.002); end
  def test_energy_i71; assert_in_delta(0.0, (worksheet.energy_i71||0), 0.002); end
  def test_energy_j71; assert_in_delta(0.0, (worksheet.energy_j71||0), 0.002); end
  def test_energy_k71; assert_in_delta(0.0, (worksheet.energy_k71||0), 0.002); end
  def test_energy_l71; assert_in_delta(0.0, (worksheet.energy_l71||0), 0.002); end
  def test_energy_m71; assert_in_delta(0.0, (worksheet.energy_m71||0), 0.002); end
  def test_energy_d72; assert_equal("Geothermal", worksheet.energy_d72.to_s.gsub(/[\n\r]+/,'')); end
  def test_energy_e72; assert_in_delta(0.0, (worksheet.energy_e72||0), 0.002); end
  def test_energy_f72; assert_in_delta(0.0, (worksheet.energy_f72||0), 0.002); end
  def test_energy_g72; assert_in_delta(0.0, (worksheet.energy_g72||0), 0.002); end
  def test_energy_h72; assert_in_delta(0.0, (worksheet.energy_h72||0), 0.002); end
  def test_energy_i72; assert_in_delta(0.0, (worksheet.energy_i72||0), 0.002); end
  def test_energy_j72; assert_in_delta(0.0, (worksheet.energy_j72||0), 0.002); end
  def test_energy_k72; assert_in_delta(0.0, (worksheet.energy_k72||0), 0.002); end
  def test_energy_l72; assert_in_delta(0.0, (worksheet.energy_l72||0), 0.002); end
  def test_energy_m72; assert_in_delta(0.0, (worksheet.energy_m72||0), 0.002); end
  def test_energy_d73; assert_equal("Hydro", worksheet.energy_d73.to_s.gsub(/[\n\r]+/,'')); end
  def test_energy_e73; assert_in_delta(0.0, (worksheet.energy_e73||0), 0.002); end
  def test_energy_f73; assert_in_delta(0.0, (worksheet.energy_f73||0), 0.002); end
  def test_energy_g73; assert_in_delta(0.0, (worksheet.energy_g73||0), 0.002); end
  def test_energy_h73; assert_in_delta(0.0, (worksheet.energy_h73||0), 0.002); end
  def test_energy_i73; assert_in_delta(0.0, (worksheet.energy_i73||0), 0.002); end
  def test_energy_j73; assert_in_delta(0.0, (worksheet.energy_j73||0), 0.002); end
  def test_energy_k73; assert_in_delta(0.0, (worksheet.energy_k73||0), 0.002); end
  def test_energy_l73; assert_in_delta(0.0, (worksheet.energy_l73||0), 0.002); end
  def test_energy_m73; assert_in_delta(0.0, (worksheet.energy_m73||0), 0.002); end
  def test_energy_d74; assert_equal("Electricity imports", worksheet.energy_d74.to_s.gsub(/[\n\r]+/,'')); end
  def test_energy_e74; assert_in_epsilon(2987.0724146840785, worksheet.energy_e74, 0.002); end
  def test_energy_f74; assert_in_epsilon(3073.005172745109, worksheet.energy_f74, 0.002); end
  def test_energy_g74; assert_in_epsilon(3260.7806669424544, worksheet.energy_g74, 0.002); end
  def test_energy_h74; assert_in_epsilon(3476.1925267936226, worksheet.energy_h74, 0.002); end
  def test_energy_i74; assert_in_epsilon(3727.3752893544643, worksheet.energy_i74, 0.002); end
  def test_energy_j74; assert_in_epsilon(3958.793001646037, worksheet.energy_j74, 0.002); end
  def test_energy_k74; assert_in_epsilon(4146.514535709558, worksheet.energy_k74, 0.002); end
  def test_energy_l74; assert_in_epsilon(4300.029380480905, worksheet.energy_l74, 0.002); end
  def test_energy_m74; assert_in_epsilon(4430.835078737898, worksheet.energy_m74, 0.002); end
  def test_energy_d75; assert_equal("Environmental heat", worksheet.energy_d75.to_s.gsub(/[\n\r]+/,'')); end
  def test_energy_e75; assert_in_epsilon(367.2625342694737, worksheet.energy_e75, 0.002); end
  def test_energy_f75; assert_in_epsilon(379.46218919203193, worksheet.energy_f75, 0.002); end
  def test_energy_g75; assert_in_epsilon(400.7117416200602, worksheet.energy_g75, 0.002); end
  def test_energy_h75; assert_in_epsilon(415.40291485186384, worksheet.energy_h75, 0.002); end
  def test_energy_i75; assert_in_epsilon(427.3850347669688, worksheet.energy_i75, 0.002); end
  def test_energy_j75; assert_in_epsilon(437.1349126169333, worksheet.energy_j75, 0.002); end
  def test_energy_k75; assert_in_epsilon(444.7767240678006, worksheet.energy_k75, 0.002); end
  def test_energy_l75; assert_in_epsilon(450.26469125641273, worksheet.energy_l75, 0.002); end
  def test_energy_m75; assert_in_epsilon(453.59881418276984, worksheet.energy_m75, 0.002); end
  def test_energy_d76; assert_equal("Total used in UK", worksheet.energy_d76.to_s.gsub(/[\n\r]+/,'')); end
  def test_energy_e76; assert_in_epsilon(11265.019948500843, worksheet.energy_e76, 0.002); end
  def test_energy_f76; assert_in_epsilon(11432.76549531299, worksheet.energy_f76, 0.002); end
  def test_energy_g76; assert_in_epsilon(11981.353718125869, worksheet.energy_g76, 0.002); end
  def test_energy_h76; assert_in_epsilon(12073.73368361576, worksheet.energy_h76, 0.002); end
  def test_energy_i76; assert_in_epsilon(11445.534955061015, worksheet.energy_i76, 0.002); end
  def test_energy_j76; assert_in_epsilon(10650.107745145677, worksheet.energy_j76, 0.002); end
  def test_energy_k76; assert_in_epsilon(9939.303944154939, worksheet.energy_k76, 0.002); end
  def test_energy_l76; assert_in_epsilon(9620.747961463145, worksheet.energy_l76, 0.002); end
  def test_energy_m76; assert_in_epsilon(9183.899700300266, worksheet.energy_m76, 0.002); end
  def test_flows_c5; assert_equal("From", worksheet.flows_c5.to_s.gsub(/[\n\r]+/,'')); end
  def test_flows_d5; assert_equal("To", worksheet.flows_d5.to_s.gsub(/[\n\r]+/,'')); end
  def test_flows_e5; assert_equal("2012", worksheet.flows_e5.to_s.gsub(/[\n\r]+/,'')); end
  def test_flows_f5; assert_equal("2015", worksheet.flows_f5.to_s.gsub(/[\n\r]+/,'')); end
  def test_flows_g5; assert_equal("2020", worksheet.flows_g5.to_s.gsub(/[\n\r]+/,'')); end
  def test_flows_h5; assert_equal("2025", worksheet.flows_h5.to_s.gsub(/[\n\r]+/,'')); end
  def test_flows_i5; assert_equal("2030", worksheet.flows_i5.to_s.gsub(/[\n\r]+/,'')); end
  def test_flows_j5; assert_equal("2035", worksheet.flows_j5.to_s.gsub(/[\n\r]+/,'')); end
  def test_flows_k5; assert_equal("2040", worksheet.flows_k5.to_s.gsub(/[\n\r]+/,'')); end
  def test_flows_l5; assert_equal("2045", worksheet.flows_l5.to_s.gsub(/[\n\r]+/,'')); end
  def test_flows_m5; assert_equal("2050", worksheet.flows_m5.to_s.gsub(/[\n\r]+/,'')); end
  def test_flows_c6; assert_equal("Coal reserves", worksheet.flows_c6.to_s.gsub(/[\n\r]+/,'')); end
  def test_flows_d6; assert_equal("Coal", worksheet.flows_d6.to_s.gsub(/[\n\r]+/,'')); end
  def test_flows_e6; assert_in_delta(0.0, (worksheet.flows_e6||0), 0.002); end
  def test_flows_f6; assert_in_delta(0.0, (worksheet.flows_f6||0), 0.002); end
  def test_flows_g6; assert_in_delta(0.0, (worksheet.flows_g6||0), 0.002); end
  def test_flows_h6; assert_in_delta(0.0, (worksheet.flows_h6||0), 0.002); end
  def test_flows_i6; assert_in_delta(0.0, (worksheet.flows_i6||0), 0.002); end
  def test_flows_j6; assert_in_delta(0.0, (worksheet.flows_j6||0), 0.002); end
  def test_flows_k6; assert_in_delta(0.0, (worksheet.flows_k6||0), 0.002); end
  def test_flows_l6; assert_in_delta(0.0, (worksheet.flows_l6||0), 0.002); end
  def test_flows_m6; assert_in_delta(0.0, (worksheet.flows_m6||0), 0.002); end
  def test_flows_c7; assert_equal("Coal imports", worksheet.flows_c7.to_s.gsub(/[\n\r]+/,'')); end
  def test_flows_d7; assert_equal("Coal", worksheet.flows_d7.to_s.gsub(/[\n\r]+/,'')); end
  def test_flows_e7; assert_in_epsilon(54.67677763831769, worksheet.flows_e7, 0.002); end
  def test_flows_f7; assert_in_epsilon(56.27203144190709, worksheet.flows_f7, 0.002); end
  def test_flows_g7; assert_in_epsilon(59.29131976164692, worksheet.flows_g7, 0.002); end
  def test_flows_h7; assert_in_epsilon(61.2921832608632, worksheet.flows_h7, 0.002); end
  def test_flows_i7; assert_in_epsilon(62.90732634459812, worksheet.flows_i7, 0.002); end
  def test_flows_j7; assert_in_epsilon(64.20973092418254, worksheet.flows_j7, 0.002); end
  def test_flows_k7; assert_in_epsilon(65.19610484818995, worksheet.flows_k7, 0.002); end
  def test_flows_l7; assert_in_epsilon(65.86278285990707, worksheet.flows_l7, 0.002); end
  def test_flows_m7; assert_in_epsilon(66.20976495933392, worksheet.flows_m7, 0.002); end
  def test_flows_c8; assert_equal("Oil reserves", worksheet.flows_c8.to_s.gsub(/[\n\r]+/,'')); end
  def test_flows_d8; assert_equal("Oil", worksheet.flows_d8.to_s.gsub(/[\n\r]+/,'')); end
  def test_flows_e8; assert_in_delta(0.0, (worksheet.flows_e8||0), 0.002); end
  def test_flows_f8; assert_in_delta(0.0, (worksheet.flows_f8||0), 0.002); end
  def test_flows_g8; assert_in_delta(0.0, (worksheet.flows_g8||0), 0.002); end
  def test_flows_h8; assert_in_delta(0.0, (worksheet.flows_h8||0), 0.002); end
  def test_flows_i8; assert_in_delta(0.0, (worksheet.flows_i8||0), 0.002); end
  def test_flows_j8; assert_in_delta(0.0, (worksheet.flows_j8||0), 0.002); end
  def test_flows_k8; assert_in_delta(0.0, (worksheet.flows_k8||0), 0.002); end
  def test_flows_l8; assert_in_delta(0.0, (worksheet.flows_l8||0), 0.002); end
  def test_flows_m8; assert_in_delta(0.0, (worksheet.flows_m8||0), 0.002); end
  def test_flows_c9; assert_equal("Oil imports", worksheet.flows_c9.to_s.gsub(/[\n\r]+/,'')); end
  def test_flows_d9; assert_equal("Oil", worksheet.flows_d9.to_s.gsub(/[\n\r]+/,'')); end
  def test_flows_e9; assert_in_epsilon(5583.968924946566, worksheet.flows_e9, 0.002); end
  def test_flows_f9; assert_in_epsilon(5616.186866296027, worksheet.flows_f9, 0.002); end
  def test_flows_g9; assert_in_epsilon(5886.174177279776, worksheet.flows_g9, 0.002); end
  def test_flows_h9; assert_in_epsilon(5329.24656902558, worksheet.flows_h9, 0.002); end
  def test_flows_i9; assert_in_epsilon(4056.4442051237993, worksheet.flows_i9, 0.002); end
  def test_flows_j9; assert_in_epsilon(2661.7047835272333, worksheet.flows_j9, 0.002); end
  def test_flows_k9; assert_in_epsilon(1387.481236141547, worksheet.flows_k9, 0.002); end
  def test_flows_l9; assert_in_epsilon(517.0489044248134, worksheet.flows_l9, 0.002); end
  def test_flows_m9; assert_in_delta(0.0, (worksheet.flows_m9||0), 0.002); end
  def test_flows_c10; assert_equal("Gas reserves", worksheet.flows_c10.to_s.gsub(/[\n\r]+/,'')); end
  def test_flows_d10; assert_equal("Natural Gas", worksheet.flows_d10.to_s.gsub(/[\n\r]+/,'')); end
  def test_flows_e10; assert_in_delta(0.0, (worksheet.flows_e10||0), 0.002); end
  def test_flows_f10; assert_in_delta(0.0, (worksheet.flows_f10||0), 0.002); end
  def test_flows_g10; assert_in_delta(0.0, (worksheet.flows_g10||0), 0.002); end
  def test_flows_h10; assert_in_delta(0.0, (worksheet.flows_h10||0), 0.002); end
  def test_flows_i10; assert_in_delta(0.0, (worksheet.flows_i10||0), 0.002); end
  def test_flows_j10; assert_in_delta(0.0, (worksheet.flows_j10||0), 0.002); end
  def test_flows_k10; assert_in_delta(0.0, (worksheet.flows_k10||0), 0.002); end
  def test_flows_l10; assert_in_delta(0.0, (worksheet.flows_l10||0), 0.002); end
  def test_flows_m10; assert_in_delta(0.0, (worksheet.flows_m10||0), 0.002); end
  def test_flows_c11; assert_equal("Gas imports", worksheet.flows_c11.to_s.gsub(/[\n\r]+/,'')); end
  def test_flows_d11; assert_equal("Natural Gas", worksheet.flows_d11.to_s.gsub(/[\n\r]+/,'')); end
  def test_flows_e11; assert_in_epsilon(1430.614664342593, worksheet.flows_e11, 0.002); end
  def test_flows_f11; assert_in_epsilon(1456.267079044218, worksheet.flows_f11, 0.002); end
  def test_flows_g11; assert_in_epsilon(1457.9861849494096, worksheet.flows_g11, 0.002); end
  def test_flows_h11; assert_in_epsilon(1445.395798188943, worksheet.flows_h11, 0.002); end
  def test_flows_i11; assert_in_epsilon(1427.0318850842575, worksheet.flows_i11, 0.002); end
  def test_flows_j11; assert_in_epsilon(1370.4259102428077, worksheet.flows_j11, 0.002); end
  def test_flows_k11; assert_in_epsilon(1309.4395363350611, worksheet.flows_k11, 0.002); end
  def test_flows_l11; assert_in_epsilon(1244.0042246515577, worksheet.flows_l11, 0.002); end
  def test_flows_m11; assert_in_epsilon(1174.1356174704265, worksheet.flows_m11, 0.002); end
  def test_flows_c12; assert_equal("UK land based bioenergy", worksheet.flows_c12.to_s.gsub(/[\n\r]+/,'')); end
  def test_flows_d12; assert_equal("Bio-conversion", worksheet.flows_d12.to_s.gsub(/[\n\r]+/,'')); end
  def test_flows_e12; assert_in_delta(0.0, (worksheet.flows_e12||0), 0.002); end
  def test_flows_f12; assert_in_delta(0.0, (worksheet.flows_f12||0), 0.002); end
  def test_flows_g12; assert_in_delta(0.0, (worksheet.flows_g12||0), 0.002); end
  def test_flows_h12; assert_in_delta(0.0, (worksheet.flows_h12||0), 0.002); end
  def test_flows_i12; assert_in_delta(0.0, (worksheet.flows_i12||0), 0.002); end
  def test_flows_j12; assert_in_delta(0.0, (worksheet.flows_j12||0), 0.002); end
  def test_flows_k12; assert_in_delta(0.0, (worksheet.flows_k12||0), 0.002); end
  def test_flows_l12; assert_in_delta(0.0, (worksheet.flows_l12||0), 0.002); end
  def test_flows_m12; assert_in_delta(0.0, (worksheet.flows_m12||0), 0.002); end
  def test_flows_c13; assert_equal("Agricultural 'waste'", worksheet.flows_c13.to_s.gsub(/[\n\r]+/,'')); end
  def test_flows_d13; assert_equal("Bio-conversion", worksheet.flows_d13.to_s.gsub(/[\n\r]+/,'')); end
  def test_flows_e13; assert_in_epsilon(400.113, worksheet.flows_e13, 0.002); end
  def test_flows_f13; assert_in_epsilon(297.9495, worksheet.flows_f13, 0.002); end
  def test_flows_g13; assert_in_epsilon(584.3358000000001, worksheet.flows_g13, 0.002); end
  def test_flows_h13; assert_in_epsilon(1217.2896, worksheet.flows_h13, 0.002); end
  def test_flows_i13; assert_in_epsilon(935.4366, worksheet.flows_i13, 0.002); end
  def test_flows_j13; assert_in_epsilon(502.2765, worksheet.flows_j13, 0.002); end
  def test_flows_k13; assert_in_epsilon(282.7071, worksheet.flows_k13, 0.002); end
  def test_flows_l13; assert_in_epsilon(689.4558000000001, worksheet.flows_l13, 0.002); end
  def test_flows_m13; assert_in_epsilon(584.3358000000001, worksheet.flows_m13, 0.002); end
  def test_flows_c14; assert_equal("Other waste", worksheet.flows_c14.to_s.gsub(/[\n\r]+/,'')); end
  def test_flows_d14; assert_equal("Bio-conversion", worksheet.flows_d14.to_s.gsub(/[\n\r]+/,'')); end
  def test_flows_e14; assert_in_epsilon(63.08038452043203, worksheet.flows_e14, 0.002); end
  def test_flows_f14; assert_in_epsilon(66.17783877714226, worksheet.flows_f14, 0.002); end
  def test_flows_g14; assert_in_epsilon(72.12845475498067, worksheet.flows_g14, 0.002); end
  def test_flows_h14; assert_in_epsilon(77.73381482316161, worksheet.flows_h14, 0.002); end
  def test_flows_i14; assert_in_epsilon(82.62054954121726, worksheet.flows_i14, 0.002); end
  def test_flows_j14; assert_in_epsilon(86.8445101137841, worksheet.flows_j14, 0.002); end
  def test_flows_k14; assert_in_epsilon(90.47267089900645, worksheet.flows_k14, 0.002); end
  def test_flows_l14; assert_in_epsilon(93.5347470655973, worksheet.flows_l14, 0.002); end
  def test_flows_m14; assert_in_epsilon(96.04914172000932, worksheet.flows_m14, 0.002); end
  def test_flows_c15; assert_equal("Other waste", worksheet.flows_c15.to_s.gsub(/[\n\r]+/,'')); end
  def test_flows_d15; assert_equal("Solid", worksheet.flows_d15.to_s.gsub(/[\n\r]+/,'')); end
  def test_flows_e15; assert_in_delta(0.0, (worksheet.flows_e15||0), 0.002); end
  def test_flows_f15; assert_in_delta(0.0, (worksheet.flows_f15||0), 0.002); end
  def test_flows_g15; assert_in_delta(0.0, (worksheet.flows_g15||0), 0.002); end
  def test_flows_h15; assert_in_delta(0.0, (worksheet.flows_h15||0), 0.002); end
  def test_flows_i15; assert_in_delta(0.0, (worksheet.flows_i15||0), 0.002); end
  def test_flows_j15; assert_in_delta(0.0, (worksheet.flows_j15||0), 0.002); end
  def test_flows_k15; assert_in_delta(0.0, (worksheet.flows_k15||0), 0.002); end
  def test_flows_l15; assert_in_delta(0.0, (worksheet.flows_l15||0), 0.002); end
  def test_flows_m15; assert_in_delta(0.0, (worksheet.flows_m15||0), 0.002); end
  def test_flows_c16; assert_equal("Biomass imports", worksheet.flows_c16.to_s.gsub(/[\n\r]+/,'')); end
  def test_flows_d16; assert_equal("Solid", worksheet.flows_d16.to_s.gsub(/[\n\r]+/,'')); end
  def test_flows_e16; assert_in_delta(0.0, (worksheet.flows_e16||0), 0.002); end
  def test_flows_f16; assert_in_delta(0.0, (worksheet.flows_f16||0), 0.002); end
  def test_flows_g16; assert_in_delta(0.0, (worksheet.flows_g16||0), 0.002); end
  def test_flows_h16; assert_in_delta(0.0, (worksheet.flows_h16||0), 0.002); end
  def test_flows_i16; assert_in_delta(0.0, (worksheet.flows_i16||0), 0.002); end
  def test_flows_j16; assert_in_delta(0.0, (worksheet.flows_j16||0), 0.002); end
  def test_flows_k16; assert_in_delta(0.0, (worksheet.flows_k16||0), 0.002); end
  def test_flows_l16; assert_in_delta(0.0, (worksheet.flows_l16||0), 0.002); end
  def test_flows_m16; assert_in_delta(0.0, (worksheet.flows_m16||0), 0.002); end
  def test_flows_c17; assert_equal("Biofuel imports", worksheet.flows_c17.to_s.gsub(/[\n\r]+/,'')); end
  def test_flows_d17; assert_equal("Liquid", worksheet.flows_d17.to_s.gsub(/[\n\r]+/,'')); end
  def test_flows_e17; assert_in_delta(0.0, (worksheet.flows_e17||0), 0.002); end
  def test_flows_f17; assert_in_delta(0.0, (worksheet.flows_f17||0), 0.002); end
  def test_flows_g17; assert_in_delta(0.0, (worksheet.flows_g17||0), 0.002); end
  def test_flows_h17; assert_in_delta(0.0, (worksheet.flows_h17||0), 0.002); end
  def test_flows_i17; assert_in_delta(0.0, (worksheet.flows_i17||0), 0.002); end
  def test_flows_j17; assert_in_delta(0.0, (worksheet.flows_j17||0), 0.002); end
  def test_flows_k17; assert_in_delta(0.0, (worksheet.flows_k17||0), 0.002); end
  def test_flows_l17; assert_in_delta(0.0, (worksheet.flows_l17||0), 0.002); end
  def test_flows_m17; assert_in_delta(0.0, (worksheet.flows_m17||0), 0.002); end
  def test_flows_c18; assert_equal("Coal", worksheet.flows_c18.to_s.gsub(/[\n\r]+/,'')); end
  def test_flows_d18; assert_equal("Solid", worksheet.flows_d18.to_s.gsub(/[\n\r]+/,'')); end
  def test_flows_e18; assert_in_epsilon(54.67677763831769, worksheet.flows_e18, 0.002); end
  def test_flows_f18; assert_in_epsilon(56.27203144190709, worksheet.flows_f18, 0.002); end
  def test_flows_g18; assert_in_epsilon(59.29131976164692, worksheet.flows_g18, 0.002); end
  def test_flows_h18; assert_in_epsilon(61.2921832608632, worksheet.flows_h18, 0.002); end
  def test_flows_i18; assert_in_epsilon(62.90732634459812, worksheet.flows_i18, 0.002); end
  def test_flows_j18; assert_in_epsilon(64.20973092418254, worksheet.flows_j18, 0.002); end
  def test_flows_k18; assert_in_epsilon(65.19610484818995, worksheet.flows_k18, 0.002); end
  def test_flows_l18; assert_in_epsilon(65.86278285990707, worksheet.flows_l18, 0.002); end
  def test_flows_m18; assert_in_epsilon(66.20976495933392, worksheet.flows_m18, 0.002); end
  def test_flows_c19; assert_equal("Oil", worksheet.flows_c19.to_s.gsub(/[\n\r]+/,'')); end
  def test_flows_d19; assert_equal("Liquid", worksheet.flows_d19.to_s.gsub(/[\n\r]+/,'')); end
  def test_flows_e19; assert_in_epsilon(5583.968924946566, worksheet.flows_e19, 0.002); end
  def test_flows_f19; assert_in_epsilon(5616.186866296027, worksheet.flows_f19, 0.002); end
  def test_flows_g19; assert_in_epsilon(5886.174177279776, worksheet.flows_g19, 0.002); end
  def test_flows_h19; assert_in_epsilon(5329.24656902558, worksheet.flows_h19, 0.002); end
  def test_flows_i19; assert_in_epsilon(4056.4442051237993, worksheet.flows_i19, 0.002); end
  def test_flows_j19; assert_in_epsilon(2661.7047835272333, worksheet.flows_j19, 0.002); end
  def test_flows_k19; assert_in_epsilon(1387.481236141547, worksheet.flows_k19, 0.002); end
  def test_flows_l19; assert_in_epsilon(517.0489044248134, worksheet.flows_l19, 0.002); end
  def test_flows_m19; assert_in_delta(0.0, (worksheet.flows_m19||0), 0.002); end
  def test_flows_c20; assert_equal("Natural Gas", worksheet.flows_c20.to_s.gsub(/[\n\r]+/,'')); end
  def test_flows_d20; assert_equal("Gas", worksheet.flows_d20.to_s.gsub(/[\n\r]+/,'')); end
  def test_flows_e20; assert_in_epsilon(1430.614664342593, worksheet.flows_e20, 0.002); end
  def test_flows_f20; assert_in_epsilon(1456.267079044218, worksheet.flows_f20, 0.002); end
  def test_flows_g20; assert_in_epsilon(1457.9861849494096, worksheet.flows_g20, 0.002); end
  def test_flows_h20; assert_in_epsilon(1445.395798188943, worksheet.flows_h20, 0.002); end
  def test_flows_i20; assert_in_epsilon(1427.0318850842575, worksheet.flows_i20, 0.002); end
  def test_flows_j20; assert_in_epsilon(1370.4259102428077, worksheet.flows_j20, 0.002); end
  def test_flows_k20; assert_in_epsilon(1309.4395363350611, worksheet.flows_k20, 0.002); end
  def test_flows_l20; assert_in_epsilon(1244.0042246515577, worksheet.flows_l20, 0.002); end
  def test_flows_m20; assert_in_epsilon(1174.1356174704265, worksheet.flows_m20, 0.002); end
  def test_flows_c21; assert_equal("Solar", worksheet.flows_c21.to_s.gsub(/[\n\r]+/,'')); end
  def test_flows_d21; assert_equal("Solar PV", worksheet.flows_d21.to_s.gsub(/[\n\r]+/,'')); end
  def test_flows_e21; assert_in_delta(0.214093779966, worksheet.flows_e21, 0.002); end
  def test_flows_f21; assert_in_epsilon(2.47111155648, worksheet.flows_f21, 0.002); end
  def test_flows_g21; assert_in_epsilon(8.619745426200002, worksheet.flows_g21, 0.002); end
  def test_flows_h21; assert_in_epsilon(13.570481990700003, worksheet.flows_h21, 0.002); end
  def test_flows_i21; assert_in_epsilon(18.7524095328, worksheet.flows_i21, 0.002); end
  def test_flows_j21; assert_in_epsilon(24.0991387515, worksheet.flows_j21, 0.002); end
  def test_flows_k21; assert_in_epsilon(29.564978186699996, worksheet.flows_k21, 0.002); end
  def test_flows_l21; assert_in_epsilon(35.082757486800006, worksheet.flows_l21, 0.002); end
  def test_flows_m21; assert_in_epsilon(40.5892115532, worksheet.flows_m21, 0.002); end
  def test_flows_c22; assert_equal("Solar PV", worksheet.flows_c22.to_s.gsub(/[\n\r]+/,'')); end
  def test_flows_d22; assert_equal("Electricity grid", worksheet.flows_d22.to_s.gsub(/[\n\r]+/,'')); end
  def test_flows_e22; assert_in_delta(0.214093779966, worksheet.flows_e22, 0.002); end
  def test_flows_f22; assert_in_epsilon(2.47111155648, worksheet.flows_f22, 0.002); end
  def test_flows_g22; assert_in_epsilon(8.619745426200002, worksheet.flows_g22, 0.002); end
  def test_flows_h22; assert_in_epsilon(13.570481990700003, worksheet.flows_h22, 0.002); end
  def test_flows_i22; assert_in_epsilon(18.7524095328, worksheet.flows_i22, 0.002); end
  def test_flows_j22; assert_in_epsilon(24.0991387515, worksheet.flows_j22, 0.002); end
  def test_flows_k22; assert_in_epsilon(29.564978186699996, worksheet.flows_k22, 0.002); end
  def test_flows_l22; assert_in_epsilon(35.082757486800006, worksheet.flows_l22, 0.002); end
  def test_flows_m22; assert_in_epsilon(40.5892115532, worksheet.flows_m22, 0.002); end
  def test_flows_c23; assert_equal("Solar", worksheet.flows_c23.to_s.gsub(/[\n\r]+/,'')); end
  def test_flows_d23; assert_equal("Solar Thermal", worksheet.flows_d23.to_s.gsub(/[\n\r]+/,'')); end
  def test_flows_e23; assert_in_epsilon(5.5260576, worksheet.flows_e23, 0.002); end
  def test_flows_f23; assert_in_epsilon(5.7673727999999995, worksheet.flows_f23, 0.002); end
  def test_flows_g23; assert_in_epsilon(6.1248096, worksheet.flows_g23, 0.002); end
  def test_flows_h23; assert_in_epsilon(6.394550399999999, worksheet.flows_h23, 0.002); end
  def test_flows_i23; assert_in_epsilon(6.6189312000000005, worksheet.flows_i23, 0.002); end
  def test_flows_j23; assert_in_epsilon(6.8046048, worksheet.flows_j23, 0.002); end
  def test_flows_k23; assert_in_epsilon(6.959131200000001, worksheet.flows_k23, 0.002); end
  def test_flows_l23; assert_in_epsilon(7.0809984, worksheet.flows_l23, 0.002); end
  def test_flows_m23; assert_in_epsilon(7.170206399999999, worksheet.flows_m23, 0.002); end
  def test_flows_c24; assert_equal("Bio-conversion", worksheet.flows_c24.to_s.gsub(/[\n\r]+/,'')); end
  def test_flows_d24; assert_equal("Solid", worksheet.flows_d24.to_s.gsub(/[\n\r]+/,'')); end
  def test_flows_e24; assert_in_delta(0.0, (worksheet.flows_e24||0), 0.002); end
  def test_flows_f24; assert_in_delta(0.0, (worksheet.flows_f24||0), 0.002); end
  def test_flows_g24; assert_in_delta(0.0, (worksheet.flows_g24||0), 0.002); end
  def test_flows_h24; assert_in_delta(0.0, (worksheet.flows_h24||0), 0.002); end
  def test_flows_i24; assert_in_delta(0.0, (worksheet.flows_i24||0), 0.002); end
  def test_flows_j24; assert_in_delta(0.0, (worksheet.flows_j24||0), 0.002); end
  def test_flows_k24; assert_in_delta(0.0, (worksheet.flows_k24||0), 0.002); end
  def test_flows_l24; assert_in_delta(0.0, (worksheet.flows_l24||0), 0.002); end
  def test_flows_m24; assert_in_delta(0.0, (worksheet.flows_m24||0), 0.002); end
  def test_flows_c25; assert_equal("Bio-conversion", worksheet.flows_c25.to_s.gsub(/[\n\r]+/,'')); end
  def test_flows_d25; assert_equal("Liquid", worksheet.flows_d25.to_s.gsub(/[\n\r]+/,'')); end
  def test_flows_e25; assert_in_delta(0.0, (worksheet.flows_e25||0), 0.002); end
  def test_flows_f25; assert_in_delta(0.0, (worksheet.flows_f25||0), 0.002); end
  def test_flows_g25; assert_in_delta(0.0, (worksheet.flows_g25||0), 0.002); end
  def test_flows_h25; assert_in_delta(0.0, (worksheet.flows_h25||0), 0.002); end
  def test_flows_i25; assert_in_delta(0.0, (worksheet.flows_i25||0), 0.002); end
  def test_flows_j25; assert_in_delta(0.0, (worksheet.flows_j25||0), 0.002); end
  def test_flows_k25; assert_in_delta(0.0, (worksheet.flows_k25||0), 0.002); end
  def test_flows_l25; assert_in_delta(0.0, (worksheet.flows_l25||0), 0.002); end
  def test_flows_m25; assert_in_delta(0.0, (worksheet.flows_m25||0), 0.002); end
  def test_flows_c26; assert_equal("Bio-conversion", worksheet.flows_c26.to_s.gsub(/[\n\r]+/,'')); end
  def test_flows_d26; assert_equal("Gas", worksheet.flows_d26.to_s.gsub(/[\n\r]+/,'')); end
  def test_flows_e26; assert_in_delta(0.0, (worksheet.flows_e26||0), 0.002); end
  def test_flows_f26; assert_in_delta(0.0, (worksheet.flows_f26||0), 0.002); end
  def test_flows_g26; assert_in_delta(0.0, (worksheet.flows_g26||0), 0.002); end
  def test_flows_h26; assert_in_delta(0.0, (worksheet.flows_h26||0), 0.002); end
  def test_flows_i26; assert_in_delta(0.0, (worksheet.flows_i26||0), 0.002); end
  def test_flows_j26; assert_in_delta(0.0, (worksheet.flows_j26||0), 0.002); end
  def test_flows_k26; assert_in_delta(0.0, (worksheet.flows_k26||0), 0.002); end
  def test_flows_l26; assert_in_delta(0.0, (worksheet.flows_l26||0), 0.002); end
  def test_flows_m26; assert_in_delta(0.0, (worksheet.flows_m26||0), 0.002); end
  def test_flows_c27; assert_equal("Bio-conversion", worksheet.flows_c27.to_s.gsub(/[\n\r]+/,'')); end
  def test_flows_d27; assert_equal("Losses", worksheet.flows_d27.to_s.gsub(/[\n\r]+/,'')); end
  def test_flows_e27; assert_in_epsilon(20.005650000000003, worksheet.flows_e27, 0.002); end
  def test_flows_f27; assert_in_epsilon(14.897474999999986, worksheet.flows_f27, 0.002); end
  def test_flows_g27; assert_in_epsilon(29.21679000000006, worksheet.flows_g27, 0.002); end
  def test_flows_h27; assert_in_epsilon(60.86447999999996, worksheet.flows_h27, 0.002); end
  def test_flows_i27; assert_in_epsilon(46.771830000000136, worksheet.flows_i27, 0.002); end
  def test_flows_j27; assert_in_epsilon(25.11382500000002, worksheet.flows_j27, 0.002); end
  def test_flows_k27; assert_in_epsilon(14.135355000000004, worksheet.flows_k27, 0.002); end
  def test_flows_l27; assert_in_epsilon(34.47279000000003, worksheet.flows_l27, 0.002); end
  def test_flows_m27; assert_in_epsilon(29.21679000000006, worksheet.flows_m27, 0.002); end
  def test_flows_c28; assert_equal("Solid", worksheet.flows_c28.to_s.gsub(/[\n\r]+/,'')); end
  def test_flows_d28; assert_equal("Over generation / exports", worksheet.flows_d28.to_s.gsub(/[\n\r]+/,'')); end
  def test_flows_e28; assert_in_delta(0.0, (worksheet.flows_e28||0), 0.002); end
  def test_flows_f28; assert_in_delta(0.0, (worksheet.flows_f28||0), 0.002); end
  def test_flows_g28; assert_in_delta(0.0, (worksheet.flows_g28||0), 0.002); end
  def test_flows_h28; assert_in_delta(0.0, (worksheet.flows_h28||0), 0.002); end
  def test_flows_i28; assert_in_delta(0.0, (worksheet.flows_i28||0), 0.002); end
  def test_flows_j28; assert_in_delta(0.0, (worksheet.flows_j28||0), 0.002); end
  def test_flows_k28; assert_in_delta(0.0, (worksheet.flows_k28||0), 0.002); end
  def test_flows_l28; assert_in_delta(0.0, (worksheet.flows_l28||0), 0.002); end
  def test_flows_m28; assert_in_delta(0.0, (worksheet.flows_m28||0), 0.002); end
  def test_flows_c29; assert_equal("Liquid", worksheet.flows_c29.to_s.gsub(/[\n\r]+/,'')); end
  def test_flows_d29; assert_equal("Over generation / exports", worksheet.flows_d29.to_s.gsub(/[\n\r]+/,'')); end
  def test_flows_e29; assert_in_delta(0.0, (worksheet.flows_e29||0), 0.002); end
  def test_flows_f29; assert_in_delta(0.0, (worksheet.flows_f29||0), 0.002); end
  def test_flows_g29; assert_in_delta(0.0, (worksheet.flows_g29||0), 0.002); end
  def test_flows_h29; assert_in_delta(0.0, (worksheet.flows_h29||0), 0.002); end
  def test_flows_i29; assert_in_delta(0.0, (worksheet.flows_i29||0), 0.002); end
  def test_flows_j29; assert_in_delta(0.0, (worksheet.flows_j29||0), 0.002); end
  def test_flows_k29; assert_in_delta(0.0, (worksheet.flows_k29||0), 0.002); end
  def test_flows_l29; assert_in_delta(0.0, (worksheet.flows_l29||0), 0.002); end
  def test_flows_m29; assert_in_delta(0.0, (worksheet.flows_m29||0), 0.002); end
  def test_flows_c30; assert_equal("Gas", worksheet.flows_c30.to_s.gsub(/[\n\r]+/,'')); end
  def test_flows_d30; assert_equal("Over generation / exports", worksheet.flows_d30.to_s.gsub(/[\n\r]+/,'')); end
  def test_flows_e30; assert_in_delta(0.0, (worksheet.flows_e30||0), 0.002); end
  def test_flows_f30; assert_in_delta(0.0, (worksheet.flows_f30||0), 0.002); end
  def test_flows_g30; assert_in_delta(0.0, (worksheet.flows_g30||0), 0.002); end
  def test_flows_h30; assert_in_delta(0.0, (worksheet.flows_h30||0), 0.002); end
  def test_flows_i30; assert_in_delta(0.0, (worksheet.flows_i30||0), 0.002); end
  def test_flows_j30; assert_in_delta(0.0, (worksheet.flows_j30||0), 0.002); end
  def test_flows_k30; assert_in_delta(0.0, (worksheet.flows_k30||0), 0.002); end
  def test_flows_l30; assert_in_delta(0.0, (worksheet.flows_l30||0), 0.002); end
  def test_flows_m30; assert_in_delta(0.0, (worksheet.flows_m30||0), 0.002); end
  def test_flows_c31; assert_equal("Gas", worksheet.flows_c31.to_s.gsub(/[\n\r]+/,'')); end
  def test_flows_d31; assert_equal("Thermal generation", worksheet.flows_d31.to_s.gsub(/[\n\r]+/,'')); end
  def test_flows_e31; assert_in_epsilon(63.08038452043203, worksheet.flows_e31, 0.002); end
  def test_flows_f31; assert_in_epsilon(66.17783877714226, worksheet.flows_f31, 0.002); end
  def test_flows_g31; assert_in_epsilon(72.12845475498067, worksheet.flows_g31, 0.002); end
  def test_flows_h31; assert_in_epsilon(77.73381482316161, worksheet.flows_h31, 0.002); end
  def test_flows_i31; assert_in_epsilon(82.62054954121726, worksheet.flows_i31, 0.002); end
  def test_flows_j31; assert_in_epsilon(86.8445101137841, worksheet.flows_j31, 0.002); end
  def test_flows_k31; assert_in_epsilon(90.47267089900645, worksheet.flows_k31, 0.002); end
  def test_flows_l31; assert_in_epsilon(93.5347470655973, worksheet.flows_l31, 0.002); end
  def test_flows_m31; assert_in_epsilon(96.04914172000932, worksheet.flows_m31, 0.002); end
  def test_flows_c32; assert_equal("Thermal generation", worksheet.flows_c32.to_s.gsub(/[\n\r]+/,'')); end
  def test_flows_d32; assert_equal("District heating", worksheet.flows_d32.to_s.gsub(/[\n\r]+/,'')); end
  def test_flows_e32; assert_in_delta(0.0, (worksheet.flows_e32||0), 0.002); end
  def test_flows_f32; assert_in_delta(0.0, (worksheet.flows_f32||0), 0.002); end
  def test_flows_g32; assert_in_delta(0.0, (worksheet.flows_g32||0), 0.002); end
  def test_flows_h32; assert_in_delta(0.0, (worksheet.flows_h32||0), 0.002); end
  def test_flows_i32; assert_in_delta(0.0, (worksheet.flows_i32||0), 0.002); end
  def test_flows_j32; assert_in_delta(0.0, (worksheet.flows_j32||0), 0.002); end
  def test_flows_k32; assert_in_delta(0.0, (worksheet.flows_k32||0), 0.002); end
  def test_flows_l32; assert_in_delta(0.0, (worksheet.flows_l32||0), 0.002); end
  def test_flows_m32; assert_in_delta(0.0, (worksheet.flows_m32||0), 0.002); end
  def test_flows_c33; assert_equal("Thermal generation", worksheet.flows_c33.to_s.gsub(/[\n\r]+/,'')); end
  def test_flows_d33; assert_equal("Electricity grid", worksheet.flows_d33.to_s.gsub(/[\n\r]+/,'')); end
  def test_flows_e33; assert_in_epsilon(14.508488439699367, worksheet.flows_e33, 0.002); end
  def test_flows_f33; assert_in_epsilon(15.22090291874272, worksheet.flows_f33, 0.002); end
  def test_flows_g33; assert_in_epsilon(16.589544593645552, worksheet.flows_g33, 0.002); end
  def test_flows_h33; assert_in_epsilon(17.87877740932717, worksheet.flows_h33, 0.002); end
  def test_flows_i33; assert_in_epsilon(19.00272639447997, worksheet.flows_i33, 0.002); end
  def test_flows_j33; assert_in_epsilon(19.974237326170343, worksheet.flows_j33, 0.002); end
  def test_flows_k33; assert_in_epsilon(20.808714306771485, worksheet.flows_k33, 0.002); end
  def test_flows_l33; assert_in_epsilon(21.51299182508738, worksheet.flows_l33, 0.002); end
  def test_flows_m33; assert_in_epsilon(22.091302595602144, worksheet.flows_m33, 0.002); end
  def test_flows_c34; assert_equal("Thermal generation", worksheet.flows_c34.to_s.gsub(/[\n\r]+/,'')); end
  def test_flows_d34; assert_equal("Losses", worksheet.flows_d34.to_s.gsub(/[\n\r]+/,'')); end
  def test_flows_e34; assert_in_epsilon(48.57189608073266, worksheet.flows_e34, 0.002); end
  def test_flows_f34; assert_in_epsilon(50.95693585839953, worksheet.flows_f34, 0.002); end
  def test_flows_g34; assert_in_epsilon(55.53891016133511, worksheet.flows_g34, 0.002); end
  def test_flows_h34; assert_in_epsilon(59.85503741383444, worksheet.flows_h34, 0.002); end
  def test_flows_i34; assert_in_epsilon(63.61782314673729, worksheet.flows_i34, 0.002); end
  def test_flows_j34; assert_in_epsilon(66.87027278761376, worksheet.flows_j34, 0.002); end
  def test_flows_k34; assert_in_epsilon(69.66395659223497, worksheet.flows_k34, 0.002); end
  def test_flows_l34; assert_in_epsilon(72.02175524050992, worksheet.flows_l34, 0.002); end
  def test_flows_m34; assert_in_epsilon(73.95783912440717, worksheet.flows_m34, 0.002); end
  def test_flows_c35; assert_equal("Electricity imports", worksheet.flows_c35.to_s.gsub(/[\n\r]+/,'')); end
  def test_flows_d35; assert_equal("Electricity grid", worksheet.flows_d35.to_s.gsub(/[\n\r]+/,'')); end
  def test_flows_e35; assert_in_epsilon(2987.0724146840785, worksheet.flows_e35, 0.002); end
  def test_flows_f35; assert_in_epsilon(3073.005172745109, worksheet.flows_f35, 0.002); end
  def test_flows_g35; assert_in_epsilon(3260.7806669424544, worksheet.flows_g35, 0.002); end
  def test_flows_h35; assert_in_epsilon(3476.1925267936226, worksheet.flows_h35, 0.002); end
  def test_flows_i35; assert_in_epsilon(3727.3752893544643, worksheet.flows_i35, 0.002); end
  def test_flows_j35; assert_in_epsilon(3958.793001646037, worksheet.flows_j35, 0.002); end
  def test_flows_k35; assert_in_epsilon(4146.514535709557, worksheet.flows_k35, 0.002); end
  def test_flows_l35; assert_in_epsilon(4300.029380480905, worksheet.flows_l35, 0.002); end
  def test_flows_m35; assert_in_epsilon(4430.835078737898, worksheet.flows_m35, 0.002); end
  def test_flows_c36; assert_equal("Wind", worksheet.flows_c36.to_s.gsub(/[\n\r]+/,'')); end
  def test_flows_d36; assert_equal("Electricity grid", worksheet.flows_d36.to_s.gsub(/[\n\r]+/,'')); end
  def test_flows_e36; assert_in_delta(0.0, (worksheet.flows_e36||0), 0.002); end
  def test_flows_f36; assert_in_delta(0.0, (worksheet.flows_f36||0), 0.002); end
  def test_flows_g36; assert_in_delta(0.0, (worksheet.flows_g36||0), 0.002); end
  def test_flows_h36; assert_in_delta(0.0, (worksheet.flows_h36||0), 0.002); end
  def test_flows_i36; assert_in_delta(0.0, (worksheet.flows_i36||0), 0.002); end
  def test_flows_j36; assert_in_delta(0.0, (worksheet.flows_j36||0), 0.002); end
  def test_flows_k36; assert_in_delta(0.0, (worksheet.flows_k36||0), 0.002); end
  def test_flows_l36; assert_in_delta(0.0, (worksheet.flows_l36||0), 0.002); end
  def test_flows_m36; assert_in_delta(0.0, (worksheet.flows_m36||0), 0.002); end
  def test_flows_c37; assert_equal("Tidal", worksheet.flows_c37.to_s.gsub(/[\n\r]+/,'')); end
  def test_flows_d37; assert_equal("Electricity grid", worksheet.flows_d37.to_s.gsub(/[\n\r]+/,'')); end
  def test_flows_e37; assert_in_delta(0.0, (worksheet.flows_e37||0), 0.002); end
  def test_flows_f37; assert_in_delta(0.0, (worksheet.flows_f37||0), 0.002); end
  def test_flows_g37; assert_in_delta(0.0, (worksheet.flows_g37||0), 0.002); end
  def test_flows_h37; assert_in_delta(0.0, (worksheet.flows_h37||0), 0.002); end
  def test_flows_i37; assert_in_delta(0.0, (worksheet.flows_i37||0), 0.002); end
  def test_flows_j37; assert_in_delta(0.0, (worksheet.flows_j37||0), 0.002); end
  def test_flows_k37; assert_in_delta(0.0, (worksheet.flows_k37||0), 0.002); end
  def test_flows_l37; assert_in_delta(0.0, (worksheet.flows_l37||0), 0.002); end
  def test_flows_m37; assert_in_delta(0.0, (worksheet.flows_m37||0), 0.002); end
  def test_flows_c38; assert_equal("Wave", worksheet.flows_c38.to_s.gsub(/[\n\r]+/,'')); end
  def test_flows_d38; assert_equal("Electricity grid", worksheet.flows_d38.to_s.gsub(/[\n\r]+/,'')); end
  def test_flows_e38; assert_in_delta(0.0, (worksheet.flows_e38||0), 0.002); end
  def test_flows_f38; assert_in_delta(0.0, (worksheet.flows_f38||0), 0.002); end
  def test_flows_g38; assert_in_delta(0.0, (worksheet.flows_g38||0), 0.002); end
  def test_flows_h38; assert_in_delta(0.0, (worksheet.flows_h38||0), 0.002); end
  def test_flows_i38; assert_in_delta(0.0, (worksheet.flows_i38||0), 0.002); end
  def test_flows_j38; assert_in_delta(0.0, (worksheet.flows_j38||0), 0.002); end
  def test_flows_k38; assert_in_delta(0.0, (worksheet.flows_k38||0), 0.002); end
  def test_flows_l38; assert_in_delta(0.0, (worksheet.flows_l38||0), 0.002); end
  def test_flows_m38; assert_in_delta(0.0, (worksheet.flows_m38||0), 0.002); end
  def test_flows_c39; assert_equal("Electricity grid", worksheet.flows_c39.to_s.gsub(/[\n\r]+/,'')); end
  def test_flows_d39; assert_equal("H2 conversion", worksheet.flows_d39.to_s.gsub(/[\n\r]+/,'')); end
  def test_flows_e39; assert_in_delta(0.0, (worksheet.flows_e39||0), 0.002); end
  def test_flows_f39; assert_in_delta(0.0, (worksheet.flows_f39||0), 0.002); end
  def test_flows_g39; assert_in_delta(0.0, (worksheet.flows_g39||0), 0.002); end
  def test_flows_h39; assert_in_delta(0.0, (worksheet.flows_h39||0), 0.002); end
  def test_flows_i39; assert_in_delta(0.0, (worksheet.flows_i39||0), 0.002); end
  def test_flows_j39; assert_in_delta(0.0, (worksheet.flows_j39||0), 0.002); end
  def test_flows_k39; assert_in_delta(0.0, (worksheet.flows_k39||0), 0.002); end
  def test_flows_l39; assert_in_delta(0.0, (worksheet.flows_l39||0), 0.002); end
  def test_flows_m39; assert_in_delta(0.0, (worksheet.flows_m39||0), 0.002); end
  def test_flows_c40; assert_equal("Electricity grid", worksheet.flows_c40.to_s.gsub(/[\n\r]+/,'')); end
  def test_flows_d40; assert_equal("Over generation / exports", worksheet.flows_d40.to_s.gsub(/[\n\r]+/,'')); end
  def test_flows_e40; assert_in_delta(0.0, (worksheet.flows_e40||0), 0.002); end
  def test_flows_f40; assert_in_delta(0.0, (worksheet.flows_f40||0), 0.002); end
  def test_flows_g40; assert_in_delta(0.0, (worksheet.flows_g40||0), 0.002); end
  def test_flows_h40; assert_in_delta(0.0, (worksheet.flows_h40||0), 0.002); end
  def test_flows_i40; assert_in_delta(0.0, (worksheet.flows_i40||0), 0.002); end
  def test_flows_j40; assert_in_delta(0.0, (worksheet.flows_j40||0), 0.002); end
  def test_flows_k40; assert_in_delta(0.0, (worksheet.flows_k40||0), 0.002); end
  def test_flows_l40; assert_in_delta(0.0, (worksheet.flows_l40||0), 0.002); end
  def test_flows_m40; assert_in_delta(0.0, (worksheet.flows_m40||0), 0.002); end
  def test_flows_c41; assert_equal("Electricity grid", worksheet.flows_c41.to_s.gsub(/[\n\r]+/,'')); end
  def test_flows_d41; assert_equal("Losses", worksheet.flows_d41.to_s.gsub(/[\n\r]+/,'')); end
  def test_flows_e41; assert_in_delta(0.0, (worksheet.flows_e41||0), 0.002); end
  def test_flows_f41; assert_in_delta(0.0, (worksheet.flows_f41||0), 0.002); end
  def test_flows_g41; assert_in_delta(0.0, (worksheet.flows_g41||0), 0.002); end
  def test_flows_h41; assert_in_delta(0.0, (worksheet.flows_h41||0), 0.002); end
  def test_flows_i41; assert_in_delta(0.0, (worksheet.flows_i41||0), 0.002); end
  def test_flows_j41; assert_in_delta(0.0, (worksheet.flows_j41||0), 0.002); end
  def test_flows_k41; assert_in_delta(0.0, (worksheet.flows_k41||0), 0.002); end
  def test_flows_l41; assert_in_delta(0.0, (worksheet.flows_l41||0), 0.002); end
  def test_flows_m41; assert_in_delta(0.0, (worksheet.flows_m41||0), 0.002); end
  def test_flows_c42; assert_equal("Gas", worksheet.flows_c42.to_s.gsub(/[\n\r]+/,'')); end
  def test_flows_d42; assert_equal("H2 conversion", worksheet.flows_d42.to_s.gsub(/[\n\r]+/,'')); end
  def test_flows_e42; assert_in_delta(0.0, (worksheet.flows_e42||0), 0.002); end
  def test_flows_f42; assert_in_delta(0.0, (worksheet.flows_f42||0), 0.002); end
  def test_flows_g42; assert_in_delta(0.0, (worksheet.flows_g42||0), 0.002); end
  def test_flows_h42; assert_in_delta(0.0, (worksheet.flows_h42||0), 0.002); end
  def test_flows_i42; assert_in_delta(0.0, (worksheet.flows_i42||0), 0.002); end
  def test_flows_j42; assert_in_delta(0.0, (worksheet.flows_j42||0), 0.002); end
  def test_flows_k42; assert_in_delta(0.0, (worksheet.flows_k42||0), 0.002); end
  def test_flows_l42; assert_in_delta(0.0, (worksheet.flows_l42||0), 0.002); end
  def test_flows_m42; assert_in_delta(0.0, (worksheet.flows_m42||0), 0.002); end
  def test_flows_c43; assert_equal("H2 conversion", worksheet.flows_c43.to_s.gsub(/[\n\r]+/,'')); end
  def test_flows_d43; assert_equal("H2", worksheet.flows_d43.to_s.gsub(/[\n\r]+/,'')); end
  def test_flows_e43; assert_in_delta(0.0, (worksheet.flows_e43||0), 0.002); end
  def test_flows_f43; assert_in_delta(0.0, (worksheet.flows_f43||0), 0.002); end
  def test_flows_g43; assert_in_delta(0.0, (worksheet.flows_g43||0), 0.002); end
  def test_flows_h43; assert_in_delta(0.0, (worksheet.flows_h43||0), 0.002); end
  def test_flows_i43; assert_in_delta(0.0, (worksheet.flows_i43||0), 0.002); end
  def test_flows_j43; assert_in_delta(0.0, (worksheet.flows_j43||0), 0.002); end
  def test_flows_k43; assert_in_delta(0.0, (worksheet.flows_k43||0), 0.002); end
  def test_flows_l43; assert_in_delta(0.0, (worksheet.flows_l43||0), 0.002); end
  def test_flows_m43; assert_in_delta(0.0, (worksheet.flows_m43||0), 0.002); end
  def test_flows_c44; assert_equal("H2 conversion", worksheet.flows_c44.to_s.gsub(/[\n\r]+/,'')); end
  def test_flows_d44; assert_equal("Losses", worksheet.flows_d44.to_s.gsub(/[\n\r]+/,'')); end
  def test_flows_e44; assert_in_delta(0.0, (worksheet.flows_e44||0), 0.002); end
  def test_flows_f44; assert_in_delta(0.0, (worksheet.flows_f44||0), 0.002); end
  def test_flows_g44; assert_in_delta(0.0, (worksheet.flows_g44||0), 0.002); end
  def test_flows_h44; assert_in_delta(0.0, (worksheet.flows_h44||0), 0.002); end
  def test_flows_i44; assert_in_delta(0.0, (worksheet.flows_i44||0), 0.002); end
  def test_flows_j44; assert_in_delta(0.0, (worksheet.flows_j44||0), 0.002); end
  def test_flows_k44; assert_in_delta(0.0, (worksheet.flows_k44||0), 0.002); end
  def test_flows_l44; assert_in_delta(0.0, (worksheet.flows_l44||0), 0.002); end
  def test_flows_m44; assert_in_delta(0.0, (worksheet.flows_m44||0), 0.002); end
  def test_flows_c45; assert_equal("Solar Thermal", worksheet.flows_c45.to_s.gsub(/[\n\r]+/,'')); end
  def test_flows_d45; assert_equal("Heating and cooling - homes", worksheet.flows_d45.to_s.gsub(/[\n\r]+/,'')); end
  def test_flows_e45; assert_in_epsilon(5.5260576, worksheet.flows_e45, 0.002); end
  def test_flows_f45; assert_in_epsilon(5.7673727999999995, worksheet.flows_f45, 0.002); end
  def test_flows_g45; assert_in_epsilon(6.1248096, worksheet.flows_g45, 0.002); end
  def test_flows_h45; assert_in_epsilon(6.394550399999999, worksheet.flows_h45, 0.002); end
  def test_flows_i45; assert_in_epsilon(6.6189312000000005, worksheet.flows_i45, 0.002); end
  def test_flows_j45; assert_in_epsilon(6.8046048, worksheet.flows_j45, 0.002); end
  def test_flows_k45; assert_in_epsilon(6.959131200000002, worksheet.flows_k45, 0.002); end
  def test_flows_l45; assert_in_epsilon(7.080998400000001, worksheet.flows_l45, 0.002); end
  def test_flows_m45; assert_in_epsilon(7.170206399999999, worksheet.flows_m45, 0.002); end
  def test_flows_c46; assert_equal("H2", worksheet.flows_c46.to_s.gsub(/[\n\r]+/,'')); end
  def test_flows_d46; assert_equal("Road transport", worksheet.flows_d46.to_s.gsub(/[\n\r]+/,'')); end
  def test_flows_e46; assert_in_delta(0.0, (worksheet.flows_e46||0), 0.002); end
  def test_flows_f46; assert_in_delta(0.0, (worksheet.flows_f46||0), 0.002); end
  def test_flows_g46; assert_in_delta(0.0, (worksheet.flows_g46||0), 0.002); end
  def test_flows_h46; assert_in_delta(0.0, (worksheet.flows_h46||0), 0.002); end
  def test_flows_i46; assert_in_delta(0.0, (worksheet.flows_i46||0), 0.002); end
  def test_flows_j46; assert_in_delta(0.0, (worksheet.flows_j46||0), 0.002); end
  def test_flows_k46; assert_in_delta(0.0, (worksheet.flows_k46||0), 0.002); end
  def test_flows_l46; assert_in_delta(0.0, (worksheet.flows_l46||0), 0.002); end
  def test_flows_m46; assert_in_delta(0.0, (worksheet.flows_m46||0), 0.002); end
  def test_flows_c47; assert_equal("Pumped heat", worksheet.flows_c47.to_s.gsub(/[\n\r]+/,'')); end
  def test_flows_d47; assert_equal("Heating and cooling - homes", worksheet.flows_d47.to_s.gsub(/[\n\r]+/,'')); end
  def test_flows_e47; assert_in_epsilon(167.30893426947367, worksheet.flows_e47, 0.002); end
  def test_flows_f47; assert_in_epsilon(174.61508122947365, worksheet.flows_f47, 0.002); end
  def test_flows_g47; assert_in_epsilon(185.43696807999999, worksheet.flows_g47, 0.002); end
  def test_flows_h47; assert_in_epsilon(193.60373886736838, worksheet.flows_h47, 0.002); end
  def test_flows_i47; assert_in_epsilon(200.39717376, worksheet.flows_i47, 0.002); end
  def test_flows_j47; assert_in_epsilon(206.0186953557895, worksheet.flows_j47, 0.002); end
  def test_flows_k47; assert_in_epsilon(210.6971929705263, worksheet.flows_k47, 0.002); end
  def test_flows_l47; assert_in_epsilon(214.38688874105262, worksheet.flows_l47, 0.002); end
  def test_flows_m47; assert_in_epsilon(217.08778266736843, worksheet.flows_m47, 0.002); end
  def test_flows_c48; assert_equal("Pumped heat", worksheet.flows_c48.to_s.gsub(/[\n\r]+/,'')); end
  def test_flows_d48; assert_equal("Heating and cooling - commercial", worksheet.flows_d48.to_s.gsub(/[\n\r]+/,'')); end
  def test_flows_e48; assert_in_epsilon(199.9536, worksheet.flows_e48, 0.002); end
  def test_flows_f48; assert_in_epsilon(204.84710796255828, worksheet.flows_f48, 0.002); end
  def test_flows_g48; assert_in_epsilon(215.2747735400602, worksheet.flows_g48, 0.002); end
  def test_flows_h48; assert_in_epsilon(221.79917598449546, worksheet.flows_h48, 0.002); end
  def test_flows_i48; assert_in_epsilon(226.98786100696879, worksheet.flows_i48, 0.002); end
  def test_flows_j48; assert_in_epsilon(231.11621726114385, worksheet.flows_j48, 0.002); end
  def test_flows_k48; assert_in_epsilon(234.07953109727433, worksheet.flows_k48, 0.002); end
  def test_flows_l48; assert_in_epsilon(235.87780251536012, worksheet.flows_l48, 0.002); end
  def test_flows_m48; assert_in_epsilon(236.51103151540144, worksheet.flows_m48, 0.002); end
  def test_flows_c49; assert_equal("District heating", worksheet.flows_c49.to_s.gsub(/[\n\r]+/,'')); end
  def test_flows_d49; assert_equal("Heating and cooling - homes", worksheet.flows_d49.to_s.gsub(/[\n\r]+/,'')); end
  def test_flows_e49; assert_equal(:na, worksheet.flows_e49); end
  def test_flows_f49; assert_equal(:na, worksheet.flows_f49); end
  def test_flows_g49; assert_equal(:na, worksheet.flows_g49); end
  def test_flows_h49; assert_equal(:na, worksheet.flows_h49); end
  def test_flows_i49; assert_equal(:na, worksheet.flows_i49); end
  def test_flows_j49; assert_equal(:na, worksheet.flows_j49); end
  def test_flows_k49; assert_equal(:na, worksheet.flows_k49); end
  def test_flows_l49; assert_equal(:na, worksheet.flows_l49); end
  def test_flows_m49; assert_equal(:na, worksheet.flows_m49); end
  def test_flows_c50; assert_equal("District heating", worksheet.flows_c50.to_s.gsub(/[\n\r]+/,'')); end
  def test_flows_d50; assert_equal("Heating and cooling - commercial", worksheet.flows_d50.to_s.gsub(/[\n\r]+/,'')); end
  def test_flows_e50; assert_equal(:na, worksheet.flows_e50); end
  def test_flows_f50; assert_equal(:na, worksheet.flows_f50); end
  def test_flows_g50; assert_equal(:na, worksheet.flows_g50); end
  def test_flows_h50; assert_equal(:na, worksheet.flows_h50); end
  def test_flows_i50; assert_equal(:na, worksheet.flows_i50); end
  def test_flows_j50; assert_equal(:na, worksheet.flows_j50); end
  def test_flows_k50; assert_equal(:na, worksheet.flows_k50); end
  def test_flows_l50; assert_equal(:na, worksheet.flows_l50); end
  def test_flows_m50; assert_equal(:na, worksheet.flows_m50); end
  def test_flows_c51; assert_equal("District heating", worksheet.flows_c51.to_s.gsub(/[\n\r]+/,'')); end
  def test_flows_d51; assert_equal("Industry", worksheet.flows_d51.to_s.gsub(/[\n\r]+/,'')); end
  def test_flows_e51; assert_equal(:na, worksheet.flows_e51); end
  def test_flows_f51; assert_equal(:na, worksheet.flows_f51); end
  def test_flows_g51; assert_equal(:na, worksheet.flows_g51); end
  def test_flows_h51; assert_equal(:na, worksheet.flows_h51); end
  def test_flows_i51; assert_equal(:na, worksheet.flows_i51); end
  def test_flows_j51; assert_equal(:na, worksheet.flows_j51); end
  def test_flows_k51; assert_equal(:na, worksheet.flows_k51); end
  def test_flows_l51; assert_equal(:na, worksheet.flows_l51); end
  def test_flows_m51; assert_equal(:na, worksheet.flows_m51); end
  def test_flows_c52; assert_equal("Electricity grid", worksheet.flows_c52.to_s.gsub(/[\n\r]+/,'')); end
  def test_flows_d52; assert_equal("Heating and cooling - homes", worksheet.flows_d52.to_s.gsub(/[\n\r]+/,'')); end
  def test_flows_e52; assert_in_epsilon(637.9302219518596, worksheet.flows_e52, 0.002); end
  def test_flows_f52; assert_in_epsilon(665.7877417678596, worksheet.flows_f52, 0.002); end
  def test_flows_g52; assert_in_epsilon(707.0503839013334, worksheet.flows_g52, 0.002); end
  def test_flows_h52; assert_in_epsilon(738.1893659512982, worksheet.flows_h52, 0.002); end
  def test_flows_i52; assert_in_epsilon(764.091972096, worksheet.flows_i52, 0.002); end
  def test_flows_j52; assert_in_epsilon(785.5262041348772, worksheet.flows_j52, 0.002); end
  def test_flows_k52; assert_in_epsilon(803.3647913854736, worksheet.flows_k52, 0.002); end
  def test_flows_l52; assert_in_epsilon(817.4331879842807, worksheet.flows_l52, 0.002); end
  def test_flows_m52; assert_in_epsilon(827.7313939312984, worksheet.flows_m52, 0.002); end
  def test_flows_c53; assert_equal("Solid", worksheet.flows_c53.to_s.gsub(/[\n\r]+/,'')); end
  def test_flows_d53; assert_equal("Heating and cooling - homes", worksheet.flows_d53.to_s.gsub(/[\n\r]+/,'')); end
  def test_flows_e53; assert_in_epsilon(13.395780235720279, worksheet.flows_e53, 0.002); end
  def test_flows_f53; assert_in_epsilon(13.980755207160836, worksheet.flows_f53, 0.002); end
  def test_flows_g53; assert_in_epsilon(14.847221894181818, worksheet.flows_g53, 0.002); end
  def test_flows_h53; assert_in_epsilon(15.501103691832169, worksheet.flows_h53, 0.002); end
  def test_flows_i53; assert_in_epsilon(16.045027788083917, worksheet.flows_i53, 0.002); end
  def test_flows_j53; assert_in_epsilon(16.495121312475526, worksheet.flows_j53, 0.002); end
  def test_flows_k53; assert_in_epsilon(16.86971054857343, worksheet.flows_k53, 0.002); end
  def test_flows_l53; assert_in_epsilon(17.165130239664336, worksheet.flows_l53, 0.002); end
  def test_flows_m53; assert_in_epsilon(17.38138038574825, worksheet.flows_m53, 0.002); end
  def test_flows_c54; assert_equal("Liquid", worksheet.flows_c54.to_s.gsub(/[\n\r]+/,'')); end
  def test_flows_d54; assert_equal("Heating and cooling - homes", worksheet.flows_d54.to_s.gsub(/[\n\r]+/,'')); end
  def test_flows_e54; assert_in_epsilon(9.252735333333334, worksheet.flows_e54, 0.002); end
  def test_flows_f54; assert_in_epsilon(9.656789333333332, worksheet.flows_f54, 0.002); end
  def test_flows_g54; assert_in_epsilon(10.255275333333334, worksheet.flows_g54, 0.002); end
  def test_flows_h54; assert_in_epsilon(10.706924666666668, worksheet.flows_h54, 0.002); end
  def test_flows_i54; assert_in_epsilon(11.082624000000001, worksheet.flows_i54, 0.002); end
  def test_flows_j54; assert_in_epsilon(11.393512666666668, worksheet.flows_j54, 0.002); end
  def test_flows_k54; assert_in_epsilon(11.652249000000001, worksheet.flows_k54, 0.002); end
  def test_flows_l54; assert_in_epsilon(11.856301333333334, worksheet.flows_l54, 0.002); end
  def test_flows_m54; assert_in_epsilon(12.005669666666668, worksheet.flows_m54, 0.002); end
  def test_flows_c55; assert_equal("Gas", worksheet.flows_c55.to_s.gsub(/[\n\r]+/,'')); end
  def test_flows_d55; assert_equal("Heating and cooling - homes", worksheet.flows_d55.to_s.gsub(/[\n\r]+/,'')); end
  def test_flows_e55; assert_in_epsilon(280.1879416526582, worksheet.flows_e55, 0.002); end
  def test_flows_f55; assert_in_epsilon(292.42335685670884, worksheet.flows_f55, 0.002); end
  def test_flows_g55; assert_in_epsilon(310.5464906551898, worksheet.flows_g55, 0.002); end
  def test_flows_h55; assert_in_epsilon(324.2231703068354, worksheet.flows_h55, 0.002); end
  def test_flows_i55; assert_in_epsilon(335.5999598825316, worksheet.flows_i55, 0.002); end
  def test_flows_j55; assert_in_epsilon(345.0141765934177, worksheet.flows_j55, 0.002); end
  def test_flows_k55; assert_in_epsilon(352.8491354521519, worksheet.flows_k55, 0.002); end
  def test_flows_l55; assert_in_epsilon(359.02817345620247, worksheet.flows_l55, 0.002); end
  def test_flows_m55; assert_in_epsilon(363.55129060556965, worksheet.flows_m55, 0.002); end
  def test_flows_c56; assert_equal("Electricity grid", worksheet.flows_c56.to_s.gsub(/[\n\r]+/,'')); end
  def test_flows_d56; assert_equal("Heating and cooling - commercial", worksheet.flows_d56.to_s.gsub(/[\n\r]+/,'')); end
  def test_flows_e56; assert_in_epsilon(311.8038666666667, worksheet.flows_e56, 0.002); end
  def test_flows_f56; assert_in_epsilon(319.43471054389516, worksheet.flows_f56, 0.002); end
  def test_flows_g56; assert_in_epsilon(335.6954152642503, worksheet.flows_g56, 0.002); end
  def test_flows_h56; assert_in_epsilon(345.86944518851453, worksheet.flows_h56, 0.002); end
  def test_flows_i56; assert_in_epsilon(353.9605825970063, worksheet.flows_i56, 0.002); end
  def test_flows_j56; assert_in_epsilon(360.3982633540885, worksheet.flows_j56, 0.002); end
  def test_flows_k56; assert_in_epsilon(365.0191989724135, worksheet.flows_k56, 0.002); end
  def test_flows_l56; assert_in_epsilon(367.8233894519813, worksheet.flows_l56, 0.002); end
  def test_flows_m56; assert_in_epsilon(368.81083479279204, worksheet.flows_m56, 0.002); end
  def test_flows_c57; assert_equal("Solid", worksheet.flows_c57.to_s.gsub(/[\n\r]+/,'')); end
  def test_flows_d57; assert_equal("Heating and cooling - commercial", worksheet.flows_d57.to_s.gsub(/[\n\r]+/,'')); end
  def test_flows_e57; assert_in_epsilon(41.28099740259741, worksheet.flows_e57, 0.002); end
  def test_flows_f57; assert_in_epsilon(42.291276234746256, worksheet.flows_f57, 0.002); end
  def test_flows_g57; assert_in_epsilon(44.4440978674651, worksheet.flows_g57, 0.002); end
  def test_flows_h57; assert_in_epsilon(45.79107956903103, worksheet.flows_h57, 0.002); end
  def test_flows_i57; assert_in_epsilon(46.862298556514205, worksheet.flows_i57, 0.002); end
  def test_flows_j57; assert_in_epsilon(47.714609611707004, worksheet.flows_j57, 0.002); end
  def test_flows_k57; assert_in_epsilon(48.32639429961652, worksheet.flows_k57, 0.002); end
  def test_flows_l57; assert_in_epsilon(48.69765262024273, worksheet.flows_l57, 0.002); end
  def test_flows_m57; assert_in_epsilon(48.82838457358567, worksheet.flows_m57, 0.002); end
  def test_flows_c58; assert_equal("Liquid", worksheet.flows_c58.to_s.gsub(/[\n\r]+/,'')); end
  def test_flows_d58; assert_equal("Heating and cooling - commercial", worksheet.flows_d58.to_s.gsub(/[\n\r]+/,'')); end
  def test_flows_e58; assert_in_epsilon(34.01552941176471, worksheet.flows_e58, 0.002); end
  def test_flows_f58; assert_in_epsilon(34.84799886481335, worksheet.flows_f58, 0.002); end
  def test_flows_g58; assert_in_epsilon(36.62192324100644, worksheet.flows_g58, 0.002); end
  def test_flows_h58; assert_in_epsilon(37.73183575692452, worksheet.flows_h58, 0.002); end
  def test_flows_i58; assert_in_epsilon(38.6145198795926, worksheet.flows_i58, 0.002); end
  def test_flows_j58; assert_in_epsilon(39.31682393206345, worksheet.flows_j58, 0.002); end
  def test_flows_k58; assert_in_epsilon(39.82093433042179, worksheet.flows_k58, 0.002); end
  def test_flows_l58; assert_in_epsilon(40.126851074667634, worksheet.flows_l58, 0.002); end
  def test_flows_m58; assert_in_epsilon(40.23457416480098, worksheet.flows_m58, 0.002); end
  def test_flows_c59; assert_equal("Gas", worksheet.flows_c59.to_s.gsub(/[\n\r]+/,'')); end
  def test_flows_d59; assert_equal("Heating and cooling - commercial", worksheet.flows_d59.to_s.gsub(/[\n\r]+/,'')); end
  def test_flows_e59; assert_in_epsilon(350.8004470588236, worksheet.flows_e59, 0.002); end
  def test_flows_f59; assert_in_epsilon(359.38566273361687, worksheet.flows_f59, 0.002); end
  def test_flows_g59; assert_in_epsilon(377.68005576463804, worksheet.flows_g59, 0.002); end
  def test_flows_h59; assert_in_epsilon(389.1265278176522, worksheet.flows_h59, 0.002); end
  def test_flows_i59; assert_in_epsilon(398.22960485918117, worksheet.flows_i59, 0.002); end
  def test_flows_j59; assert_in_epsilon(405.4724312928273, worksheet.flows_j59, 0.002); end
  def test_flows_k59; assert_in_epsilon(410.67129652201123, worksheet.flows_k59, 0.002); end
  def test_flows_l59; assert_in_epsilon(413.82620054673305, worksheet.flows_l59, 0.002); end
  def test_flows_m59; assert_in_epsilon(414.93714336699276, worksheet.flows_m59, 0.002); end
  def test_flows_c60; assert_equal("Electricity grid", worksheet.flows_c60.to_s.gsub(/[\n\r]+/,'')); end
  def test_flows_d60; assert_equal("Lighting & appliances - homes", worksheet.flows_d60.to_s.gsub(/[\n\r]+/,'')); end
  def test_flows_e60; assert_in_epsilon(804.54245388, worksheet.flows_e60, 0.002); end
  def test_flows_f60; assert_in_epsilon(839.67569664, worksheet.flows_f60, 0.002); end
  def test_flows_g60; assert_in_epsilon(891.7781803542858, worksheet.flows_g60, 0.002); end
  def test_flows_h60; assert_in_epsilon(931.1184950571429, worksheet.flows_h60, 0.002); end
  def test_flows_i60; assert_in_epsilon(963.8589674057143, worksheet.flows_i60, 0.002); end
  def test_flows_j60; assert_in_epsilon(990.9670567028572, worksheet.flows_j60, 0.002); end
  def test_flows_k60; assert_in_epsilon(1013.5426225885715, worksheet.flows_k60, 0.002); end
  def test_flows_l60; assert_in_epsilon(1031.3644771885715, worksheet.flows_l60, 0.002); end
  def test_flows_m60; assert_in_epsilon(1044.4316124, worksheet.flows_m60, 0.002); end
  def test_flows_c61; assert_equal("Gas", worksheet.flows_c61.to_s.gsub(/[\n\r]+/,'')); end
  def test_flows_d61; assert_equal("Lighting & appliances - homes", worksheet.flows_d61.to_s.gsub(/[\n\r]+/,'')); end
  def test_flows_e61; assert_in_epsilon(42.85216452, worksheet.flows_e61, 0.002); end
  def test_flows_f61; assert_in_epsilon(44.72345856, worksheet.flows_f61, 0.002); end
  def test_flows_g61; assert_in_epsilon(47.43220604571428, worksheet.flows_g61, 0.002); end
  def test_flows_h61; assert_in_epsilon(49.45535854285715, worksheet.flows_h61, 0.002); end
  def test_flows_i61; assert_in_epsilon(51.122613394285715, worksheet.flows_i61, 0.002); end
  def test_flows_j61; assert_in_epsilon(52.48668649714286, worksheet.flows_j61, 0.002); end
  def test_flows_k61; assert_in_epsilon(53.60700821142858, worksheet.flows_k61, 0.002); end
  def test_flows_l61; assert_in_epsilon(54.472908411428584, worksheet.flows_l61, 0.002); end
  def test_flows_m61; assert_in_epsilon(55.08539520000001, worksheet.flows_m61, 0.002); end
  def test_flows_c62; assert_equal("Electricity grid", worksheet.flows_c62.to_s.gsub(/[\n\r]+/,'')); end
  def test_flows_d62; assert_equal("Lighting & appliances - commercial", worksheet.flows_d62.to_s.gsub(/[\n\r]+/,'')); end
  def test_flows_e62; assert_in_epsilon(663.287, worksheet.flows_e62, 0.002); end
  def test_flows_f62; assert_in_epsilon(679.5197670817699, worksheet.flows_f62, 0.002); end
  def test_flows_g62; assert_in_epsilon(714.1104672137232, worksheet.flows_g62, 0.002); end
  def test_flows_h62; assert_in_epsilon(735.7532449589708, worksheet.flows_h62, 0.002); end
  def test_flows_i62; assert_in_epsilon(752.965174739186, worksheet.flows_i62, 0.002); end
  def test_flows_j62; assert_in_epsilon(766.6597770607398, worksheet.flows_j62, 0.002); end
  def test_flows_k62; assert_in_epsilon(776.4896953239042, worksheet.flows_k62, 0.002); end
  def test_flows_l62; assert_in_epsilon(782.4549295286791, worksheet.flows_l62, 0.002); end
  def test_flows_m62; assert_in_epsilon(784.5554796750648, worksheet.flows_m62, 0.002); end
  def test_flows_c63; assert_equal("Gas", worksheet.flows_c63.to_s.gsub(/[\n\r]+/,'')); end
  def test_flows_d63; assert_equal("Lighting & appliances - commercial", worksheet.flows_d63.to_s.gsub(/[\n\r]+/,'')); end
  def test_flows_e63; assert_in_epsilon(115.41300000000001, worksheet.flows_e63, 0.002); end
  def test_flows_f63; assert_in_epsilon(118.23752746278507, worksheet.flows_f63, 0.002); end
  def test_flows_g63; assert_in_epsilon(124.25636466949818, worksheet.flows_g63, 0.002); end
  def test_flows_h63; assert_in_epsilon(128.02224264978764, worksheet.flows_h63, 0.002); end
  def test_flows_i63; assert_in_epsilon(131.0171459898561, worksheet.flows_i63, 0.002); end
  def test_flows_j63; assert_in_epsilon(133.40002872046514, worksheet.flows_j63, 0.002); end
  def test_flows_k63; assert_in_epsilon(135.11045023710363, worksheet.flows_k63, 0.002); end
  def test_flows_l63; assert_in_epsilon(136.14841053977156, worksheet.flows_l63, 0.002); end
  def test_flows_m63; assert_in_epsilon(136.51390962846892, worksheet.flows_m63, 0.002); end
  def test_flows_c64; assert_equal("Electricity grid", worksheet.flows_c64.to_s.gsub(/[\n\r]+/,'')); end
  def test_flows_d64; assert_equal("Industry", worksheet.flows_d64.to_s.gsub(/[\n\r]+/,'')); end
  def test_flows_e64; assert_in_epsilon(511.25, worksheet.flows_e64, 0.002); end
  def test_flows_f64; assert_in_epsilon(513.1174424651447, worksheet.flows_f64, 0.002); end
  def test_flows_g64; assert_in_epsilon(561.5243991954882, worksheet.flows_g64, 0.002); end
  def test_flows_h64; assert_in_epsilon(608.0136953567157, worksheet.flows_h64, 0.002); end
  def test_flows_i64; assert_in_epsilon(653.48842006115, worksheet.flows_i64, 0.002); end
  def test_flows_j64; assert_in_epsilon(705.9485880696577, worksheet.flows_j64, 0.002); end
  def test_flows_k64; assert_in_epsilon(756.7543827454789, worksheet.flows_k64, 0.002); end
  def test_flows_l64; assert_in_epsilon(805.8068282588855, worksheet.flows_l64, 0.002); end
  def test_flows_m64; assert_in_epsilon(853.0427098277637, worksheet.flows_m64, 0.002); end
  def test_flows_c65; assert_equal("Solid", worksheet.flows_c65.to_s.gsub(/[\n\r]+/,'')); end
  def test_flows_d65; assert_equal("Industry", worksheet.flows_d65.to_s.gsub(/[\n\r]+/,'')); end
  def test_flows_e65; assert_in_delta(0.0, (worksheet.flows_e65||0), 0.002); end
  def test_flows_f65; assert_in_delta(0.0, (worksheet.flows_f65||0), 0.002); end
  def test_flows_g65; assert_in_delta(0.0, (worksheet.flows_g65||0), 0.002); end
  def test_flows_h65; assert_in_delta(0.0, (worksheet.flows_h65||0), 0.002); end
  def test_flows_i65; assert_in_delta(0.0, (worksheet.flows_i65||0), 0.002); end
  def test_flows_j65; assert_in_delta(0.0, (worksheet.flows_j65||0), 0.002); end
  def test_flows_k65; assert_in_delta(0.0, (worksheet.flows_k65||0), 0.002); end
  def test_flows_l65; assert_in_delta(0.0, (worksheet.flows_l65||0), 0.002); end
  def test_flows_m65; assert_in_delta(0.0, (worksheet.flows_m65||0), 0.002); end
  def test_flows_c66; assert_equal("Liquid", worksheet.flows_c66.to_s.gsub(/[\n\r]+/,'')); end
  def test_flows_d66; assert_equal("Industry", worksheet.flows_d66.to_s.gsub(/[\n\r]+/,'')); end
  def test_flows_e66; assert_in_epsilon(260.5833333333333, worksheet.flows_e66, 0.002); end
  def test_flows_f66; assert_in_epsilon(264.8042835576082, worksheet.flows_f66, 0.002); end
  def test_flows_g66; assert_in_epsilon(235.06882204282846, worksheet.flows_g66, 0.002); end
  def test_flows_h66; assert_in_epsilon(202.25128539403482, worksheet.flows_h66, 0.002); end
  def test_flows_i66; assert_in_epsilon(168.90456238223862, worksheet.flows_i66, 0.002); end
  def test_flows_j66; assert_in_epsilon(147.564606820633, worksheet.flows_j66, 0.002); end
  def test_flows_k66; assert_in_epsilon(126.78054379523225, worksheet.flows_k66, 0.002); end
  def test_flows_l66; assert_in_epsilon(106.80371669801795, worksheet.flows_l66, 0.002); end
  def test_flows_m66; assert_in_epsilon(87.83666663524845, worksheet.flows_m66, 0.002); end
  def test_flows_c67; assert_equal("Gas", worksheet.flows_c67.to_s.gsub(/[\n\r]+/,'')); end
  def test_flows_d67; assert_equal("Industry", worksheet.flows_d67.to_s.gsub(/[\n\r]+/,'')); end
  def test_flows_e67; assert_in_epsilon(641.3611111111112, worksheet.flows_e67, 0.002); end
  def test_flows_f67; assert_in_epsilon(641.4970734311072, worksheet.flows_f67, 0.002); end
  def test_flows_g67; assert_in_epsilon(598.0710678143694, worksheet.flows_g67, 0.002); end
  def test_flows_h67; assert_in_epsilon(554.5684988718108, worksheet.flows_h67, 0.002); end
  def test_flows_i67; assert_in_epsilon(511.0625609584028, worksheet.flows_i67, 0.002); end
  def test_flows_j67; assert_in_epsilon(434.0525871389549, worksheet.flows_j67, 0.002); end
  def test_flows_k67; assert_in_epsilon(357.20164591236585, worksheet.flows_k67, 0.002); end
  def test_flows_l67; assert_in_epsilon(280.52853169742195, worksheet.flows_l67, 0.002); end
  def test_flows_m67; assert_in_epsilon(204.0478786693952, worksheet.flows_m67, 0.002); end
  def test_flows_c68; assert_equal("Electricity grid", worksheet.flows_c68.to_s.gsub(/[\n\r]+/,'')); end
  def test_flows_d68; assert_equal("Agriculture", worksheet.flows_d68.to_s.gsub(/[\n\r]+/,'')); end
  def test_flows_e68; assert_in_epsilon(48.19822, worksheet.flows_e68, 0.002); end
  def test_flows_f68; assert_in_epsilon(47.670967379771184, worksheet.flows_f68, 0.002); end
  def test_flows_g68; assert_in_epsilon(50.41473874043233, worksheet.flows_g68, 0.002); end
  def test_flows_h68; assert_in_epsilon(56.101960101093454, worksheet.flows_h68, 0.002); end
  def test_flows_i68; assert_in_epsilon(54.0195894617546, worksheet.flows_i68, 0.002); end
  def test_flows_j68; assert_in_epsilon(50.652144822415735, worksheet.flows_j68, 0.002); end
  def test_flows_k68; assert_in_epsilon(49.098758183076875, worksheet.flows_k68, 0.002); end
  def test_flows_l68; assert_in_epsilon(52.86478554373801, worksheet.flows_l68, 0.002); end
  def test_flows_m68; assert_in_epsilon(52.283434904399144, worksheet.flows_m68, 0.002); end
  def test_flows_c69; assert_equal("Solid", worksheet.flows_c69.to_s.gsub(/[\n\r]+/,'')); end
  def test_flows_d69; assert_equal("Agriculture", worksheet.flows_d69.to_s.gsub(/[\n\r]+/,'')); end
  def test_flows_e69; assert_in_delta(0.0, (worksheet.flows_e69||0), 0.002); end
  def test_flows_f69; assert_in_delta(0.0, (worksheet.flows_f69||0), 0.002); end
  def test_flows_g69; assert_in_delta(0.0, (worksheet.flows_g69||0), 0.002); end
  def test_flows_h69; assert_in_delta(0.0, (worksheet.flows_h69||0), 0.002); end
  def test_flows_i69; assert_in_delta(0.0, (worksheet.flows_i69||0), 0.002); end
  def test_flows_j69; assert_in_delta(0.0, (worksheet.flows_j69||0), 0.002); end
  def test_flows_k69; assert_in_delta(0.0, (worksheet.flows_k69||0), 0.002); end
  def test_flows_l69; assert_in_delta(0.0, (worksheet.flows_l69||0), 0.002); end
  def test_flows_m69; assert_in_delta(0.0, (worksheet.flows_m69||0), 0.002); end
  def test_flows_c70; assert_equal("Liquid", worksheet.flows_c70.to_s.gsub(/[\n\r]+/,'')); end
  def test_flows_d70; assert_equal("Agriculture", worksheet.flows_d70.to_s.gsub(/[\n\r]+/,'')); end
  def test_flows_e70; assert_in_epsilon(119.89499949252995, worksheet.flows_e70, 0.002); end
  def test_flows_f70; assert_in_epsilon(113.9215941957431, worksheet.flows_f70, 0.002); end
  def test_flows_g70; assert_in_epsilon(129.4446631765115, worksheet.flows_g70, 0.002); end
  def test_flows_h70; assert_in_epsilon(165.89893215727992, worksheet.flows_h70, 0.002); end
  def test_flows_i70; assert_in_epsilon(147.10276913804833, worksheet.flows_i70, 0.002); end
  def test_flows_j70; assert_in_epsilon(119.16830211881673, worksheet.flows_j70, 0.002); end
  def test_flows_k70; assert_in_epsilon(104.13380309958514, worksheet.flows_k70, 0.002); end
  def test_flows_l70; assert_in_epsilon(126.92624808035355, worksheet.flows_l70, 0.002); end
  def test_flows_m70; assert_in_epsilon(118.80400506112196, worksheet.flows_m70, 0.002); end
  def test_flows_c71; assert_equal("Gas", worksheet.flows_c71.to_s.gsub(/[\n\r]+/,'')); end
  def test_flows_d71; assert_equal("Agriculture", worksheet.flows_d71.to_s.gsub(/[\n\r]+/,'')); end
  def test_flows_e71; assert_in_delta(0.0, (worksheet.flows_e71||0), 0.002); end
  def test_flows_f71; assert_in_delta(0.0, (worksheet.flows_f71||0), 0.002); end
  def test_flows_g71; assert_in_delta(0.0, (worksheet.flows_g71||0), 0.002); end
  def test_flows_h71; assert_in_delta(0.0, (worksheet.flows_h71||0), 0.002); end
  def test_flows_i71; assert_in_delta(0.0, (worksheet.flows_i71||0), 0.002); end
  def test_flows_j71; assert_in_delta(0.0, (worksheet.flows_j71||0), 0.002); end
  def test_flows_k71; assert_in_delta(0.0, (worksheet.flows_k71||0), 0.002); end
  def test_flows_l71; assert_in_delta(0.0, (worksheet.flows_l71||0), 0.002); end
  def test_flows_m71; assert_in_delta(0.0, (worksheet.flows_m71||0), 0.002); end
  def test_flows_c72; assert_equal("Electricity grid", worksheet.flows_c72.to_s.gsub(/[\n\r]+/,'')); end
  def test_flows_d72; assert_equal("Road transport", worksheet.flows_d72.to_s.gsub(/[\n\r]+/,'')); end
  def test_flows_e72; assert_in_epsilon(2.055538163484686, worksheet.flows_e72, 0.002); end
  def test_flows_f72; assert_in_epsilon(2.206945244504741, worksheet.flows_f72, 0.002); end
  def test_flows_g72; assert_in_delta(0.6593258845200389, worksheet.flows_g72, 0.002); end
  def test_flows_h72; assert_in_epsilon(52.57499393255383, worksheet.flows_h72, 0.002); end
  def test_flows_i72; assert_in_epsilon(181.31427440423454, worksheet.flows_i72, 0.002); end
  def test_flows_j72; assert_in_epsilon(300.11684447919953, worksheet.flows_j72, 0.002); end
  def test_flows_k72; assert_in_epsilon(388.93666160195016, worksheet.flows_k72, 0.002); end
  def test_flows_l72; assert_in_epsilon(454.2869634378114, worksheet.flows_l72, 0.002); end
  def test_flows_m72; assert_in_epsilon(517.3429679569823, worksheet.flows_m72, 0.002); end
  def test_flows_c73; assert_equal("Liquid", worksheet.flows_c73.to_s.gsub(/[\n\r]+/,'')); end
  def test_flows_d73; assert_equal("Road transport", worksheet.flows_d73.to_s.gsub(/[\n\r]+/,'')); end
  def test_flows_e73; assert_in_epsilon(4038.8138565176205, worksheet.flows_e73, 0.002); end
  def test_flows_f73; assert_in_epsilon(4001.238725459732, worksheet.flows_f73, 0.002); end
  def test_flows_g73; assert_in_epsilon(4285.133654789395, worksheet.flows_g73, 0.002); end
  def test_flows_h73; assert_in_epsilon(4110.824647392457, worksheet.flows_h73, 0.002); end
  def test_flows_i73; assert_in_epsilon(3261.7208905755097, worksheet.flows_i73, 0.002); end
  def test_flows_j73; assert_in_epsilon(2299.5227720038024, worksheet.flows_j73, 0.002); end
  def test_flows_k73; assert_in_epsilon(1450.3811997643206, worksheet.flows_k73, 0.002); end
  def test_flows_l73; assert_in_epsilon(966.8384463228031, worksheet.flows_l73, 0.002); end
  def test_flows_m73; assert_in_epsilon(452.78074587098735, worksheet.flows_m73, 0.002); end
  def test_flows_c74; assert_equal("Electricity grid", worksheet.flows_c74.to_s.gsub(/[\n\r]+/,'')); end
  def test_flows_d74; assert_equal("Rail transport", worksheet.flows_d74.to_s.gsub(/[\n\r]+/,'')); end
  def test_flows_e74; assert_in_epsilon(22.727696241732335, worksheet.flows_e74, 0.002); end
  def test_flows_f74; assert_in_epsilon(23.283916097386456, worksheet.flows_f74, 0.002); end
  def test_flows_g74; assert_in_epsilon(24.757046408266625, worksheet.flows_g74, 0.002); end
  def test_flows_h74; assert_in_epsilon(40.02058564736036, worksheet.flows_h74, 0.002); end
  def test_flows_i74; assert_in_epsilon(41.43144451669802, worksheet.flows_i74, 0.002); end
  def test_flows_j74; assert_in_epsilon(42.59749909987123, worksheet.flows_j74, 0.002); end
  def test_flows_k74; assert_in_epsilon(43.68211740216108, worksheet.flows_k74, 0.002); end
  def test_flows_l74; assert_in_epsilon(44.59056839884604, worksheet.flows_l74, 0.002); end
  def test_flows_m74; assert_in_epsilon(45.317159398399994, worksheet.flows_m74, 0.002); end
  def test_flows_c75; assert_equal("Liquid", worksheet.flows_c75.to_s.gsub(/[\n\r]+/,'')); end
  def test_flows_d75; assert_equal("Rail transport", worksheet.flows_d75.to_s.gsub(/[\n\r]+/,'')); end
  def test_flows_e75; assert_in_epsilon(34.50847085798495, worksheet.flows_e75, 0.002); end
  def test_flows_f75; assert_in_epsilon(37.917474884796796, worksheet.flows_f75, 0.002); end
  def test_flows_g75; assert_in_epsilon(39.72815144805661, worksheet.flows_g75, 0.002); end
  def test_flows_h75; assert_in_epsilon(8.565590762569752, worksheet.flows_h75, 0.002); end
  def test_flows_i75; assert_in_epsilon(8.894707346260429, worksheet.flows_i75, 0.002); end
  def test_flows_j75; assert_in_epsilon(9.187147788057658, worksheet.flows_j75, 0.002); end
  def test_flows_k75; assert_in_epsilon(9.43686998404033, worksheet.flows_k75, 0.002); end
  def test_flows_l75; assert_in_epsilon(9.641888142750057, worksheet.flows_l75, 0.002); end
  def test_flows_m75; assert_in_epsilon(9.3560279904, worksheet.flows_m75, 0.002); end
  def test_flows_c76; assert_equal("Liquid", worksheet.flows_c76.to_s.gsub(/[\n\r]+/,'')); end
  def test_flows_d76; assert_equal("Domestic aviation", worksheet.flows_d76.to_s.gsub(/[\n\r]+/,'')); end
  def test_flows_e76; assert_in_epsilon(804.1, worksheet.flows_e76, 0.002); end
  def test_flows_f76; assert_in_epsilon(863.4, worksheet.flows_f76, 0.002); end
  def test_flows_g76; assert_in_epsilon(859.5216872486457, worksheet.flows_g76, 0.002); end
  def test_flows_h76; assert_in_epsilon(855.6607955185993, worksheet.flows_h76, 0.002); end
  def test_flows_i76; assert_in_epsilon(851.8172465562484, worksheet.flows_i76, 0.002); end
  def test_flows_j76; assert_in_epsilon(847.9909624594883, worksheet.flows_j76, 0.002); end
  def test_flows_k76; assert_in_epsilon(844.1818656761435, worksheet.flows_k76, 0.002); end
  def test_flows_l76; assert_in_epsilon(840.3898790023957, worksheet.flows_l76, 0.002); end
  def test_flows_m76; assert_in_epsilon(836.6149255812189, worksheet.flows_m76, 0.002); end
  def test_flows_c77; assert_equal("Liquid", worksheet.flows_c77.to_s.gsub(/[\n\r]+/,'')); end
  def test_flows_d77; assert_equal("National navigation", worksheet.flows_d77.to_s.gsub(/[\n\r]+/,'')); end
  def test_flows_e77; assert_in_epsilon(282.8, worksheet.flows_e77, 0.002); end
  def test_flows_f77; assert_in_epsilon(290.4, worksheet.flows_f77, 0.002); end
  def test_flows_g77; assert_in_epsilon(290.4, worksheet.flows_g77, 0.002); end
  def test_flows_h77; assert_in_epsilon(290.4, worksheet.flows_h77, 0.002); end
  def test_flows_i77; assert_in_epsilon(290.4, worksheet.flows_i77, 0.002); end
  def test_flows_j77; assert_in_epsilon(290.4, worksheet.flows_j77, 0.002); end
  def test_flows_k77; assert_in_epsilon(290.4, worksheet.flows_k77, 0.002); end
  def test_flows_l77; assert_in_epsilon(290.4, worksheet.flows_l77, 0.002); end
  def test_flows_m77; assert_in_epsilon(290.4, worksheet.flows_m77, 0.002); end
  def test_flows_c78; assert_equal("Liquid", worksheet.flows_c78.to_s.gsub(/[\n\r]+/,'')); end
  def test_flows_d78; assert_equal("International aviation", worksheet.flows_d78.to_s.gsub(/[\n\r]+/,'')); end
  def test_flows_e78; assert_in_delta(0.0, (worksheet.flows_e78||0), 0.002); end
  def test_flows_f78; assert_in_delta(0.0, (worksheet.flows_f78||0), 0.002); end
  def test_flows_g78; assert_in_delta(0.0, (worksheet.flows_g78||0), 0.002); end
  def test_flows_h78; assert_in_delta(0.0, (worksheet.flows_h78||0), 0.002); end
  def test_flows_i78; assert_in_delta(0.0, (worksheet.flows_i78||0), 0.002); end
  def test_flows_j78; assert_in_delta(0.0, (worksheet.flows_j78||0), 0.002); end
  def test_flows_k78; assert_in_delta(0.0, (worksheet.flows_k78||0), 0.002); end
  def test_flows_l78; assert_in_delta(0.0, (worksheet.flows_l78||0), 0.002); end
  def test_flows_m78; assert_in_delta(0.0, (worksheet.flows_m78||0), 0.002); end
  def test_flows_c79; assert_equal("Liquid", worksheet.flows_c79.to_s.gsub(/[\n\r]+/,'')); end
  def test_flows_d79; assert_equal("International shipping", worksheet.flows_d79.to_s.gsub(/[\n\r]+/,'')); end
  def test_flows_e79; assert_in_delta(0.0, (worksheet.flows_e79||0), 0.002); end
  def test_flows_f79; assert_in_delta(0.0, (worksheet.flows_f79||0), 0.002); end
  def test_flows_g79; assert_in_delta(0.0, (worksheet.flows_g79||0), 0.002); end
  def test_flows_h79; assert_in_delta(0.0, (worksheet.flows_h79||0), 0.002); end
  def test_flows_i79; assert_in_delta(0.0, (worksheet.flows_i79||0), 0.002); end
  def test_flows_j79; assert_in_delta(0.0, (worksheet.flows_j79||0), 0.002); end
  def test_flows_k79; assert_in_delta(0.0, (worksheet.flows_k79||0), 0.002); end
  def test_flows_l79; assert_in_delta(0.0, (worksheet.flows_l79||0), 0.002); end
  def test_flows_m79; assert_in_delta(0.0, (worksheet.flows_m79||0), 0.002); end
  def test_flows_c80; assert_equal("Electricity grid", worksheet.flows_c80.to_s.gsub(/[\n\r]+/,'')); end
  def test_flows_d80; assert_equal("Geosequestration", worksheet.flows_d80.to_s.gsub(/[\n\r]+/,'')); end
  def test_flows_e80; assert_in_delta(0.0, (worksheet.flows_e80||0), 0.002); end
  def test_flows_f80; assert_in_delta(0.0, (worksheet.flows_f80||0), 0.002); end
  def test_flows_g80; assert_in_delta(0.0, (worksheet.flows_g80||0), 0.002); end
  def test_flows_h80; assert_in_delta(0.0, (worksheet.flows_h80||0), 0.002); end
  def test_flows_i80; assert_in_delta(0.0, (worksheet.flows_i80||0), 0.002); end
  def test_flows_j80; assert_in_delta(0.0, (worksheet.flows_j80||0), 0.002); end
  def test_flows_k80; assert_in_delta(0.0, (worksheet.flows_k80||0), 0.002); end
  def test_flows_l80; assert_in_delta(0.0, (worksheet.flows_l80||0), 0.002); end
  def test_flows_m80; assert_in_delta(0.0, (worksheet.flows_m80||0), 0.002); end
  def test_flows_c81; assert_equal("Gas", worksheet.flows_c81.to_s.gsub(/[\n\r]+/,'')); end
  def test_flows_d81; assert_equal("Losses", worksheet.flows_d81.to_s.gsub(/[\n\r]+/,'')); end
  def test_flows_e81; assert_in_delta(0.0, (worksheet.flows_e81||0), 0.002); end
  def test_flows_f81; assert_in_delta(0.0, (worksheet.flows_f81||0), 0.002); end
  def test_flows_g81; assert_in_delta(0.0, (worksheet.flows_g81||0), 0.002); end
  def test_flows_h81; assert_in_delta(0.0, (worksheet.flows_h81||0), 0.002); end
  def test_flows_i81; assert_in_delta(0.0, (worksheet.flows_i81||0), 0.002); end
  def test_flows_j81; assert_in_delta(0.0, (worksheet.flows_j81||0), 0.002); end
  def test_flows_k81; assert_in_delta(0.0, (worksheet.flows_k81||0), 0.002); end
  def test_flows_l81; assert_in_delta(0.0, (worksheet.flows_l81||0), 0.002); end
  def test_flows_m81; assert_in_delta(0.0, (worksheet.flows_m81||0), 0.002); end
  def test_ghg_d13; assert_equal("Mt CO2e", worksheet.ghg_d13.to_s.gsub(/[\n\r]+/,'')); end
  def test_ghg_e13; assert_in_epsilon(2012.0, worksheet.ghg_e13, 0.002); end
  def test_ghg_f13; assert_in_epsilon(2015.0, worksheet.ghg_f13, 0.002); end
  def test_ghg_g13; assert_in_epsilon(2020.0, worksheet.ghg_g13, 0.002); end
  def test_ghg_h13; assert_in_epsilon(2025.0, worksheet.ghg_h13, 0.002); end
  def test_ghg_i13; assert_in_epsilon(2030.0, worksheet.ghg_i13, 0.002); end
  def test_ghg_j13; assert_in_epsilon(2035.0, worksheet.ghg_j13, 0.002); end
  def test_ghg_k13; assert_in_epsilon(2040.0, worksheet.ghg_k13, 0.002); end
  def test_ghg_l13; assert_in_epsilon(2045.0, worksheet.ghg_l13, 0.002); end
  def test_ghg_m13; assert_in_epsilon(2050.0, worksheet.ghg_m13, 0.002); end
  def test_ghg_d14; assert_equal("Fuel Combustion", worksheet.ghg_d14.to_s.gsub(/[\n\r]+/,'')); end
  def test_ghg_e14; assert_in_epsilon(2.1840817316047474, worksheet.ghg_e14, 0.002); end
  def test_ghg_f14; assert_in_epsilon(2.1101303456019402, worksheet.ghg_f14, 0.002); end
  def test_ghg_g14; assert_in_epsilon(2.1294924986783355, worksheet.ghg_g14, 0.002); end
  def test_ghg_h14; assert_in_epsilon(2.0115974781899753, worksheet.ghg_h14, 0.002); end
  def test_ghg_i14; assert_in_epsilon(1.7052682238513677, worksheet.ghg_i14, 0.002); end
  def test_ghg_j14; assert_in_epsilon(1.3505005907733763, worksheet.ghg_j14, 0.002); end
  def test_ghg_k14; assert_in_epsilon(1.1106606863525028, worksheet.ghg_k14, 0.002); end
  def test_ghg_l14; assert_in_delta(0.9712045112549117, worksheet.ghg_l14, 0.002); end
  def test_ghg_m14; assert_in_delta(0.8185347341337728, worksheet.ghg_m14, 0.002); end
  def test_ghg_d15; assert_equal("Industrial Processes", worksheet.ghg_d15.to_s.gsub(/[\n\r]+/,'')); end
  def test_ghg_e15; assert_in_delta(0.0, (worksheet.ghg_e15||0), 0.002); end
  def test_ghg_f15; assert_in_delta(0.0, (worksheet.ghg_f15||0), 0.002); end
  def test_ghg_g15; assert_in_delta(0.0, (worksheet.ghg_g15||0), 0.002); end
  def test_ghg_h15; assert_in_delta(0.0, (worksheet.ghg_h15||0), 0.002); end
  def test_ghg_i15; assert_in_delta(0.0, (worksheet.ghg_i15||0), 0.002); end
  def test_ghg_j15; assert_in_delta(0.0, (worksheet.ghg_j15||0), 0.002); end
  def test_ghg_k15; assert_in_delta(0.0, (worksheet.ghg_k15||0), 0.002); end
  def test_ghg_l15; assert_in_delta(0.0, (worksheet.ghg_l15||0), 0.002); end
  def test_ghg_m15; assert_in_delta(0.0, (worksheet.ghg_m15||0), 0.002); end
  def test_ghg_d16; assert_equal("Solvent and Other Product Use", worksheet.ghg_d16.to_s.gsub(/[\n\r]+/,'')); end
  def test_ghg_e16; assert_in_delta(0.067065, worksheet.ghg_e16, 0.002); end
  def test_ghg_f16; assert_in_delta(0.07525352202846883, worksheet.ghg_f16, 0.002); end
  def test_ghg_g16; assert_in_delta(0.06264415361510473, worksheet.ghg_g16, 0.002); end
  def test_ghg_h16; assert_in_delta(0.03919120586530995, worksheet.ghg_h16, 0.002); end
  def test_ghg_i16; assert_in_delta(0.02405875688190505, worksheet.ghg_i16, 0.002); end
  def test_ghg_j16; assert_in_delta(0.015309395137064303, worksheet.ghg_j16, 0.002); end
  def test_ghg_k16; assert_in_delta(0.01090895002606769, worksheet.ghg_k16, 0.002); end
  def test_ghg_l16; assert_in_delta(0.010598236167424032, worksheet.ghg_l16, 0.002); end
  def test_ghg_m16; assert_in_delta(0.010258519096678763, worksheet.ghg_m16, 0.002); end
  def test_ghg_d17; assert_equal("Agriculture", worksheet.ghg_d17.to_s.gsub(/[\n\r]+/,'')); end
  def test_ghg_e17; assert_in_epsilon(1.195352572988, worksheet.ghg_e17, 0.002); end
  def test_ghg_f17; assert_in_epsilon(1.122753311552, worksheet.ghg_f17, 0.002); end
  def test_ghg_g17; assert_in_epsilon(1.1278300349486332, worksheet.ghg_g17, 0.002); end
  def test_ghg_h17; assert_in_epsilon(1.132218648401655, worksheet.ghg_h17, 0.002); end
  def test_ghg_i17; assert_in_epsilon(1.1359054446692232, worksheet.ghg_i17, 0.002); end
  def test_ghg_j17; assert_in_epsilon(1.1388767165094946, worksheet.ghg_j17, 0.002); end
  def test_ghg_k17; assert_in_epsilon(1.141118756680627, worksheet.ghg_k17, 0.002); end
  def test_ghg_l17; assert_in_epsilon(1.1426178579407766, worksheet.ghg_l17, 0.002); end
  def test_ghg_m17; assert_in_epsilon(1.1433603130481018, worksheet.ghg_m17, 0.002); end
  def test_ghg_d18; assert_equal("LULUCF", worksheet.ghg_d18.to_s.gsub(/[\n\r]+/,'')); end
  def test_ghg_e18; assert_in_epsilon(-1.19644, worksheet.ghg_e18, 0.002); end
  def test_ghg_f18; assert_in_delta(-0.87562, worksheet.ghg_f18, 0.002); end
  def test_ghg_g18; assert_in_delta(-0.7022785714285713, worksheet.ghg_g18, 0.002); end
  def test_ghg_h18; assert_in_epsilon(-1.0552285714285712, worksheet.ghg_h18, 0.002); end
  def test_ghg_i18; assert_in_epsilon(-1.3675999999999997, worksheet.ghg_i18, 0.002); end
  def test_ghg_j18; assert_in_epsilon(-1.735871428571428, worksheet.ghg_j18, 0.002); end
  def test_ghg_k18; assert_in_epsilon(-1.735871428571428, worksheet.ghg_k18, 0.002); end
  def test_ghg_l18; assert_in_epsilon(-1.735871428571428, worksheet.ghg_l18, 0.002); end
  def test_ghg_m18; assert_in_epsilon(-1.735871428571428, worksheet.ghg_m18, 0.002); end
  def test_ghg_d19; assert_equal("Waste", worksheet.ghg_d19.to_s.gsub(/[\n\r]+/,'')); end
  def test_ghg_e19; assert_in_delta(0.20161137143470464, worksheet.ghg_e19, 0.002); end
  def test_ghg_f19; assert_in_delta(0.18029259770875813, worksheet.ghg_f19, 0.002); end
  def test_ghg_g19; assert_in_delta(0.17078011217152936, worksheet.ghg_g19, 0.002); end
  def test_ghg_h19; assert_in_delta(0.1664526541295771, worksheet.ghg_h19, 0.002); end
  def test_ghg_i19; assert_in_delta(0.16469924644371906, worksheet.ghg_i19, 0.002); end
  def test_ghg_j19; assert_in_delta(0.16436128333514788, worksheet.ghg_j19, 0.002); end
  def test_ghg_k19; assert_in_delta(0.16479836081602334, worksheet.ghg_k19, 0.002); end
  def test_ghg_l19; assert_in_delta(0.16580910442127889, worksheet.ghg_l19, 0.002); end
  def test_ghg_m19; assert_in_delta(0.1666736287669325, worksheet.ghg_m19, 0.002); end
  def test_ghg_d20; assert_equal("Other", worksheet.ghg_d20.to_s.gsub(/[\n\r]+/,'')); end
  def test_ghg_e20; assert_in_delta(0.0, (worksheet.ghg_e20||0), 0.002); end
  def test_ghg_f20; assert_in_delta(0.0, (worksheet.ghg_f20||0), 0.002); end
  def test_ghg_g20; assert_in_delta(0.0, (worksheet.ghg_g20||0), 0.002); end
  def test_ghg_h20; assert_in_delta(0.0, (worksheet.ghg_h20||0), 0.002); end
  def test_ghg_i20; assert_in_delta(0.0, (worksheet.ghg_i20||0), 0.002); end
  def test_ghg_j20; assert_in_delta(0.0, (worksheet.ghg_j20||0), 0.002); end
  def test_ghg_k20; assert_in_delta(0.0, (worksheet.ghg_k20||0), 0.002); end
  def test_ghg_l20; assert_in_delta(0.0, (worksheet.ghg_l20||0), 0.002); end
  def test_ghg_m20; assert_in_delta(0.0, (worksheet.ghg_m20||0), 0.002); end
  def test_ghg_d21; assert_equal("Int'l Aviation & Shipping", worksheet.ghg_d21.to_s.gsub(/[\n\r]+/,'')); end
  def test_ghg_e21; assert_in_delta(0.0, (worksheet.ghg_e21||0), 0.002); end
  def test_ghg_f21; assert_in_delta(0.0, (worksheet.ghg_f21||0), 0.002); end
  def test_ghg_g21; assert_in_delta(0.0, (worksheet.ghg_g21||0), 0.002); end
  def test_ghg_h21; assert_in_delta(0.0, (worksheet.ghg_h21||0), 0.002); end
  def test_ghg_i21; assert_in_delta(0.0, (worksheet.ghg_i21||0), 0.002); end
  def test_ghg_j21; assert_in_delta(0.0, (worksheet.ghg_j21||0), 0.002); end
  def test_ghg_k21; assert_in_delta(0.0, (worksheet.ghg_k21||0), 0.002); end
  def test_ghg_l21; assert_in_delta(0.0, (worksheet.ghg_l21||0), 0.002); end
  def test_ghg_m21; assert_in_delta(0.0, (worksheet.ghg_m21||0), 0.002); end
  def test_ghg_d22; assert_equal("Bioenergy credit", worksheet.ghg_d22.to_s.gsub(/[\n\r]+/,'')); end
  def test_ghg_e22; assert_in_delta(-0.011606790751759494, worksheet.ghg_e22, 0.002); end
  def test_ghg_f22; assert_in_delta(-0.012176722334994176, worksheet.ghg_f22, 0.002); end
  def test_ghg_g22; assert_in_delta(-0.013271635674916443, worksheet.ghg_g22, 0.002); end
  def test_ghg_h22; assert_in_delta(-0.10250138258319945, worksheet.ghg_h22, 0.002); end
  def test_ghg_i22; assert_in_delta(-0.19572545980410858, worksheet.ghg_i22, 0.002); end
  def test_ghg_j22; assert_in_delta(-0.29168922592651003, worksheet.ghg_j22, 0.002); end
  def test_ghg_k22; assert_in_delta(-0.3889735288224664, worksheet.ghg_k22, 0.002); end
  def test_ghg_l22; assert_in_delta(-0.48619400001744695, worksheet.ghg_l22, 0.002); end
  def test_ghg_m22; assert_in_delta(-0.47968119581909274, worksheet.ghg_m22, 0.002); end
  def test_ghg_d23; assert_equal("Carbon capture", worksheet.ghg_d23.to_s.gsub(/[\n\r]+/,'')); end
  def test_ghg_e23; assert_in_delta(0.0, (worksheet.ghg_e23||0), 0.002); end
  def test_ghg_f23; assert_in_delta(0.0, (worksheet.ghg_f23||0), 0.002); end
  def test_ghg_g23; assert_in_delta(0.0, (worksheet.ghg_g23||0), 0.002); end
  def test_ghg_h23; assert_in_delta(0.0, (worksheet.ghg_h23||0), 0.002); end
  def test_ghg_i23; assert_in_delta(0.0, (worksheet.ghg_i23||0), 0.002); end
  def test_ghg_j23; assert_in_delta(0.0, (worksheet.ghg_j23||0), 0.002); end
  def test_ghg_k23; assert_in_delta(0.0, (worksheet.ghg_k23||0), 0.002); end
  def test_ghg_l23; assert_in_delta(0.0, (worksheet.ghg_l23||0), 0.002); end
  def test_ghg_m23; assert_in_delta(0.0, (worksheet.ghg_m23||0), 0.002); end
  def test_ghg_d24; assert_equal("Total", worksheet.ghg_d24.to_s.gsub(/[\n\r]+/,'')); end
  def test_ghg_e24; assert_in_epsilon(2.440063885275692, worksheet.ghg_e24, 0.002); end
  def test_ghg_f24; assert_in_epsilon(2.600633054556173, worksheet.ghg_f24, 0.002); end
  def test_ghg_g24; assert_in_epsilon(2.7751965923101154, worksheet.ghg_g24, 0.002); end
  def test_ghg_h24; assert_in_epsilon(2.1917300325747466, worksheet.ghg_h24, 0.002); end
  def test_ghg_i24; assert_in_epsilon(1.466606212042107, worksheet.ghg_i24, 0.002); end
  def test_ghg_j24; assert_in_delta(0.6414873312571449, worksheet.ghg_j24, 0.002); end
  def test_ghg_k24; assert_in_delta(0.3026417964813263, worksheet.ghg_k24, 0.002); end
  def test_ghg_l24; assert_in_delta(0.0681642811955161, worksheet.ghg_l24, 0.002); end
  def test_ghg_m24; assert_in_delta(-0.0767254293450349, worksheet.ghg_m24, 0.002); end
  def test_ghg_d25; assert_equal("Targets", worksheet.ghg_d25.to_s.gsub(/[\n\r]+/,'')); end
  def test_ghg_g25; assert_in_delta(0.8738974999999999, worksheet.ghg_g25, 0.002); end
  def test_ghg_m25; assert_in_delta(0.249685, worksheet.ghg_m25, 0.002); end
  def test_ghg_d39; assert_equal("Mt CO2e", worksheet.ghg_d39.to_s.gsub(/[\n\r]+/,'')); end
  def test_ghg_e39; assert_in_epsilon(2012.0, worksheet.ghg_e39, 0.002); end
  def test_ghg_f39; assert_in_epsilon(2015.0, worksheet.ghg_f39, 0.002); end
  def test_ghg_g39; assert_in_epsilon(2020.0, worksheet.ghg_g39, 0.002); end
  def test_ghg_h39; assert_in_epsilon(2025.0, worksheet.ghg_h39, 0.002); end
  def test_ghg_i39; assert_in_epsilon(2030.0, worksheet.ghg_i39, 0.002); end
  def test_ghg_j39; assert_in_epsilon(2035.0, worksheet.ghg_j39, 0.002); end
  def test_ghg_k39; assert_in_epsilon(2040.0, worksheet.ghg_k39, 0.002); end
  def test_ghg_l39; assert_in_epsilon(2045.0, worksheet.ghg_l39, 0.002); end
  def test_ghg_m39; assert_in_epsilon(2050.0, worksheet.ghg_m39, 0.002); end
  def test_ghg_d40; assert_equal("Stationary Energy", worksheet.ghg_d40.to_s.gsub(/[\n\r]+/,'')); end
  def test_ghg_e40; assert_in_delta(0.8392652576071284, worksheet.ghg_e40, 0.002); end
  def test_ghg_f40; assert_in_delta(0.7584981295384694, worksheet.ghg_f40, 0.002); end
  def test_ghg_g40; assert_in_delta(0.702126801561999, worksheet.ghg_g40, 0.002); end
  def test_ghg_h40; assert_in_delta(0.6282628933828942, worksheet.ghg_h40, 0.002); end
  def test_ghg_i40; assert_in_delta(0.5438780209566447, worksheet.ghg_i40, 0.002); end
  def test_ghg_j40; assert_in_delta(0.4421916928921714, worksheet.ghg_j40, 0.002); end
  def test_ghg_k40; assert_in_delta(0.42335917342227547, worksheet.ghg_k40, 0.002); end
  def test_ghg_l40; assert_in_delta(0.40216711650832715, worksheet.ghg_l40, 0.002); end
  def test_ghg_m40; assert_in_delta(0.38352792915483774, worksheet.ghg_m40, 0.002); end
  def test_ghg_d41; assert_equal("Transport ", worksheet.ghg_d41.to_s.gsub(/[\n\r]+/,'')); end
  def test_ghg_e41; assert_in_epsilon(1.3142798854170905, worksheet.ghg_e41, 0.002); end
  def test_ghg_f41; assert_in_epsilon(1.3226170205414085, worksheet.ghg_f41, 0.002); end
  def test_ghg_g41; assert_in_epsilon(1.3943968623851395, worksheet.ghg_g41, 0.002); end
  def test_ghg_h41; assert_in_epsilon(1.341081050809181, worksheet.ghg_h41, 0.002); end
  def test_ghg_i41; assert_in_epsilon(1.1239239469271012, worksheet.ghg_i41, 0.002); end
  def test_ghg_j41; assert_in_delta(0.8779573950742079, worksheet.ghg_j41, 0.002); end
  def test_ghg_k41; assert_in_delta(0.6607792132843953, worksheet.ghg_k41, 0.002); end
  def test_ghg_l41; assert_in_delta(0.5367099863133303, worksheet.ghg_l41, 0.002); end
  def test_ghg_m41; assert_in_delta(0.4047480866034742, worksheet.ghg_m41, 0.002); end
  def test_ghg_d42; assert_equal("Industrial Processes", worksheet.ghg_d42.to_s.gsub(/[\n\r]+/,'')); end
  def test_ghg_e42; assert_in_delta(0.0, (worksheet.ghg_e42||0), 0.002); end
  def test_ghg_f42; assert_in_delta(0.0, (worksheet.ghg_f42||0), 0.002); end
  def test_ghg_g42; assert_in_delta(0.0, (worksheet.ghg_g42||0), 0.002); end
  def test_ghg_h42; assert_in_delta(0.0, (worksheet.ghg_h42||0), 0.002); end
  def test_ghg_i42; assert_in_delta(0.0, (worksheet.ghg_i42||0), 0.002); end
  def test_ghg_j42; assert_in_delta(0.0, (worksheet.ghg_j42||0), 0.002); end
  def test_ghg_k42; assert_in_delta(0.0, (worksheet.ghg_k42||0), 0.002); end
  def test_ghg_l42; assert_in_delta(0.0, (worksheet.ghg_l42||0), 0.002); end
  def test_ghg_m42; assert_in_delta(0.0, (worksheet.ghg_m42||0), 0.002); end
  def test_ghg_d43; assert_equal("Solvent and Other Product Use", worksheet.ghg_d43.to_s.gsub(/[\n\r]+/,'')); end
  def test_ghg_e43; assert_in_delta(0.067065, worksheet.ghg_e43, 0.002); end
  def test_ghg_f43; assert_in_delta(0.07525352202846883, worksheet.ghg_f43, 0.002); end
  def test_ghg_g43; assert_in_delta(0.06264415361510473, worksheet.ghg_g43, 0.002); end
  def test_ghg_h43; assert_in_delta(0.03919120586530995, worksheet.ghg_h43, 0.002); end
  def test_ghg_i43; assert_in_delta(0.02405875688190505, worksheet.ghg_i43, 0.002); end
  def test_ghg_j43; assert_in_delta(0.015309395137064303, worksheet.ghg_j43, 0.002); end
  def test_ghg_k43; assert_in_delta(0.01090895002606769, worksheet.ghg_k43, 0.002); end
  def test_ghg_l43; assert_in_delta(0.010598236167424032, worksheet.ghg_l43, 0.002); end
  def test_ghg_m43; assert_in_delta(0.010258519096678763, worksheet.ghg_m43, 0.002); end
  def test_ghg_d44; assert_equal("Agriculture", worksheet.ghg_d44.to_s.gsub(/[\n\r]+/,'')); end
  def test_ghg_e44; assert_in_epsilon(1.195352572988, worksheet.ghg_e44, 0.002); end
  def test_ghg_f44; assert_in_epsilon(1.122753311552, worksheet.ghg_f44, 0.002); end
  def test_ghg_g44; assert_in_epsilon(1.1278300349486332, worksheet.ghg_g44, 0.002); end
  def test_ghg_h44; assert_in_epsilon(1.132218648401655, worksheet.ghg_h44, 0.002); end
  def test_ghg_i44; assert_in_epsilon(1.1359054446692232, worksheet.ghg_i44, 0.002); end
  def test_ghg_j44; assert_in_epsilon(1.1388767165094946, worksheet.ghg_j44, 0.002); end
  def test_ghg_k44; assert_in_epsilon(1.141118756680627, worksheet.ghg_k44, 0.002); end
  def test_ghg_l44; assert_in_epsilon(1.1426178579407766, worksheet.ghg_l44, 0.002); end
  def test_ghg_m44; assert_in_epsilon(1.1433603130481018, worksheet.ghg_m44, 0.002); end
  def test_ghg_d45; assert_equal("Forestry", worksheet.ghg_d45.to_s.gsub(/[\n\r]+/,'')); end
  def test_ghg_e45; assert_in_epsilon(-1.19644, worksheet.ghg_e45, 0.002); end
  def test_ghg_f45; assert_in_delta(-0.87562, worksheet.ghg_f45, 0.002); end
  def test_ghg_g45; assert_in_delta(-0.7022785714285713, worksheet.ghg_g45, 0.002); end
  def test_ghg_h45; assert_in_epsilon(-1.0552285714285712, worksheet.ghg_h45, 0.002); end
  def test_ghg_i45; assert_in_epsilon(-1.3675999999999997, worksheet.ghg_i45, 0.002); end
  def test_ghg_j45; assert_in_epsilon(-1.735871428571428, worksheet.ghg_j45, 0.002); end
  def test_ghg_k45; assert_in_epsilon(-1.735871428571428, worksheet.ghg_k45, 0.002); end
  def test_ghg_l45; assert_in_epsilon(-1.735871428571428, worksheet.ghg_l45, 0.002); end
  def test_ghg_m45; assert_in_epsilon(-1.735871428571428, worksheet.ghg_m45, 0.002); end
  def test_ghg_d46; assert_equal("Waste", worksheet.ghg_d46.to_s.gsub(/[\n\r]+/,'')); end
  def test_ghg_e46; assert_in_delta(0.20161137143470464, worksheet.ghg_e46, 0.002); end
  def test_ghg_f46; assert_in_delta(0.18029259770875813, worksheet.ghg_f46, 0.002); end
  def test_ghg_g46; assert_in_delta(0.17078011217152936, worksheet.ghg_g46, 0.002); end
  def test_ghg_h46; assert_in_delta(0.1664526541295771, worksheet.ghg_h46, 0.002); end
  def test_ghg_i46; assert_in_delta(0.16469924644371906, worksheet.ghg_i46, 0.002); end
  def test_ghg_j46; assert_in_delta(0.16436128333514788, worksheet.ghg_j46, 0.002); end
  def test_ghg_k46; assert_in_delta(0.16479836081602334, worksheet.ghg_k46, 0.002); end
  def test_ghg_l46; assert_in_delta(0.16580910442127889, worksheet.ghg_l46, 0.002); end
  def test_ghg_m46; assert_in_delta(0.1666736287669325, worksheet.ghg_m46, 0.002); end
  def test_ghg_d47; assert_equal("Other", worksheet.ghg_d47.to_s.gsub(/[\n\r]+/,'')); end
  def test_ghg_e47; assert_in_delta(0.0, (worksheet.ghg_e47||0), 0.002); end
  def test_ghg_f47; assert_in_delta(0.0, (worksheet.ghg_f47||0), 0.002); end
  def test_ghg_g47; assert_in_delta(0.0, (worksheet.ghg_g47||0), 0.002); end
  def test_ghg_h47; assert_in_delta(0.0, (worksheet.ghg_h47||0), 0.002); end
  def test_ghg_i47; assert_in_delta(0.0, (worksheet.ghg_i47||0), 0.002); end
  def test_ghg_j47; assert_in_delta(0.0, (worksheet.ghg_j47||0), 0.002); end
  def test_ghg_k47; assert_in_delta(0.0, (worksheet.ghg_k47||0), 0.002); end
  def test_ghg_l47; assert_in_delta(0.0, (worksheet.ghg_l47||0), 0.002); end
  def test_ghg_m47; assert_in_delta(0.0, (worksheet.ghg_m47||0), 0.002); end
  def test_ghg_d48; assert_equal("Int'l Aviation & Shipping", worksheet.ghg_d48.to_s.gsub(/[\n\r]+/,'')); end
  def test_ghg_e48; assert_in_delta(0.0, (worksheet.ghg_e48||0), 0.002); end
  def test_ghg_f48; assert_in_delta(0.0, (worksheet.ghg_f48||0), 0.002); end
  def test_ghg_g48; assert_in_delta(0.0, (worksheet.ghg_g48||0), 0.002); end
  def test_ghg_h48; assert_in_delta(0.0, (worksheet.ghg_h48||0), 0.002); end
  def test_ghg_i48; assert_in_delta(0.0, (worksheet.ghg_i48||0), 0.002); end
  def test_ghg_j48; assert_in_delta(0.0, (worksheet.ghg_j48||0), 0.002); end
  def test_ghg_k48; assert_in_delta(0.0, (worksheet.ghg_k48||0), 0.002); end
  def test_ghg_l48; assert_in_delta(0.0, (worksheet.ghg_l48||0), 0.002); end
  def test_ghg_m48; assert_in_delta(0.0, (worksheet.ghg_m48||0), 0.002); end
  def test_ghg_d49; assert_equal("Bioenergy credit", worksheet.ghg_d49.to_s.gsub(/[\n\r]+/,'')); end
  def test_ghg_e49; assert_in_delta(-0.011606790751759494, worksheet.ghg_e49, 0.002); end
  def test_ghg_f49; assert_in_delta(-0.012176722334994176, worksheet.ghg_f49, 0.002); end
  def test_ghg_g49; assert_in_delta(-0.013271635674916443, worksheet.ghg_g49, 0.002); end
  def test_ghg_h49; assert_in_delta(-0.10250138258319945, worksheet.ghg_h49, 0.002); end
  def test_ghg_i49; assert_in_delta(-0.19572545980410858, worksheet.ghg_i49, 0.002); end
  def test_ghg_j49; assert_in_delta(-0.29168922592651003, worksheet.ghg_j49, 0.002); end
  def test_ghg_k49; assert_in_delta(-0.3889735288224664, worksheet.ghg_k49, 0.002); end
  def test_ghg_l49; assert_in_delta(-0.48619400001744695, worksheet.ghg_l49, 0.002); end
  def test_ghg_m49; assert_in_delta(-0.47968119581909274, worksheet.ghg_m49, 0.002); end
  def test_ghg_d50; assert_equal("Carbon capture", worksheet.ghg_d50.to_s.gsub(/[\n\r]+/,'')); end
  def test_ghg_e50; assert_in_delta(0.0, (worksheet.ghg_e50||0), 0.002); end
  def test_ghg_f50; assert_in_delta(0.0, (worksheet.ghg_f50||0), 0.002); end
  def test_ghg_g50; assert_in_delta(0.0, (worksheet.ghg_g50||0), 0.002); end
  def test_ghg_h50; assert_in_delta(0.0, (worksheet.ghg_h50||0), 0.002); end
  def test_ghg_i50; assert_in_delta(0.0, (worksheet.ghg_i50||0), 0.002); end
  def test_ghg_j50; assert_in_delta(0.0, (worksheet.ghg_j50||0), 0.002); end
  def test_ghg_k50; assert_in_delta(0.0, (worksheet.ghg_k50||0), 0.002); end
  def test_ghg_l50; assert_in_delta(0.0, (worksheet.ghg_l50||0), 0.002); end
  def test_ghg_m50; assert_in_delta(0.0, (worksheet.ghg_m50||0), 0.002); end
  def test_ghg_d51; assert_equal("Total", worksheet.ghg_d51.to_s.gsub(/[\n\r]+/,'')); end
  def test_ghg_e51; assert_in_epsilon(2.4095272966951637, worksheet.ghg_e51, 0.002); end
  def test_ghg_f51; assert_in_epsilon(2.5716178590341108, worksheet.ghg_f51, 0.002); end
  def test_ghg_g51; assert_in_epsilon(2.7422277575789185, worksheet.ghg_g51, 0.002); end
  def test_ghg_h51; assert_in_epsilon(2.149476498576847, worksheet.ghg_h51, 0.002); end
  def test_ghg_i51; assert_in_epsilon(1.429139956074485, worksheet.ghg_i51, 0.002); end
  def test_ghg_j51; assert_in_delta(0.6111358284501479, worksheet.ghg_j51, 0.002); end
  def test_ghg_k51; assert_in_delta(0.2761194968354942, worksheet.ghg_k51, 0.002); end
  def test_ghg_l51; assert_in_delta(0.03583687276226222, worksheet.ghg_l51, 0.002); end
  def test_ghg_m51; assert_in_delta(-0.10698414772049569, worksheet.ghg_m51, 0.002); end
  def test_ghg_d52; assert_equal("Targets", worksheet.ghg_d52.to_s.gsub(/[\n\r]+/,'')); end
  def test_ghg_g52; assert_in_delta(0.8738974999999999, worksheet.ghg_g52, 0.002); end
  def test_ghg_m52; assert_in_delta(0.249685, worksheet.ghg_m52, 0.002); end
  def test_ghg_e69; assert_in_epsilon(1.0313275855144945, worksheet.ghg_e69, 0.002); end
  def test_intermediate_output_b2; assert_equal("Energy source / use charts", worksheet.intermediate_output_b2.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_h3; assert_equal("Historic data:", worksheet.intermediate_output_h3.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_ay3; assert_equal("2050 Calculator calculations", worksheet.intermediate_output_ay3.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_d4; assert_equal("GWh / year", worksheet.intermediate_output_d4.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_f4; assert_equal("2012 (Consistent)", worksheet.intermediate_output_f4.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_h4; assert_in_epsilon(1970.0, worksheet.intermediate_output_h4, 0.002); end
  def test_intermediate_output_i4; assert_in_epsilon(1971.0, worksheet.intermediate_output_i4, 0.002); end
  def test_intermediate_output_j4; assert_in_epsilon(1972.0, worksheet.intermediate_output_j4, 0.002); end
  def test_intermediate_output_k4; assert_in_epsilon(1973.0, worksheet.intermediate_output_k4, 0.002); end
  def test_intermediate_output_l4; assert_in_epsilon(1974.0, worksheet.intermediate_output_l4, 0.002); end
  def test_intermediate_output_m4; assert_in_epsilon(1975.0, worksheet.intermediate_output_m4, 0.002); end
  def test_intermediate_output_n4; assert_in_epsilon(1976.0, worksheet.intermediate_output_n4, 0.002); end
  def test_intermediate_output_o4; assert_in_epsilon(1977.0, worksheet.intermediate_output_o4, 0.002); end
  def test_intermediate_output_p4; assert_in_epsilon(1978.0, worksheet.intermediate_output_p4, 0.002); end
  def test_intermediate_output_q4; assert_in_epsilon(1979.0, worksheet.intermediate_output_q4, 0.002); end
  def test_intermediate_output_r4; assert_in_epsilon(1980.0, worksheet.intermediate_output_r4, 0.002); end
  def test_intermediate_output_s4; assert_in_epsilon(1981.0, worksheet.intermediate_output_s4, 0.002); end
  def test_intermediate_output_t4; assert_in_epsilon(1982.0, worksheet.intermediate_output_t4, 0.002); end
  def test_intermediate_output_u4; assert_in_epsilon(1983.0, worksheet.intermediate_output_u4, 0.002); end
  def test_intermediate_output_v4; assert_in_epsilon(1984.0, worksheet.intermediate_output_v4, 0.002); end
  def test_intermediate_output_w4; assert_in_epsilon(1985.0, worksheet.intermediate_output_w4, 0.002); end
  def test_intermediate_output_x4; assert_in_epsilon(1986.0, worksheet.intermediate_output_x4, 0.002); end
  def test_intermediate_output_y4; assert_in_epsilon(1987.0, worksheet.intermediate_output_y4, 0.002); end
  def test_intermediate_output_z4; assert_in_epsilon(1988.0, worksheet.intermediate_output_z4, 0.002); end
  def test_intermediate_output_aa4; assert_in_epsilon(1989.0, worksheet.intermediate_output_aa4, 0.002); end
  def test_intermediate_output_ab4; assert_in_epsilon(1990.0, worksheet.intermediate_output_ab4, 0.002); end
  def test_intermediate_output_ac4; assert_in_epsilon(1991.0, worksheet.intermediate_output_ac4, 0.002); end
  def test_intermediate_output_ad4; assert_in_epsilon(1992.0, worksheet.intermediate_output_ad4, 0.002); end
  def test_intermediate_output_ae4; assert_in_epsilon(1993.0, worksheet.intermediate_output_ae4, 0.002); end
  def test_intermediate_output_af4; assert_in_epsilon(1994.0, worksheet.intermediate_output_af4, 0.002); end
  def test_intermediate_output_ag4; assert_in_epsilon(1995.0, worksheet.intermediate_output_ag4, 0.002); end
  def test_intermediate_output_ah4; assert_in_epsilon(1996.0, worksheet.intermediate_output_ah4, 0.002); end
  def test_intermediate_output_ai4; assert_in_epsilon(1997.0, worksheet.intermediate_output_ai4, 0.002); end
  def test_intermediate_output_aj4; assert_in_epsilon(1998.0, worksheet.intermediate_output_aj4, 0.002); end
  def test_intermediate_output_ak4; assert_in_epsilon(1999.0, worksheet.intermediate_output_ak4, 0.002); end
  def test_intermediate_output_al4; assert_in_epsilon(2000.0, worksheet.intermediate_output_al4, 0.002); end
  def test_intermediate_output_am4; assert_in_epsilon(2001.0, worksheet.intermediate_output_am4, 0.002); end
  def test_intermediate_output_an4; assert_in_epsilon(2002.0, worksheet.intermediate_output_an4, 0.002); end
  def test_intermediate_output_ao4; assert_in_epsilon(2003.0, worksheet.intermediate_output_ao4, 0.002); end
  def test_intermediate_output_ap4; assert_in_epsilon(2004.0, worksheet.intermediate_output_ap4, 0.002); end
  def test_intermediate_output_aq4; assert_in_epsilon(2005.0, worksheet.intermediate_output_aq4, 0.002); end
  def test_intermediate_output_ar4; assert_in_epsilon(2006.0, worksheet.intermediate_output_ar4, 0.002); end
  def test_intermediate_output_as4; assert_in_epsilon(2007.0, worksheet.intermediate_output_as4, 0.002); end
  def test_intermediate_output_at4; assert_in_epsilon(2008.0, worksheet.intermediate_output_at4, 0.002); end
  def test_intermediate_output_au4; assert_in_epsilon(2009.0, worksheet.intermediate_output_au4, 0.002); end
  def test_intermediate_output_av4; assert_in_epsilon(2010.0, worksheet.intermediate_output_av4, 0.002); end
  def test_intermediate_output_aw4; assert_equal("Source:", worksheet.intermediate_output_aw4.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_ay4; assert_in_epsilon(2012.0, worksheet.intermediate_output_ay4, 0.002); end
  def test_intermediate_output_az4; assert_in_epsilon(2015.0, worksheet.intermediate_output_az4, 0.002); end
  def test_intermediate_output_ba4; assert_in_epsilon(2020.0, worksheet.intermediate_output_ba4, 0.002); end
  def test_intermediate_output_bb4; assert_in_epsilon(2025.0, worksheet.intermediate_output_bb4, 0.002); end
  def test_intermediate_output_bc4; assert_in_epsilon(2030.0, worksheet.intermediate_output_bc4, 0.002); end
  def test_intermediate_output_bd4; assert_in_epsilon(2035.0, worksheet.intermediate_output_bd4, 0.002); end
  def test_intermediate_output_be4; assert_in_epsilon(2040.0, worksheet.intermediate_output_be4, 0.002); end
  def test_intermediate_output_bf4; assert_in_epsilon(2045.0, worksheet.intermediate_output_bf4, 0.002); end
  def test_intermediate_output_bg4; assert_in_epsilon(2050.0, worksheet.intermediate_output_bg4, 0.002); end
  def test_intermediate_output_c6; assert_equal("Use", worksheet.intermediate_output_c6.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_c7; assert_equal("T.01", worksheet.intermediate_output_c7.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_d7; assert_equal("Road transport", worksheet.intermediate_output_d7.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_f7; assert_in_epsilon(1545.3534675048522, worksheet.intermediate_output_f7, 0.002); end
  def test_intermediate_output_ay7; assert_in_epsilon(4040.869394681105, worksheet.intermediate_output_ay7, 0.002); end
  def test_intermediate_output_az7; assert_in_epsilon(4003.445670704237, worksheet.intermediate_output_az7, 0.002); end
  def test_intermediate_output_ba7; assert_in_epsilon(4285.792980673915, worksheet.intermediate_output_ba7, 0.002); end
  def test_intermediate_output_bb7; assert_in_epsilon(4163.3996413250115, worksheet.intermediate_output_bb7, 0.002); end
  def test_intermediate_output_bc7; assert_in_epsilon(3443.035164979744, worksheet.intermediate_output_bc7, 0.002); end
  def test_intermediate_output_bd7; assert_in_epsilon(2599.639616483002, worksheet.intermediate_output_bd7, 0.002); end
  def test_intermediate_output_be7; assert_in_epsilon(1839.3178613662706, worksheet.intermediate_output_be7, 0.002); end
  def test_intermediate_output_bf7; assert_in_epsilon(1421.1254097606143, worksheet.intermediate_output_bf7, 0.002); end
  def test_intermediate_output_bg7; assert_in_epsilon(970.1237138279697, worksheet.intermediate_output_bg7, 0.002); end
  def test_intermediate_output_c8; assert_equal("T.02", worksheet.intermediate_output_c8.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_d8; assert_equal("Rail transport", worksheet.intermediate_output_d8.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_f8; assert_in_epsilon(20.376633685500295, worksheet.intermediate_output_f8, 0.002); end
  def test_intermediate_output_ay8; assert_in_epsilon(57.236167099717285, worksheet.intermediate_output_ay8, 0.002); end
  def test_intermediate_output_az8; assert_in_epsilon(61.201390982183256, worksheet.intermediate_output_az8, 0.002); end
  def test_intermediate_output_ba8; assert_in_epsilon(64.48519785632324, worksheet.intermediate_output_ba8, 0.002); end
  def test_intermediate_output_bb8; assert_in_epsilon(48.58617640993011, worksheet.intermediate_output_bb8, 0.002); end
  def test_intermediate_output_bc8; assert_in_epsilon(50.326151862958454, worksheet.intermediate_output_bc8, 0.002); end
  def test_intermediate_output_bd8; assert_in_epsilon(51.784646887928886, worksheet.intermediate_output_bd8, 0.002); end
  def test_intermediate_output_be8; assert_in_epsilon(53.11898738620141, worksheet.intermediate_output_be8, 0.002); end
  def test_intermediate_output_bf8; assert_in_epsilon(54.23245654159609, worksheet.intermediate_output_bf8, 0.002); end
  def test_intermediate_output_bg8; assert_in_epsilon(54.673187388799995, worksheet.intermediate_output_bg8, 0.002); end
  def test_intermediate_output_c9; assert_equal("T.03", worksheet.intermediate_output_c9.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_d9; assert_equal("Domestic aviation", worksheet.intermediate_output_d9.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_f9; assert_in_epsilon(814.2030947231324, worksheet.intermediate_output_f9, 0.002); end
  def test_intermediate_output_ay9; assert_in_epsilon(804.1, worksheet.intermediate_output_ay9, 0.002); end
  def test_intermediate_output_az9; assert_in_epsilon(863.4, worksheet.intermediate_output_az9, 0.002); end
  def test_intermediate_output_ba9; assert_in_epsilon(859.5216872486457, worksheet.intermediate_output_ba9, 0.002); end
  def test_intermediate_output_bb9; assert_in_epsilon(855.6607955185993, worksheet.intermediate_output_bb9, 0.002); end
  def test_intermediate_output_bc9; assert_in_epsilon(851.8172465562484, worksheet.intermediate_output_bc9, 0.002); end
  def test_intermediate_output_bd9; assert_in_epsilon(847.9909624594883, worksheet.intermediate_output_bd9, 0.002); end
  def test_intermediate_output_be9; assert_in_epsilon(844.1818656761435, worksheet.intermediate_output_be9, 0.002); end
  def test_intermediate_output_bf9; assert_in_epsilon(840.3898790023957, worksheet.intermediate_output_bf9, 0.002); end
  def test_intermediate_output_bg9; assert_in_epsilon(836.6149255812189, worksheet.intermediate_output_bg9, 0.002); end
  def test_intermediate_output_c10; assert_equal("T.04", worksheet.intermediate_output_c10.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_d10; assert_equal("National navigation", worksheet.intermediate_output_d10.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_f10; assert_in_epsilon(207.55195169231743, worksheet.intermediate_output_f10, 0.002); end
  def test_intermediate_output_ay10; assert_in_epsilon(282.8, worksheet.intermediate_output_ay10, 0.002); end
  def test_intermediate_output_az10; assert_in_epsilon(290.4, worksheet.intermediate_output_az10, 0.002); end
  def test_intermediate_output_ba10; assert_in_epsilon(290.4, worksheet.intermediate_output_ba10, 0.002); end
  def test_intermediate_output_bb10; assert_in_epsilon(290.4, worksheet.intermediate_output_bb10, 0.002); end
  def test_intermediate_output_bc10; assert_in_epsilon(290.4, worksheet.intermediate_output_bc10, 0.002); end
  def test_intermediate_output_bd10; assert_in_epsilon(290.4, worksheet.intermediate_output_bd10, 0.002); end
  def test_intermediate_output_be10; assert_in_epsilon(290.4, worksheet.intermediate_output_be10, 0.002); end
  def test_intermediate_output_bf10; assert_in_epsilon(290.4, worksheet.intermediate_output_bf10, 0.002); end
  def test_intermediate_output_bg10; assert_in_epsilon(290.4, worksheet.intermediate_output_bg10, 0.002); end
  def test_intermediate_output_c11; assert_equal("T.05", worksheet.intermediate_output_c11.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_d11; assert_equal("International aviation", worksheet.intermediate_output_d11.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_f11; assert_in_delta(0.0, (worksheet.intermediate_output_f11||0), 0.002); end
  def test_intermediate_output_ay11; assert_in_delta(0.0, (worksheet.intermediate_output_ay11||0), 0.002); end
  def test_intermediate_output_az11; assert_in_delta(0.0, (worksheet.intermediate_output_az11||0), 0.002); end
  def test_intermediate_output_ba11; assert_in_delta(0.0, (worksheet.intermediate_output_ba11||0), 0.002); end
  def test_intermediate_output_bb11; assert_in_delta(0.0, (worksheet.intermediate_output_bb11||0), 0.002); end
  def test_intermediate_output_bc11; assert_in_delta(0.0, (worksheet.intermediate_output_bc11||0), 0.002); end
  def test_intermediate_output_bd11; assert_in_delta(0.0, (worksheet.intermediate_output_bd11||0), 0.002); end
  def test_intermediate_output_be11; assert_in_delta(0.0, (worksheet.intermediate_output_be11||0), 0.002); end
  def test_intermediate_output_bf11; assert_in_delta(0.0, (worksheet.intermediate_output_bf11||0), 0.002); end
  def test_intermediate_output_bg11; assert_in_delta(0.0, (worksheet.intermediate_output_bg11||0), 0.002); end
  def test_intermediate_output_c12; assert_equal("T.06", worksheet.intermediate_output_c12.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_d12; assert_equal("International shipping", worksheet.intermediate_output_d12.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_f12; assert_in_delta(0.0, (worksheet.intermediate_output_f12||0), 0.002); end
  def test_intermediate_output_ay12; assert_in_delta(0.0, (worksheet.intermediate_output_ay12||0), 0.002); end
  def test_intermediate_output_az12; assert_in_delta(0.0, (worksheet.intermediate_output_az12||0), 0.002); end
  def test_intermediate_output_ba12; assert_in_delta(0.0, (worksheet.intermediate_output_ba12||0), 0.002); end
  def test_intermediate_output_bb12; assert_in_delta(0.0, (worksheet.intermediate_output_bb12||0), 0.002); end
  def test_intermediate_output_bc12; assert_in_delta(0.0, (worksheet.intermediate_output_bc12||0), 0.002); end
  def test_intermediate_output_bd12; assert_in_delta(0.0, (worksheet.intermediate_output_bd12||0), 0.002); end
  def test_intermediate_output_be12; assert_in_delta(0.0, (worksheet.intermediate_output_be12||0), 0.002); end
  def test_intermediate_output_bf12; assert_in_delta(0.0, (worksheet.intermediate_output_bf12||0), 0.002); end
  def test_intermediate_output_bg12; assert_in_delta(0.0, (worksheet.intermediate_output_bg12||0), 0.002); end
  def test_intermediate_output_d13; assert_equal("Transport", worksheet.intermediate_output_d13.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_f13; assert_in_epsilon(2587.4851476058025, worksheet.intermediate_output_f13, 0.002); end
  def test_intermediate_output_ay13; assert_in_epsilon(5185.005561780823, worksheet.intermediate_output_ay13, 0.002); end
  def test_intermediate_output_az13; assert_in_epsilon(5218.447061686419, worksheet.intermediate_output_az13, 0.002); end
  def test_intermediate_output_ba13; assert_in_epsilon(5500.199865778883, worksheet.intermediate_output_ba13, 0.002); end
  def test_intermediate_output_bb13; assert_in_epsilon(5358.04661325354, worksheet.intermediate_output_bb13, 0.002); end
  def test_intermediate_output_bc13; assert_in_epsilon(4635.578563398951, worksheet.intermediate_output_bc13, 0.002); end
  def test_intermediate_output_bd13; assert_in_epsilon(3789.8152258304194, worksheet.intermediate_output_bd13, 0.002); end
  def test_intermediate_output_be13; assert_in_epsilon(3027.0187144286156, worksheet.intermediate_output_be13, 0.002); end
  def test_intermediate_output_bf13; assert_in_epsilon(2606.147745304606, worksheet.intermediate_output_bf13, 0.002); end
  def test_intermediate_output_bg13; assert_in_epsilon(2151.811826797989, worksheet.intermediate_output_bg13, 0.002); end
  def test_intermediate_output_c14; assert_equal("I.01", worksheet.intermediate_output_c14.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_d14; assert_equal("Industry", worksheet.intermediate_output_d14.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_f14; assert_in_epsilon(946.5004244721243, worksheet.intermediate_output_f14, 0.002); end
  def test_intermediate_output_ay14; assert_in_epsilon(2112.6765528258634, worksheet.intermediate_output_ay14, 0.002); end
  def test_intermediate_output_az14; assert_in_epsilon(2112.400249918263, worksheet.intermediate_output_az14, 0.002); end
  def test_intermediate_output_ba14; assert_in_epsilon(2129.665758867159, worksheet.intermediate_output_ba14, 0.002); end
  def test_intermediate_output_bb14; assert_in_epsilon(2165.7057375641625, worksheet.intermediate_output_bb14, 0.002); end
  def test_intermediate_output_bc14; assert_in_epsilon(2137.154702188106, worksheet.intermediate_output_bc14, 0.002); end
  def test_intermediate_output_bd14; assert_in_epsilon(2097.1340693889533, worksheet.intermediate_output_bd14, 0.002); end
  def test_intermediate_output_be14; assert_in_epsilon(2070.850700195455, worksheet.intermediate_output_be14, 0.002); end
  def test_intermediate_output_bf14; assert_in_epsilon(2086.9081166063374, worksheet.intermediate_output_bf14, 0.002); end
  def test_intermediate_output_bg14; assert_in_epsilon(2067.0518831200143, worksheet.intermediate_output_bg14, 0.002); end
  def test_intermediate_output_c15; assert_equal("H.01", worksheet.intermediate_output_c15.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_d15; assert_equal("Heating & cooling", worksheet.intermediate_output_d15.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_f15; assert_in_epsilon(1121.5004244721245, worksheet.intermediate_output_f15, 0.002); end
  def test_intermediate_output_ay15; assert_in_epsilon(2272.665669413425, worksheet.intermediate_output_ay15, 0.002); end
  def test_intermediate_output_az15; assert_in_epsilon(2353.90732310535, worksheet.intermediate_output_az15, 0.002); end
  def test_intermediate_output_ba15; assert_in_epsilon(2489.1551750352696, worksheet.intermediate_output_ba15, 0.002); end
  def test_intermediate_output_bb15; assert_in_epsilon(2584.9124741754645, worksheet.intermediate_output_bb15, 0.002); end
  def test_intermediate_output_bc15; assert_in_epsilon(2663.4481347981773, worksheet.intermediate_output_bc15, 0.002); end
  def test_intermediate_output_bd15; assert_in_epsilon(2727.660803157485, worksheet.intermediate_output_bd15, 0.002); end
  def test_intermediate_output_be15; assert_in_epsilon(2778.885441577627, worksheet.intermediate_output_be15, 0.002); end
  def test_intermediate_output_bf15; assert_in_epsilon(2816.7568286432397, worksheet.intermediate_output_bf15, 0.002); end
  def test_intermediate_output_bg15; assert_in_epsilon(2841.274964354324, worksheet.intermediate_output_bg15, 0.002); end
  def test_intermediate_output_c16; assert_equal("L.01", worksheet.intermediate_output_c16.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_d16; assert_equal("Lighting & appliances", worksheet.intermediate_output_d16.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_f16; assert_in_epsilon(946.5004244721243, worksheet.intermediate_output_f16, 0.002); end
  def test_intermediate_output_ay16; assert_in_epsilon(1626.0946184000002, worksheet.intermediate_output_ay16, 0.002); end
  def test_intermediate_output_az16; assert_in_epsilon(1682.156449744555, worksheet.intermediate_output_az16, 0.002); end
  def test_intermediate_output_ba16; assert_in_epsilon(1777.5772182832213, worksheet.intermediate_output_ba16, 0.002); end
  def test_intermediate_output_bb16; assert_in_epsilon(1844.3493412087585, worksheet.intermediate_output_bb16, 0.002); end
  def test_intermediate_output_bc16; assert_in_epsilon(1898.963901529042, worksheet.intermediate_output_bc16, 0.002); end
  def test_intermediate_output_bd16; assert_in_epsilon(1943.513548981205, worksheet.intermediate_output_bd16, 0.002); end
  def test_intermediate_output_be16; assert_in_epsilon(1978.749776361008, worksheet.intermediate_output_be16, 0.002); end
  def test_intermediate_output_bf16; assert_in_epsilon(2004.4407256684508, worksheet.intermediate_output_bf16, 0.002); end
  def test_intermediate_output_bg16; assert_in_epsilon(2020.5863969035338, worksheet.intermediate_output_bg16, 0.002); end
  def test_intermediate_output_c17; assert_equal("F.01", worksheet.intermediate_output_c17.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_d17; assert_equal("Food consumption [UNUSED]", worksheet.intermediate_output_d17.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_f17; assert_in_delta(0.0, (worksheet.intermediate_output_f17||0), 0.002); end
  def test_intermediate_output_ay17; assert_in_delta(0.0, (worksheet.intermediate_output_ay17||0), 0.002); end
  def test_intermediate_output_az17; assert_in_delta(0.0, (worksheet.intermediate_output_az17||0), 0.002); end
  def test_intermediate_output_ba17; assert_in_delta(0.0, (worksheet.intermediate_output_ba17||0), 0.002); end
  def test_intermediate_output_bb17; assert_in_delta(0.0, (worksheet.intermediate_output_bb17||0), 0.002); end
  def test_intermediate_output_bc17; assert_in_delta(0.0, (worksheet.intermediate_output_bc17||0), 0.002); end
  def test_intermediate_output_bd17; assert_in_delta(0.0, (worksheet.intermediate_output_bd17||0), 0.002); end
  def test_intermediate_output_be17; assert_in_delta(0.0, (worksheet.intermediate_output_be17||0), 0.002); end
  def test_intermediate_output_bf17; assert_in_delta(0.0, (worksheet.intermediate_output_bf17||0), 0.002); end
  def test_intermediate_output_bg17; assert_in_delta(0.0, (worksheet.intermediate_output_bg17||0), 0.002); end
  def test_intermediate_output_d18; assert_equal("Total", worksheet.intermediate_output_d18.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_f18; assert_in_epsilon(5601.986421022175, worksheet.intermediate_output_f18, 0.002); end
  def test_intermediate_output_ay18; assert_in_epsilon(11196.442402420113, worksheet.intermediate_output_ay18, 0.002); end
  def test_intermediate_output_az18; assert_in_epsilon(11366.911084454587, worksheet.intermediate_output_az18, 0.002); end
  def test_intermediate_output_ba18; assert_in_epsilon(11896.598017964532, worksheet.intermediate_output_ba18, 0.002); end
  def test_intermediate_output_bb18; assert_in_epsilon(11953.014166201927, worksheet.intermediate_output_bb18, 0.002); end
  def test_intermediate_output_bc18; assert_in_epsilon(11335.145301914275, worksheet.intermediate_output_bc18, 0.002); end
  def test_intermediate_output_bd18; assert_in_epsilon(10558.123647358063, worksheet.intermediate_output_bd18, 0.002); end
  def test_intermediate_output_be18; assert_in_epsilon(9855.504632562705, worksheet.intermediate_output_be18, 0.002); end
  def test_intermediate_output_bf18; assert_in_epsilon(9514.253416222633, worksheet.intermediate_output_bf18, 0.002); end
  def test_intermediate_output_bg18; assert_in_epsilon(9080.72507117586, worksheet.intermediate_output_bg18, 0.002); end
  def test_intermediate_output_d20; assert_equal("Dummy for charting uses", worksheet.intermediate_output_d20.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_ay20; assert_in_epsilon(68.57754608073083, worksheet.intermediate_output_ay20, 0.002); end
  def test_intermediate_output_az20; assert_in_epsilon(65.85441085840284, worksheet.intermediate_output_az20, 0.002); end
  def test_intermediate_output_ba20; assert_in_epsilon(84.75570016133679, worksheet.intermediate_output_ba20, 0.002); end
  def test_intermediate_output_bb20; assert_in_epsilon(120.71951741383236, worksheet.intermediate_output_bb20, 0.002); end
  def test_intermediate_output_bc20; assert_in_epsilon(110.38965314673806, worksheet.intermediate_output_bc20, 0.002); end
  def test_intermediate_output_bd20; assert_in_epsilon(91.98409778761379, worksheet.intermediate_output_bd20, 0.002); end
  def test_intermediate_output_be20; assert_in_epsilon(83.79931159223452, worksheet.intermediate_output_be20, 0.002); end
  def test_intermediate_output_bf20; assert_in_epsilon(106.4945452405118, worksheet.intermediate_output_bf20, 0.002); end
  def test_intermediate_output_bg20; assert_in_epsilon(103.17462912440715, worksheet.intermediate_output_bg20, 0.002); end
  def test_intermediate_output_c22; assert_equal("Source", worksheet.intermediate_output_c22.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_c23; assert_equal("N.01", worksheet.intermediate_output_c23.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_d23; assert_equal("Nuclear fission", worksheet.intermediate_output_d23.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_f23; assert_in_delta(0.0, (worksheet.intermediate_output_f23||0), 0.002); end
  def test_intermediate_output_ay23; assert_in_delta(0.0, (worksheet.intermediate_output_ay23||0), 0.002); end
  def test_intermediate_output_az23; assert_in_delta(0.0, (worksheet.intermediate_output_az23||0), 0.002); end
  def test_intermediate_output_ba23; assert_in_delta(0.0, (worksheet.intermediate_output_ba23||0), 0.002); end
  def test_intermediate_output_bb23; assert_in_delta(0.0, (worksheet.intermediate_output_bb23||0), 0.002); end
  def test_intermediate_output_bc23; assert_in_delta(0.0, (worksheet.intermediate_output_bc23||0), 0.002); end
  def test_intermediate_output_bd23; assert_in_delta(0.0, (worksheet.intermediate_output_bd23||0), 0.002); end
  def test_intermediate_output_be23; assert_in_delta(0.0, (worksheet.intermediate_output_be23||0), 0.002); end
  def test_intermediate_output_bf23; assert_in_delta(0.0, (worksheet.intermediate_output_bf23||0), 0.002); end
  def test_intermediate_output_bg23; assert_in_delta(0.0, (worksheet.intermediate_output_bg23||0), 0.002); end
  def test_intermediate_output_c24; assert_equal("R.01", worksheet.intermediate_output_c24.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_d24; assert_equal("Solar", worksheet.intermediate_output_d24.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_f24; assert_in_delta(0.0, (worksheet.intermediate_output_f24||0), 0.002); end
  def test_intermediate_output_ay24; assert_in_epsilon(5.740151379966, worksheet.intermediate_output_ay24, 0.002); end
  def test_intermediate_output_az24; assert_in_epsilon(8.238484356479999, worksheet.intermediate_output_az24, 0.002); end
  def test_intermediate_output_ba24; assert_in_epsilon(14.7445550262, worksheet.intermediate_output_ba24, 0.002); end
  def test_intermediate_output_bb24; assert_in_epsilon(19.965032390700003, worksheet.intermediate_output_bb24, 0.002); end
  def test_intermediate_output_bc24; assert_in_epsilon(25.3713407328, worksheet.intermediate_output_bc24, 0.002); end
  def test_intermediate_output_bd24; assert_in_epsilon(30.9037435515, worksheet.intermediate_output_bd24, 0.002); end
  def test_intermediate_output_be24; assert_in_epsilon(36.5241093867, worksheet.intermediate_output_be24, 0.002); end
  def test_intermediate_output_bf24; assert_in_epsilon(42.163755886800004, worksheet.intermediate_output_bf24, 0.002); end
  def test_intermediate_output_bg24; assert_in_epsilon(47.7594179532, worksheet.intermediate_output_bg24, 0.002); end
  def test_intermediate_output_c25; assert_equal("R.02", worksheet.intermediate_output_c25.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_d25; assert_equal("Wind", worksheet.intermediate_output_d25.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_f25; assert_in_delta(0.0, (worksheet.intermediate_output_f25||0), 0.002); end
  def test_intermediate_output_ay25; assert_in_delta(0.0, (worksheet.intermediate_output_ay25||0), 0.002); end
  def test_intermediate_output_az25; assert_in_delta(0.0, (worksheet.intermediate_output_az25||0), 0.002); end
  def test_intermediate_output_ba25; assert_in_delta(0.0, (worksheet.intermediate_output_ba25||0), 0.002); end
  def test_intermediate_output_bb25; assert_in_delta(0.0, (worksheet.intermediate_output_bb25||0), 0.002); end
  def test_intermediate_output_bc25; assert_in_delta(0.0, (worksheet.intermediate_output_bc25||0), 0.002); end
  def test_intermediate_output_bd25; assert_in_delta(0.0, (worksheet.intermediate_output_bd25||0), 0.002); end
  def test_intermediate_output_be25; assert_in_delta(0.0, (worksheet.intermediate_output_be25||0), 0.002); end
  def test_intermediate_output_bf25; assert_in_delta(0.0, (worksheet.intermediate_output_bf25||0), 0.002); end
  def test_intermediate_output_bg25; assert_in_delta(0.0, (worksheet.intermediate_output_bg25||0), 0.002); end
  def test_intermediate_output_c26; assert_equal("R.03", worksheet.intermediate_output_c26.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_d26; assert_equal("Tidal", worksheet.intermediate_output_d26.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_f26; assert_in_delta(0.0, (worksheet.intermediate_output_f26||0), 0.002); end
  def test_intermediate_output_ay26; assert_in_delta(0.0, (worksheet.intermediate_output_ay26||0), 0.002); end
  def test_intermediate_output_az26; assert_in_delta(0.0, (worksheet.intermediate_output_az26||0), 0.002); end
  def test_intermediate_output_ba26; assert_in_delta(0.0, (worksheet.intermediate_output_ba26||0), 0.002); end
  def test_intermediate_output_bb26; assert_in_delta(0.0, (worksheet.intermediate_output_bb26||0), 0.002); end
  def test_intermediate_output_bc26; assert_in_delta(0.0, (worksheet.intermediate_output_bc26||0), 0.002); end
  def test_intermediate_output_bd26; assert_in_delta(0.0, (worksheet.intermediate_output_bd26||0), 0.002); end
  def test_intermediate_output_be26; assert_in_delta(0.0, (worksheet.intermediate_output_be26||0), 0.002); end
  def test_intermediate_output_bf26; assert_in_delta(0.0, (worksheet.intermediate_output_bf26||0), 0.002); end
  def test_intermediate_output_bg26; assert_in_delta(0.0, (worksheet.intermediate_output_bg26||0), 0.002); end
  def test_intermediate_output_c27; assert_equal("R.04", worksheet.intermediate_output_c27.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_d27; assert_equal("Wave", worksheet.intermediate_output_d27.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_f27; assert_in_delta(0.0, (worksheet.intermediate_output_f27||0), 0.002); end
  def test_intermediate_output_ay27; assert_in_delta(0.0, (worksheet.intermediate_output_ay27||0), 0.002); end
  def test_intermediate_output_az27; assert_in_delta(0.0, (worksheet.intermediate_output_az27||0), 0.002); end
  def test_intermediate_output_ba27; assert_in_delta(0.0, (worksheet.intermediate_output_ba27||0), 0.002); end
  def test_intermediate_output_bb27; assert_in_delta(0.0, (worksheet.intermediate_output_bb27||0), 0.002); end
  def test_intermediate_output_bc27; assert_in_delta(0.0, (worksheet.intermediate_output_bc27||0), 0.002); end
  def test_intermediate_output_bd27; assert_in_delta(0.0, (worksheet.intermediate_output_bd27||0), 0.002); end
  def test_intermediate_output_be27; assert_in_delta(0.0, (worksheet.intermediate_output_be27||0), 0.002); end
  def test_intermediate_output_bf27; assert_in_delta(0.0, (worksheet.intermediate_output_bf27||0), 0.002); end
  def test_intermediate_output_bg27; assert_in_delta(0.0, (worksheet.intermediate_output_bg27||0), 0.002); end
  def test_intermediate_output_c28; assert_equal("R.05", worksheet.intermediate_output_c28.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_d28; assert_equal("Geothermal", worksheet.intermediate_output_d28.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_f28; assert_in_delta(0.0, (worksheet.intermediate_output_f28||0), 0.002); end
  def test_intermediate_output_ay28; assert_in_delta(0.0, (worksheet.intermediate_output_ay28||0), 0.002); end
  def test_intermediate_output_az28; assert_in_delta(0.0, (worksheet.intermediate_output_az28||0), 0.002); end
  def test_intermediate_output_ba28; assert_in_delta(0.0, (worksheet.intermediate_output_ba28||0), 0.002); end
  def test_intermediate_output_bb28; assert_in_delta(0.0, (worksheet.intermediate_output_bb28||0), 0.002); end
  def test_intermediate_output_bc28; assert_in_delta(0.0, (worksheet.intermediate_output_bc28||0), 0.002); end
  def test_intermediate_output_bd28; assert_in_delta(0.0, (worksheet.intermediate_output_bd28||0), 0.002); end
  def test_intermediate_output_be28; assert_in_delta(0.0, (worksheet.intermediate_output_be28||0), 0.002); end
  def test_intermediate_output_bf28; assert_in_delta(0.0, (worksheet.intermediate_output_bf28||0), 0.002); end
  def test_intermediate_output_bg28; assert_in_delta(0.0, (worksheet.intermediate_output_bg28||0), 0.002); end
  def test_intermediate_output_c29; assert_equal("R.06", worksheet.intermediate_output_c29.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_d29; assert_equal("Hydro", worksheet.intermediate_output_d29.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_f29; assert_in_delta(0.0, (worksheet.intermediate_output_f29||0), 0.002); end
  def test_intermediate_output_ay29; assert_in_delta(0.0, (worksheet.intermediate_output_ay29||0), 0.002); end
  def test_intermediate_output_az29; assert_in_delta(0.0, (worksheet.intermediate_output_az29||0), 0.002); end
  def test_intermediate_output_ba29; assert_in_delta(0.0, (worksheet.intermediate_output_ba29||0), 0.002); end
  def test_intermediate_output_bb29; assert_in_delta(0.0, (worksheet.intermediate_output_bb29||0), 0.002); end
  def test_intermediate_output_bc29; assert_in_delta(0.0, (worksheet.intermediate_output_bc29||0), 0.002); end
  def test_intermediate_output_bd29; assert_in_delta(0.0, (worksheet.intermediate_output_bd29||0), 0.002); end
  def test_intermediate_output_be29; assert_in_delta(0.0, (worksheet.intermediate_output_be29||0), 0.002); end
  def test_intermediate_output_bf29; assert_in_delta(0.0, (worksheet.intermediate_output_bf29||0), 0.002); end
  def test_intermediate_output_bg29; assert_in_delta(0.0, (worksheet.intermediate_output_bg29||0), 0.002); end
  def test_intermediate_output_c30; assert_equal("Y.02", worksheet.intermediate_output_c30.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_d30; assert_equal("Electricity oversupply (imports)", worksheet.intermediate_output_d30.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_f30; assert_in_epsilon(2182.16, worksheet.intermediate_output_f30, 0.002); end
  def test_intermediate_output_ay30; assert_in_epsilon(2987.0724146840785, worksheet.intermediate_output_ay30, 0.002); end
  def test_intermediate_output_az30; assert_in_epsilon(3073.005172745109, worksheet.intermediate_output_az30, 0.002); end
  def test_intermediate_output_ba30; assert_in_epsilon(3260.7806669424544, worksheet.intermediate_output_ba30, 0.002); end
  def test_intermediate_output_bb30; assert_in_epsilon(3476.1925267936226, worksheet.intermediate_output_bb30, 0.002); end
  def test_intermediate_output_bc30; assert_in_epsilon(3727.3752893544643, worksheet.intermediate_output_bc30, 0.002); end
  def test_intermediate_output_bd30; assert_in_epsilon(3958.793001646037, worksheet.intermediate_output_bd30, 0.002); end
  def test_intermediate_output_be30; assert_in_epsilon(4146.514535709558, worksheet.intermediate_output_be30, 0.002); end
  def test_intermediate_output_bf30; assert_in_epsilon(4300.029380480905, worksheet.intermediate_output_bf30, 0.002); end
  def test_intermediate_output_bg30; assert_in_epsilon(4430.835078737898, worksheet.intermediate_output_bg30, 0.002); end
  def test_intermediate_output_d31; assert_equal("Primary electricity, solar, marine, and net imports", worksheet.intermediate_output_d31.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_f31; assert_in_epsilon(2182.16, worksheet.intermediate_output_f31, 0.002); end
  def test_intermediate_output_ay31; assert_in_epsilon(2992.8125660640444, worksheet.intermediate_output_ay31, 0.002); end
  def test_intermediate_output_az31; assert_in_epsilon(3081.243657101589, worksheet.intermediate_output_az31, 0.002); end
  def test_intermediate_output_ba31; assert_in_epsilon(3275.5252219686545, worksheet.intermediate_output_ba31, 0.002); end
  def test_intermediate_output_bb31; assert_in_epsilon(3496.1575591843225, worksheet.intermediate_output_bb31, 0.002); end
  def test_intermediate_output_bc31; assert_in_epsilon(3752.7466300872643, worksheet.intermediate_output_bc31, 0.002); end
  def test_intermediate_output_bd31; assert_in_epsilon(3989.696745197537, worksheet.intermediate_output_bd31, 0.002); end
  def test_intermediate_output_be31; assert_in_epsilon(4183.038645096258, worksheet.intermediate_output_be31, 0.002); end
  def test_intermediate_output_bf31; assert_in_epsilon(4342.193136367705, worksheet.intermediate_output_bf31, 0.002); end
  def test_intermediate_output_bg31; assert_in_epsilon(4478.594496691097, worksheet.intermediate_output_bg31, 0.002); end
  def test_intermediate_output_c32; assert_equal("R.07", worksheet.intermediate_output_c32.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_d32; assert_equal("Environmental heat", worksheet.intermediate_output_d32.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_f32; assert_in_epsilon(175.0, worksheet.intermediate_output_f32, 0.002); end
  def test_intermediate_output_ay32; assert_in_epsilon(367.2625342694737, worksheet.intermediate_output_ay32, 0.002); end
  def test_intermediate_output_az32; assert_in_epsilon(379.46218919203193, worksheet.intermediate_output_az32, 0.002); end
  def test_intermediate_output_ba32; assert_in_epsilon(400.7117416200602, worksheet.intermediate_output_ba32, 0.002); end
  def test_intermediate_output_bb32; assert_in_epsilon(415.40291485186384, worksheet.intermediate_output_bb32, 0.002); end
  def test_intermediate_output_bc32; assert_in_epsilon(427.3850347669688, worksheet.intermediate_output_bc32, 0.002); end
  def test_intermediate_output_bd32; assert_in_epsilon(437.1349126169333, worksheet.intermediate_output_bd32, 0.002); end
  def test_intermediate_output_be32; assert_in_epsilon(444.7767240678006, worksheet.intermediate_output_be32, 0.002); end
  def test_intermediate_output_bf32; assert_in_epsilon(450.26469125641273, worksheet.intermediate_output_bf32, 0.002); end
  def test_intermediate_output_bg32; assert_in_epsilon(453.59881418276984, worksheet.intermediate_output_bg32, 0.002); end
  def test_intermediate_output_c33; assert_equal("W.01", worksheet.intermediate_output_c33.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_d33; assert_equal("Waste", worksheet.intermediate_output_d33.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_f33; assert_in_epsilon(35.199999999999996, worksheet.intermediate_output_f33, 0.002); end
  def test_intermediate_output_ay33; assert_in_epsilon(463.193384520432, worksheet.intermediate_output_ay33, 0.002); end
  def test_intermediate_output_az33; assert_in_epsilon(364.12733877714226, worksheet.intermediate_output_az33, 0.002); end
  def test_intermediate_output_ba33; assert_in_epsilon(656.4642547549807, worksheet.intermediate_output_ba33, 0.002); end
  def test_intermediate_output_bb33; assert_in_epsilon(1295.0234148231616, worksheet.intermediate_output_bb33, 0.002); end
  def test_intermediate_output_bc33; assert_in_epsilon(1018.0571495412173, worksheet.intermediate_output_bc33, 0.002); end
  def test_intermediate_output_bd33; assert_in_epsilon(589.1210101137841, worksheet.intermediate_output_bd33, 0.002); end
  def test_intermediate_output_be33; assert_in_epsilon(373.1797708990065, worksheet.intermediate_output_be33, 0.002); end
  def test_intermediate_output_bf33; assert_in_epsilon(782.9905470655974, worksheet.intermediate_output_bf33, 0.002); end
  def test_intermediate_output_bg33; assert_in_epsilon(680.3849417200094, worksheet.intermediate_output_bg33, 0.002); end
  def test_intermediate_output_c34; assert_equal("A.01", worksheet.intermediate_output_c34.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_d34; assert_equal("Agriculture", worksheet.intermediate_output_d34.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_f34; assert_in_epsilon(8.62987012987013, worksheet.intermediate_output_f34, 0.002); end
  def test_intermediate_output_ay34; assert_in_delta(0.0, (worksheet.intermediate_output_ay34||0), 0.002); end
  def test_intermediate_output_az34; assert_in_delta(0.0, (worksheet.intermediate_output_az34||0), 0.002); end
  def test_intermediate_output_ba34; assert_in_delta(0.0, (worksheet.intermediate_output_ba34||0), 0.002); end
  def test_intermediate_output_bb34; assert_in_delta(0.0, (worksheet.intermediate_output_bb34||0), 0.002); end
  def test_intermediate_output_bc34; assert_in_delta(0.0, (worksheet.intermediate_output_bc34||0), 0.002); end
  def test_intermediate_output_bd34; assert_in_delta(0.0, (worksheet.intermediate_output_bd34||0), 0.002); end
  def test_intermediate_output_be34; assert_in_delta(0.0, (worksheet.intermediate_output_be34||0), 0.002); end
  def test_intermediate_output_bf34; assert_in_delta(0.0, (worksheet.intermediate_output_bf34||0), 0.002); end
  def test_intermediate_output_bg34; assert_in_delta(0.0, (worksheet.intermediate_output_bg34||0), 0.002); end
  def test_intermediate_output_c35; assert_equal("Y.01", worksheet.intermediate_output_c35.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_d35; assert_equal("Biomass oversupply (imports)", worksheet.intermediate_output_d35.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_f35; assert_in_delta(0.0, (worksheet.intermediate_output_f35||0), 0.002); end
  def test_intermediate_output_ay35; assert_in_epsilon(372.4910967194163, worksheet.intermediate_output_ay35, 0.002); end
  def test_intermediate_output_az35; assert_in_epsilon(479.2063334600729, worksheet.intermediate_output_az35, 0.002); end
  def test_intermediate_output_ba35; assert_in_epsilon(245.20081779134034, worksheet.intermediate_output_ba35, 0.002); end
  def test_intermediate_output_bb35; assert_in_epsilon(31.215244281024468, worksheet.intermediate_output_bb35, 0.002); end
  def test_intermediate_output_bc35; assert_in_epsilon(700.962724112909, worksheet.intermediate_output_bc35, 0.002); end
  def test_intermediate_output_bd35; assert_in_epsilon(1537.8146525231978, worksheet.intermediate_output_bd35, 0.002); end
  def test_intermediate_output_be35; assert_in_epsilon(2176.1919267670773, worksheet.intermediate_output_be35, 0.002); end
  def test_intermediate_output_bf35; assert_in_epsilon(2218.38367483715, worksheet.intermediate_output_bf35, 0.002); end
  def test_intermediate_output_bg35; assert_in_epsilon(2330.976065276629, worksheet.intermediate_output_bg35, 0.002); end
  def test_intermediate_output_d36; assert_equal("Agriculture, waste, and biomatter imports", worksheet.intermediate_output_d36.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_f36; assert_in_epsilon(43.82987012987012, worksheet.intermediate_output_f36, 0.002); end
  def test_intermediate_output_ay36; assert_in_epsilon(835.6844812398483, worksheet.intermediate_output_ay36, 0.002); end
  def test_intermediate_output_az36; assert_in_epsilon(843.3336722372152, worksheet.intermediate_output_az36, 0.002); end
  def test_intermediate_output_ba36; assert_in_epsilon(901.6650725463211, worksheet.intermediate_output_ba36, 0.002); end
  def test_intermediate_output_bb36; assert_in_epsilon(1326.2386591041861, worksheet.intermediate_output_bb36, 0.002); end
  def test_intermediate_output_bc36; assert_in_epsilon(1719.0198736541263, worksheet.intermediate_output_bc36, 0.002); end
  def test_intermediate_output_bd36; assert_in_epsilon(2126.9356626369818, worksheet.intermediate_output_bd36, 0.002); end
  def test_intermediate_output_be36; assert_in_epsilon(2549.371697666084, worksheet.intermediate_output_be36, 0.002); end
  def test_intermediate_output_bf36; assert_in_epsilon(3001.374221902747, worksheet.intermediate_output_bf36, 0.002); end
  def test_intermediate_output_bg36; assert_in_epsilon(3011.3610069966385, worksheet.intermediate_output_bg36, 0.002); end
  def test_intermediate_output_c37; assert_equal("Y.04", worksheet.intermediate_output_c37.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_d37; assert_equal("Coal oversupply (imports)", worksheet.intermediate_output_d37.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_f37; assert_in_epsilon(23.666666666666668, worksheet.intermediate_output_f37, 0.002); end
  def test_intermediate_output_ay37; assert_in_epsilon(54.67677763831769, worksheet.intermediate_output_ay37, 0.002); end
  def test_intermediate_output_az37; assert_in_epsilon(56.27203144190709, worksheet.intermediate_output_az37, 0.002); end
  def test_intermediate_output_ba37; assert_in_epsilon(59.29131976164692, worksheet.intermediate_output_ba37, 0.002); end
  def test_intermediate_output_bb37; assert_in_epsilon(61.2921832608632, worksheet.intermediate_output_bb37, 0.002); end
  def test_intermediate_output_bc37; assert_in_epsilon(62.90732634459812, worksheet.intermediate_output_bc37, 0.002); end
  def test_intermediate_output_bd37; assert_in_epsilon(64.20973092418254, worksheet.intermediate_output_bd37, 0.002); end
  def test_intermediate_output_be37; assert_in_epsilon(65.19610484818995, worksheet.intermediate_output_be37, 0.002); end
  def test_intermediate_output_bf37; assert_in_epsilon(65.86278285990707, worksheet.intermediate_output_bf37, 0.002); end
  def test_intermediate_output_bg37; assert_in_epsilon(66.20976495933392, worksheet.intermediate_output_bg37, 0.002); end
  def test_intermediate_output_c38; assert_equal("Q.01", worksheet.intermediate_output_c38.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_d38; assert_equal("Coal reserves", worksheet.intermediate_output_d38.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_f38; assert_in_delta(0.0, (worksheet.intermediate_output_f38||0), 0.002); end
  def test_intermediate_output_ay38; assert_in_delta(0.0, (worksheet.intermediate_output_ay38||0), 0.002); end
  def test_intermediate_output_az38; assert_in_delta(0.0, (worksheet.intermediate_output_az38||0), 0.002); end
  def test_intermediate_output_ba38; assert_in_delta(0.0, (worksheet.intermediate_output_ba38||0), 0.002); end
  def test_intermediate_output_bb38; assert_in_delta(0.0, (worksheet.intermediate_output_bb38||0), 0.002); end
  def test_intermediate_output_bc38; assert_in_delta(0.0, (worksheet.intermediate_output_bc38||0), 0.002); end
  def test_intermediate_output_bd38; assert_in_delta(0.0, (worksheet.intermediate_output_bd38||0), 0.002); end
  def test_intermediate_output_be38; assert_in_delta(0.0, (worksheet.intermediate_output_be38||0), 0.002); end
  def test_intermediate_output_bf38; assert_in_delta(0.0, (worksheet.intermediate_output_bf38||0), 0.002); end
  def test_intermediate_output_bg38; assert_in_delta(0.0, (worksheet.intermediate_output_bg38||0), 0.002); end
  def test_intermediate_output_d39; assert_equal("Coal", worksheet.intermediate_output_d39.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_f39; assert_in_epsilon(23.666666666666668, worksheet.intermediate_output_f39, 0.002); end
  def test_intermediate_output_ay39; assert_in_epsilon(54.67677763831769, worksheet.intermediate_output_ay39, 0.002); end
  def test_intermediate_output_az39; assert_in_epsilon(56.27203144190709, worksheet.intermediate_output_az39, 0.002); end
  def test_intermediate_output_ba39; assert_in_epsilon(59.29131976164692, worksheet.intermediate_output_ba39, 0.002); end
  def test_intermediate_output_bb39; assert_in_epsilon(61.2921832608632, worksheet.intermediate_output_bb39, 0.002); end
  def test_intermediate_output_bc39; assert_in_epsilon(62.90732634459812, worksheet.intermediate_output_bc39, 0.002); end
  def test_intermediate_output_bd39; assert_in_epsilon(64.20973092418254, worksheet.intermediate_output_bd39, 0.002); end
  def test_intermediate_output_be39; assert_in_epsilon(65.19610484818995, worksheet.intermediate_output_be39, 0.002); end
  def test_intermediate_output_bf39; assert_in_epsilon(65.86278285990707, worksheet.intermediate_output_bf39, 0.002); end
  def test_intermediate_output_bg39; assert_in_epsilon(66.20976495933392, worksheet.intermediate_output_bg39, 0.002); end
  def test_intermediate_output_c40; assert_equal("Q.02", worksheet.intermediate_output_c40.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_d40; assert_equal("Oil reserves", worksheet.intermediate_output_d40.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_f40; assert_in_delta(0.0, (worksheet.intermediate_output_f40||0), 0.002); end
  def test_intermediate_output_ay40; assert_in_delta(0.0, (worksheet.intermediate_output_ay40||0), 0.002); end
  def test_intermediate_output_az40; assert_in_delta(0.0, (worksheet.intermediate_output_az40||0), 0.002); end
  def test_intermediate_output_ba40; assert_in_delta(0.0, (worksheet.intermediate_output_ba40||0), 0.002); end
  def test_intermediate_output_bb40; assert_in_delta(0.0, (worksheet.intermediate_output_bb40||0), 0.002); end
  def test_intermediate_output_bc40; assert_in_delta(0.0, (worksheet.intermediate_output_bc40||0), 0.002); end
  def test_intermediate_output_bd40; assert_in_delta(0.0, (worksheet.intermediate_output_bd40||0), 0.002); end
  def test_intermediate_output_be40; assert_in_delta(0.0, (worksheet.intermediate_output_be40||0), 0.002); end
  def test_intermediate_output_bf40; assert_in_delta(0.0, (worksheet.intermediate_output_bf40||0), 0.002); end
  def test_intermediate_output_bg40; assert_in_delta(0.0, (worksheet.intermediate_output_bg40||0), 0.002); end
  def test_intermediate_output_c41; assert_equal("Y.05", worksheet.intermediate_output_c41.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_d41; assert_equal("Oil and petroleum products oversupply (imports)", worksheet.intermediate_output_d41.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_f41; assert_in_epsilon(2578.121828670083, worksheet.intermediate_output_f41, 0.002); end
  def test_intermediate_output_ay41; assert_in_epsilon(5583.968924946566, worksheet.intermediate_output_ay41, 0.002); end
  def test_intermediate_output_az41; assert_in_epsilon(5616.186866296027, worksheet.intermediate_output_az41, 0.002); end
  def test_intermediate_output_ba41; assert_in_epsilon(5886.174177279776, worksheet.intermediate_output_ba41, 0.002); end
  def test_intermediate_output_bb41; assert_in_epsilon(5329.24656902558, worksheet.intermediate_output_bb41, 0.002); end
  def test_intermediate_output_bc41; assert_in_epsilon(4056.4442051237993, worksheet.intermediate_output_bc41, 0.002); end
  def test_intermediate_output_bd41; assert_in_epsilon(2661.7047835272333, worksheet.intermediate_output_bd41, 0.002); end
  def test_intermediate_output_be41; assert_in_epsilon(1387.481236141547, worksheet.intermediate_output_be41, 0.002); end
  def test_intermediate_output_bf41; assert_in_epsilon(517.0489044248134, worksheet.intermediate_output_bf41, 0.002); end
  def test_intermediate_output_bg41; assert_in_delta(0.0, (worksheet.intermediate_output_bg41||0), 0.002); end
  def test_intermediate_output_c42; assert_equal("Y.03", worksheet.intermediate_output_c42.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_d42; assert_equal("Petroleum products oversupply", worksheet.intermediate_output_d42.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_f42; assert_in_delta(0.0, (worksheet.intermediate_output_f42||0), 0.002); end
  def test_intermediate_output_ay42; assert_in_delta(0.0, (worksheet.intermediate_output_ay42||0), 0.002); end
  def test_intermediate_output_az42; assert_in_delta(0.0, (worksheet.intermediate_output_az42||0), 0.002); end
  def test_intermediate_output_ba42; assert_in_delta(0.0, (worksheet.intermediate_output_ba42||0), 0.002); end
  def test_intermediate_output_bb42; assert_in_delta(0.0, (worksheet.intermediate_output_bb42||0), 0.002); end
  def test_intermediate_output_bc42; assert_in_delta(0.0, (worksheet.intermediate_output_bc42||0), 0.002); end
  def test_intermediate_output_bd42; assert_in_delta(0.0, (worksheet.intermediate_output_bd42||0), 0.002); end
  def test_intermediate_output_be42; assert_in_delta(0.0, (worksheet.intermediate_output_be42||0), 0.002); end
  def test_intermediate_output_bf42; assert_in_delta(0.0, (worksheet.intermediate_output_bf42||0), 0.002); end
  def test_intermediate_output_bg42; assert_in_delta(0.0, (worksheet.intermediate_output_bg42||0), 0.002); end
  def test_intermediate_output_d43; assert_equal("Oil and petroleum products", worksheet.intermediate_output_d43.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_f43; assert_in_epsilon(2578.121828670083, worksheet.intermediate_output_f43, 0.002); end
  def test_intermediate_output_ay43; assert_in_epsilon(5583.968924946566, worksheet.intermediate_output_ay43, 0.002); end
  def test_intermediate_output_az43; assert_in_epsilon(5616.186866296027, worksheet.intermediate_output_az43, 0.002); end
  def test_intermediate_output_ba43; assert_in_epsilon(5886.174177279776, worksheet.intermediate_output_ba43, 0.002); end
  def test_intermediate_output_bb43; assert_in_epsilon(5329.24656902558, worksheet.intermediate_output_bb43, 0.002); end
  def test_intermediate_output_bc43; assert_in_epsilon(4056.4442051237993, worksheet.intermediate_output_bc43, 0.002); end
  def test_intermediate_output_bd43; assert_in_epsilon(2661.7047835272333, worksheet.intermediate_output_bd43, 0.002); end
  def test_intermediate_output_be43; assert_in_epsilon(1387.481236141547, worksheet.intermediate_output_be43, 0.002); end
  def test_intermediate_output_bf43; assert_in_epsilon(517.0489044248134, worksheet.intermediate_output_bf43, 0.002); end
  def test_intermediate_output_bg43; assert_in_delta(0.0, (worksheet.intermediate_output_bg43||0), 0.002); end
  def test_intermediate_output_c44; assert_equal("Y.06", worksheet.intermediate_output_c44.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_d44; assert_equal("Gas oversupply (imports)", worksheet.intermediate_output_d44.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_f44; assert_in_epsilon(627.3680555555555, worksheet.intermediate_output_f44, 0.002); end
  def test_intermediate_output_ay44; assert_in_epsilon(1430.614664342593, worksheet.intermediate_output_ay44, 0.002); end
  def test_intermediate_output_az44; assert_in_epsilon(1456.267079044218, worksheet.intermediate_output_az44, 0.002); end
  def test_intermediate_output_ba44; assert_in_epsilon(1457.9861849494096, worksheet.intermediate_output_ba44, 0.002); end
  def test_intermediate_output_bb44; assert_in_epsilon(1445.395798188943, worksheet.intermediate_output_bb44, 0.002); end
  def test_intermediate_output_bc44; assert_in_epsilon(1427.0318850842575, worksheet.intermediate_output_bc44, 0.002); end
  def test_intermediate_output_bd44; assert_in_epsilon(1370.4259102428077, worksheet.intermediate_output_bd44, 0.002); end
  def test_intermediate_output_be44; assert_in_epsilon(1309.4395363350611, worksheet.intermediate_output_be44, 0.002); end
  def test_intermediate_output_bf44; assert_in_epsilon(1244.0042246515577, worksheet.intermediate_output_bf44, 0.002); end
  def test_intermediate_output_bg44; assert_in_epsilon(1174.1356174704265, worksheet.intermediate_output_bg44, 0.002); end
  def test_intermediate_output_c45; assert_equal("Q.03", worksheet.intermediate_output_c45.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_d45; assert_equal("Gas reserves", worksheet.intermediate_output_d45.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_f45; assert_in_delta(0.0, (worksheet.intermediate_output_f45||0), 0.002); end
  def test_intermediate_output_ay45; assert_in_delta(0.0, (worksheet.intermediate_output_ay45||0), 0.002); end
  def test_intermediate_output_az45; assert_in_delta(0.0, (worksheet.intermediate_output_az45||0), 0.002); end
  def test_intermediate_output_ba45; assert_in_delta(0.0, (worksheet.intermediate_output_ba45||0), 0.002); end
  def test_intermediate_output_bb45; assert_in_delta(0.0, (worksheet.intermediate_output_bb45||0), 0.002); end
  def test_intermediate_output_bc45; assert_in_delta(0.0, (worksheet.intermediate_output_bc45||0), 0.002); end
  def test_intermediate_output_bd45; assert_in_delta(0.0, (worksheet.intermediate_output_bd45||0), 0.002); end
  def test_intermediate_output_be45; assert_in_delta(0.0, (worksheet.intermediate_output_be45||0), 0.002); end
  def test_intermediate_output_bf45; assert_in_delta(0.0, (worksheet.intermediate_output_bf45||0), 0.002); end
  def test_intermediate_output_bg45; assert_in_delta(0.0, (worksheet.intermediate_output_bg45||0), 0.002); end
  def test_intermediate_output_d46; assert_equal("Natural gas", worksheet.intermediate_output_d46.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_f46; assert_in_epsilon(627.3680555555555, worksheet.intermediate_output_f46, 0.002); end
  def test_intermediate_output_ay46; assert_in_epsilon(1430.614664342593, worksheet.intermediate_output_ay46, 0.002); end
  def test_intermediate_output_az46; assert_in_epsilon(1456.267079044218, worksheet.intermediate_output_az46, 0.002); end
  def test_intermediate_output_ba46; assert_in_epsilon(1457.9861849494096, worksheet.intermediate_output_ba46, 0.002); end
  def test_intermediate_output_bb46; assert_in_epsilon(1445.395798188943, worksheet.intermediate_output_bb46, 0.002); end
  def test_intermediate_output_bc46; assert_in_epsilon(1427.0318850842575, worksheet.intermediate_output_bc46, 0.002); end
  def test_intermediate_output_bd46; assert_in_epsilon(1370.4259102428077, worksheet.intermediate_output_bd46, 0.002); end
  def test_intermediate_output_be46; assert_in_epsilon(1309.4395363350611, worksheet.intermediate_output_be46, 0.002); end
  def test_intermediate_output_bf46; assert_in_epsilon(1244.0042246515577, worksheet.intermediate_output_bf46, 0.002); end
  def test_intermediate_output_bg46; assert_in_epsilon(1174.1356174704265, worksheet.intermediate_output_bg46, 0.002); end
  def test_intermediate_output_d47; assert_equal("Total Primary Supply", worksheet.intermediate_output_d47.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_f47; assert_in_epsilon(5630.146421022175, worksheet.intermediate_output_f47, 0.002); end
  def test_intermediate_output_ay47; assert_in_epsilon(11265.019948500843, worksheet.intermediate_output_ay47, 0.002); end
  def test_intermediate_output_az47; assert_in_epsilon(11432.76549531299, worksheet.intermediate_output_az47, 0.002); end
  def test_intermediate_output_ba47; assert_in_epsilon(11981.353718125869, worksheet.intermediate_output_ba47, 0.002); end
  def test_intermediate_output_bb47; assert_in_epsilon(12073.73368361576, worksheet.intermediate_output_bb47, 0.002); end
  def test_intermediate_output_bc47; assert_in_epsilon(11445.534955061014, worksheet.intermediate_output_bc47, 0.002); end
  def test_intermediate_output_bd47; assert_in_epsilon(10650.107745145677, worksheet.intermediate_output_bd47, 0.002); end
  def test_intermediate_output_be47; assert_in_epsilon(9939.303944154939, worksheet.intermediate_output_be47, 0.002); end
  def test_intermediate_output_bf47; assert_in_epsilon(9620.747961463145, worksheet.intermediate_output_bf47, 0.002); end
  def test_intermediate_output_bg47; assert_in_epsilon(9183.899700300268, worksheet.intermediate_output_bg47, 0.002); end
  def test_intermediate_output_d49; assert_equal("Dummy for charting supply", worksheet.intermediate_output_d49.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_ay49; assert_in_delta(0.0, (worksheet.intermediate_output_ay49||0), 0.002); end
  def test_intermediate_output_az49; assert_in_delta(0.0, (worksheet.intermediate_output_az49||0), 0.002); end
  def test_intermediate_output_ba49; assert_in_delta(0.0, (worksheet.intermediate_output_ba49||0), 0.002); end
  def test_intermediate_output_bb49; assert_in_delta(0.0, (worksheet.intermediate_output_bb49||0), 0.002); end
  def test_intermediate_output_bc49; assert_in_delta(0.0, (worksheet.intermediate_output_bc49||0), 0.002); end
  def test_intermediate_output_bd49; assert_in_delta(0.0, (worksheet.intermediate_output_bd49||0), 0.002); end
  def test_intermediate_output_be49; assert_in_delta(0.0, (worksheet.intermediate_output_be49||0), 0.002); end
  def test_intermediate_output_bf49; assert_in_delta(0.0, (worksheet.intermediate_output_bf49||0), 0.002); end
  def test_intermediate_output_bg49; assert_in_delta(0.0, (worksheet.intermediate_output_bg49||0), 0.002); end
  def test_intermediate_output_c51; assert_equal("Conversion losses, distribution, and own use", worksheet.intermediate_output_c51.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_c52; assert_equal("X.01", worksheet.intermediate_output_c52.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_d52; assert_equal("Conversion losses", worksheet.intermediate_output_d52.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_f52; assert_in_epsilon(28.159999999999997, worksheet.intermediate_output_f52, 0.002); end
  def test_intermediate_output_ay52; assert_in_epsilon(68.57754608073266, worksheet.intermediate_output_ay52, 0.002); end
  def test_intermediate_output_az52; assert_in_epsilon(65.85441085839952, worksheet.intermediate_output_az52, 0.002); end
  def test_intermediate_output_ba52; assert_in_epsilon(84.75570016133517, worksheet.intermediate_output_ba52, 0.002); end
  def test_intermediate_output_bb52; assert_in_epsilon(120.7195174138344, worksheet.intermediate_output_bb52, 0.002); end
  def test_intermediate_output_bc52; assert_in_epsilon(110.38965314673743, worksheet.intermediate_output_bc52, 0.002); end
  def test_intermediate_output_bd52; assert_in_epsilon(91.98409778761378, worksheet.intermediate_output_bd52, 0.002); end
  def test_intermediate_output_be52; assert_in_epsilon(83.79931159223497, worksheet.intermediate_output_be52, 0.002); end
  def test_intermediate_output_bf52; assert_in_epsilon(106.49454524050995, worksheet.intermediate_output_bf52, 0.002); end
  def test_intermediate_output_bg52; assert_in_epsilon(103.17462912440723, worksheet.intermediate_output_bg52, 0.002); end
  def test_intermediate_output_c53; assert_equal("X.02", worksheet.intermediate_output_c53.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_d53; assert_equal("Distribution losses and own use", worksheet.intermediate_output_d53.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_f53; assert_in_delta(0.0, (worksheet.intermediate_output_f53||0), 0.002); end
  def test_intermediate_output_ay53; assert_in_delta(0.0, (worksheet.intermediate_output_ay53||0), 0.002); end
  def test_intermediate_output_az53; assert_in_delta(0.0, (worksheet.intermediate_output_az53||0), 0.002); end
  def test_intermediate_output_ba53; assert_in_delta(0.0, (worksheet.intermediate_output_ba53||0), 0.002); end
  def test_intermediate_output_bb53; assert_in_delta(0.0, (worksheet.intermediate_output_bb53||0), 0.002); end
  def test_intermediate_output_bc53; assert_in_delta(0.0, (worksheet.intermediate_output_bc53||0), 0.002); end
  def test_intermediate_output_bd53; assert_in_delta(0.0, (worksheet.intermediate_output_bd53||0), 0.002); end
  def test_intermediate_output_be53; assert_in_delta(0.0, (worksheet.intermediate_output_be53||0), 0.002); end
  def test_intermediate_output_bf53; assert_in_delta(0.0, (worksheet.intermediate_output_bf53||0), 0.002); end
  def test_intermediate_output_bg53; assert_in_delta(0.0, (worksheet.intermediate_output_bg53||0), 0.002); end
  def test_intermediate_output_d54; assert_equal("Supply net of losses", worksheet.intermediate_output_d54.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_f54; assert_in_epsilon(5601.986421022175, worksheet.intermediate_output_f54, 0.002); end
  def test_intermediate_output_ay54; assert_in_epsilon(11196.44240242011, worksheet.intermediate_output_ay54, 0.002); end
  def test_intermediate_output_az54; assert_in_epsilon(11366.91108445459, worksheet.intermediate_output_az54, 0.002); end
  def test_intermediate_output_ba54; assert_in_epsilon(11896.598017964534, worksheet.intermediate_output_ba54, 0.002); end
  def test_intermediate_output_bb54; assert_in_epsilon(11953.014166201925, worksheet.intermediate_output_bb54, 0.002); end
  def test_intermediate_output_bc54; assert_in_epsilon(11335.145301914275, worksheet.intermediate_output_bc54, 0.002); end
  def test_intermediate_output_bd54; assert_in_epsilon(10558.123647358063, worksheet.intermediate_output_bd54, 0.002); end
  def test_intermediate_output_be54; assert_in_epsilon(9855.504632562705, worksheet.intermediate_output_be54, 0.002); end
  def test_intermediate_output_bf54; assert_in_epsilon(9514.253416222635, worksheet.intermediate_output_bf54, 0.002); end
  def test_intermediate_output_bg54; assert_in_epsilon(9080.72507117586, worksheet.intermediate_output_bg54, 0.002); end
  def test_intermediate_output_c56; assert_equal("Supply / demand not accounted for", worksheet.intermediate_output_c56.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_c58; assert_equal("C.01", worksheet.intermediate_output_c58.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_d58; assert_equal("Coal and fossil waste", worksheet.intermediate_output_d58.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_f58; assert_in_delta(0.0, (worksheet.intermediate_output_f58||0), 0.002); end
  def test_intermediate_output_ay58; assert_in_delta(0.0, (worksheet.intermediate_output_ay58||0), 0.002); end
  def test_intermediate_output_az58; assert_in_delta(0.0, (worksheet.intermediate_output_az58||0), 0.002); end
  def test_intermediate_output_ba58; assert_in_delta(0.0, (worksheet.intermediate_output_ba58||0), 0.002); end
  def test_intermediate_output_bb58; assert_in_delta(0.0, (worksheet.intermediate_output_bb58||0), 0.002); end
  def test_intermediate_output_bc58; assert_in_delta(0.0, (worksheet.intermediate_output_bc58||0), 0.002); end
  def test_intermediate_output_bd58; assert_in_delta(0.0, (worksheet.intermediate_output_bd58||0), 0.002); end
  def test_intermediate_output_be58; assert_in_delta(0.0, (worksheet.intermediate_output_be58||0), 0.002); end
  def test_intermediate_output_bf58; assert_in_delta(0.0, (worksheet.intermediate_output_bf58||0), 0.002); end
  def test_intermediate_output_bg58; assert_in_delta(0.0, (worksheet.intermediate_output_bg58||0), 0.002); end
  def test_intermediate_output_c59; assert_equal("C.02", worksheet.intermediate_output_c59.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_d59; assert_equal("Oil and petroleum products", worksheet.intermediate_output_d59.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_f59; assert_in_delta(0.0, (worksheet.intermediate_output_f59||0), 0.002); end
  def test_intermediate_output_ay59; assert_in_delta(0.0, (worksheet.intermediate_output_ay59||0), 0.002); end
  def test_intermediate_output_az59; assert_in_delta(0.0, (worksheet.intermediate_output_az59||0), 0.002); end
  def test_intermediate_output_ba59; assert_in_delta(0.0, (worksheet.intermediate_output_ba59||0), 0.002); end
  def test_intermediate_output_bb59; assert_in_delta(0.0, (worksheet.intermediate_output_bb59||0), 0.002); end
  def test_intermediate_output_bc59; assert_in_delta(0.0, (worksheet.intermediate_output_bc59||0), 0.002); end
  def test_intermediate_output_bd59; assert_in_delta(0.0, (worksheet.intermediate_output_bd59||0), 0.002); end
  def test_intermediate_output_be59; assert_in_delta(0.0, (worksheet.intermediate_output_be59||0), 0.002); end
  def test_intermediate_output_bf59; assert_in_delta(0.0, (worksheet.intermediate_output_bf59||0), 0.002); end
  def test_intermediate_output_bg59; assert_in_delta(0.0, (worksheet.intermediate_output_bg59||0), 0.002); end
  def test_intermediate_output_c60; assert_equal("C.03", worksheet.intermediate_output_c60.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_d60; assert_equal("Natural gas", worksheet.intermediate_output_d60.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_f60; assert_in_delta(0.0, (worksheet.intermediate_output_f60||0), 0.002); end
  def test_intermediate_output_ay60; assert_in_delta(0.0, (worksheet.intermediate_output_ay60||0), 0.002); end
  def test_intermediate_output_az60; assert_in_delta(0.0, (worksheet.intermediate_output_az60||0), 0.002); end
  def test_intermediate_output_ba60; assert_in_delta(0.0, (worksheet.intermediate_output_ba60||0), 0.002); end
  def test_intermediate_output_bb60; assert_in_delta(0.0, (worksheet.intermediate_output_bb60||0), 0.002); end
  def test_intermediate_output_bc60; assert_in_delta(0.0, (worksheet.intermediate_output_bc60||0), 0.002); end
  def test_intermediate_output_bd60; assert_in_delta(0.0, (worksheet.intermediate_output_bd60||0), 0.002); end
  def test_intermediate_output_be60; assert_in_delta(0.0, (worksheet.intermediate_output_be60||0), 0.002); end
  def test_intermediate_output_bf60; assert_in_delta(0.0, (worksheet.intermediate_output_bf60||0), 0.002); end
  def test_intermediate_output_bg60; assert_in_delta(0.0, (worksheet.intermediate_output_bg60||0), 0.002); end
  def test_intermediate_output_c61; assert_equal("V.03", worksheet.intermediate_output_c61.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_d61; assert_equal("Solid hydrocarbons", worksheet.intermediate_output_d61.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_f61; assert_in_delta(0.0, (worksheet.intermediate_output_f61||0), 0.002); end
  def test_intermediate_output_ay61; assert_in_delta(0.0, (worksheet.intermediate_output_ay61||0), 0.002); end
  def test_intermediate_output_az61; assert_in_delta(0.0, (worksheet.intermediate_output_az61||0), 0.002); end
  def test_intermediate_output_ba61; assert_in_delta(0.0, (worksheet.intermediate_output_ba61||0), 0.002); end
  def test_intermediate_output_bb61; assert_in_delta(0.0, (worksheet.intermediate_output_bb61||0), 0.002); end
  def test_intermediate_output_bc61; assert_in_delta(0.0, (worksheet.intermediate_output_bc61||0), 0.002); end
  def test_intermediate_output_bd61; assert_in_delta(0.0, (worksheet.intermediate_output_bd61||0), 0.002); end
  def test_intermediate_output_be61; assert_in_delta(0.0, (worksheet.intermediate_output_be61||0), 0.002); end
  def test_intermediate_output_bf61; assert_in_delta(0.0, (worksheet.intermediate_output_bf61||0), 0.002); end
  def test_intermediate_output_bg61; assert_in_delta(0.0, (worksheet.intermediate_output_bg61||0), 0.002); end
  def test_intermediate_output_c62; assert_equal("V.04", worksheet.intermediate_output_c62.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_d62; assert_equal("Liquid hydrocarbons", worksheet.intermediate_output_d62.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_f62; assert_in_delta(0.0, (worksheet.intermediate_output_f62||0), 0.002); end
  def test_intermediate_output_ay62; assert_in_delta(0.0, (worksheet.intermediate_output_ay62||0), 0.002); end
  def test_intermediate_output_az62; assert_in_delta(0.0, (worksheet.intermediate_output_az62||0), 0.002); end
  def test_intermediate_output_ba62; assert_in_delta(0.0, (worksheet.intermediate_output_ba62||0), 0.002); end
  def test_intermediate_output_bb62; assert_in_epsilon(-352.79344262295126, worksheet.intermediate_output_bb62, 0.002); end
  def test_intermediate_output_bc62; assert_in_epsilon(-722.0931147540987, worksheet.intermediate_output_bc62, 0.002); end
  def test_intermediate_output_bd62; assert_in_epsilon(-1102.839344262295, worksheet.intermediate_output_bd62, 0.002); end
  def test_intermediate_output_be62; assert_in_epsilon(-1489.3062295081968, worksheet.intermediate_output_be62, 0.002); end
  def test_intermediate_output_bf62; assert_in_epsilon(-1875.934426229508, worksheet.intermediate_output_bf62, 0.002); end
  def test_intermediate_output_bg62; assert_in_epsilon(-1848.032614970444, worksheet.intermediate_output_bg62, 0.002); end
  def test_intermediate_output_c63; assert_equal("V.05", worksheet.intermediate_output_c63.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_d63; assert_equal("Gaseous hydrocarbons", worksheet.intermediate_output_d63.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_f63; assert_in_delta(0.0, (worksheet.intermediate_output_f63||0), 0.002); end
  def test_intermediate_output_ay63; assert_in_epsilon(-63.08038452043206, worksheet.intermediate_output_ay63, 0.002); end
  def test_intermediate_output_az63; assert_in_epsilon(-66.17783877714237, worksheet.intermediate_output_az63, 0.002); end
  def test_intermediate_output_ba63; assert_in_epsilon(-72.12845475498057, worksheet.intermediate_output_ba63, 0.002); end
  def test_intermediate_output_bb63; assert_in_epsilon(-77.73381482316154, worksheet.intermediate_output_bb63, 0.002); end
  def test_intermediate_output_bc63; assert_in_epsilon(-82.62054954121731, worksheet.intermediate_output_bc63, 0.002); end
  def test_intermediate_output_bd63; assert_in_epsilon(-86.84451011378405, worksheet.intermediate_output_bd63, 0.002); end
  def test_intermediate_output_be63; assert_in_epsilon(-90.47267089900652, worksheet.intermediate_output_be63, 0.002); end
  def test_intermediate_output_bf63; assert_in_epsilon(-93.53474706559723, worksheet.intermediate_output_bf63, 0.002); end
  def test_intermediate_output_bg63; assert_in_epsilon(-96.0491417200094, worksheet.intermediate_output_bg63, 0.002); end
  def test_intermediate_output_c64; assert_equal("V.06", worksheet.intermediate_output_c64.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_d64; assert_equal("Blast furnace gas", worksheet.intermediate_output_d64.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_f64; assert_in_delta(0.0, (worksheet.intermediate_output_f64||0), 0.002); end
  def test_intermediate_output_ay64; assert_in_delta(0.0, (worksheet.intermediate_output_ay64||0), 0.002); end
  def test_intermediate_output_az64; assert_in_delta(0.0, (worksheet.intermediate_output_az64||0), 0.002); end
  def test_intermediate_output_ba64; assert_in_delta(0.0, (worksheet.intermediate_output_ba64||0), 0.002); end
  def test_intermediate_output_bb64; assert_in_delta(0.0, (worksheet.intermediate_output_bb64||0), 0.002); end
  def test_intermediate_output_bc64; assert_in_delta(0.0, (worksheet.intermediate_output_bc64||0), 0.002); end
  def test_intermediate_output_bd64; assert_in_delta(0.0, (worksheet.intermediate_output_bd64||0), 0.002); end
  def test_intermediate_output_be64; assert_in_delta(0.0, (worksheet.intermediate_output_be64||0), 0.002); end
  def test_intermediate_output_bf64; assert_in_delta(0.0, (worksheet.intermediate_output_bf64||0), 0.002); end
  def test_intermediate_output_bg64; assert_in_delta(0.0, (worksheet.intermediate_output_bg64||0), 0.002); end
  def test_intermediate_output_c65; assert_equal("V.08", worksheet.intermediate_output_c65.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_d65; assert_equal("Edible biomass", worksheet.intermediate_output_d65.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_f65; assert_in_delta(0.0, (worksheet.intermediate_output_f65||0), 0.002); end
  def test_intermediate_output_ay65; assert_in_delta(0.0, (worksheet.intermediate_output_ay65||0), 0.002); end
  def test_intermediate_output_az65; assert_in_delta(0.0, (worksheet.intermediate_output_az65||0), 0.002); end
  def test_intermediate_output_ba65; assert_in_delta(0.0, (worksheet.intermediate_output_ba65||0), 0.002); end
  def test_intermediate_output_bb65; assert_in_delta(0.0, (worksheet.intermediate_output_bb65||0), 0.002); end
  def test_intermediate_output_bc65; assert_in_delta(0.0, (worksheet.intermediate_output_bc65||0), 0.002); end
  def test_intermediate_output_bd65; assert_in_delta(0.0, (worksheet.intermediate_output_bd65||0), 0.002); end
  def test_intermediate_output_be65; assert_in_delta(0.0, (worksheet.intermediate_output_be65||0), 0.002); end
  def test_intermediate_output_bf65; assert_in_delta(0.0, (worksheet.intermediate_output_bf65||0), 0.002); end
  def test_intermediate_output_bg65; assert_in_delta(0.0, (worksheet.intermediate_output_bg65||0), 0.002); end
  def test_intermediate_output_c66; assert_equal("V.07", worksheet.intermediate_output_c66.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_d66; assert_equal("Heat transport", worksheet.intermediate_output_d66.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_f66; assert_in_delta(0.0, (worksheet.intermediate_output_f66||0), 0.002); end
  def test_intermediate_output_ay66; assert_in_delta(0.0, (worksheet.intermediate_output_ay66||0), 0.002); end
  def test_intermediate_output_az66; assert_in_delta(0.0, (worksheet.intermediate_output_az66||0), 0.002); end
  def test_intermediate_output_ba66; assert_in_delta(0.0, (worksheet.intermediate_output_ba66||0), 0.002); end
  def test_intermediate_output_bb66; assert_in_delta(0.0, (worksheet.intermediate_output_bb66||0), 0.002); end
  def test_intermediate_output_bc66; assert_in_delta(0.0, (worksheet.intermediate_output_bc66||0), 0.002); end
  def test_intermediate_output_bd66; assert_in_delta(0.0, (worksheet.intermediate_output_bd66||0), 0.002); end
  def test_intermediate_output_be66; assert_in_delta(0.0, (worksheet.intermediate_output_be66||0), 0.002); end
  def test_intermediate_output_bf66; assert_in_delta(0.0, (worksheet.intermediate_output_bf66||0), 0.002); end
  def test_intermediate_output_bg66; assert_in_delta(0.0, (worksheet.intermediate_output_bg66||0), 0.002); end
  def test_intermediate_output_c67; assert_equal("V.09", worksheet.intermediate_output_c67.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_d67; assert_equal("Dry biomass and waste", worksheet.intermediate_output_d67.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_f67; assert_in_delta(0.0, (worksheet.intermediate_output_f67||0), 0.002); end
  def test_intermediate_output_ay67; assert_in_delta(0.0, (worksheet.intermediate_output_ay67||0), 0.002); end
  def test_intermediate_output_az67; assert_in_delta(0.0, (worksheet.intermediate_output_az67||0), 0.002); end
  def test_intermediate_output_ba67; assert_in_delta(0.0, (worksheet.intermediate_output_ba67||0), 0.002); end
  def test_intermediate_output_bb67; assert_in_delta(0.0, (worksheet.intermediate_output_bb67||0), 0.002); end
  def test_intermediate_output_bc67; assert_in_delta(0.0, (worksheet.intermediate_output_bc67||0), 0.002); end
  def test_intermediate_output_bd67; assert_in_delta(0.0, (worksheet.intermediate_output_bd67||0), 0.002); end
  def test_intermediate_output_be67; assert_in_delta(0.0, (worksheet.intermediate_output_be67||0), 0.002); end
  def test_intermediate_output_bf67; assert_in_delta(0.0, (worksheet.intermediate_output_bf67||0), 0.002); end
  def test_intermediate_output_bg67; assert_in_delta(0.0, (worksheet.intermediate_output_bg67||0), 0.002); end
  def test_intermediate_output_c68; assert_equal("V.10", worksheet.intermediate_output_c68.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_d68; assert_equal("Wet biomass and waste", worksheet.intermediate_output_d68.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_f68; assert_in_delta(0.0, (worksheet.intermediate_output_f68||0), 0.002); end
  def test_intermediate_output_ay68; assert_in_delta(0.0, (worksheet.intermediate_output_ay68||0), 0.002); end
  def test_intermediate_output_az68; assert_in_delta(0.0, (worksheet.intermediate_output_az68||0), 0.002); end
  def test_intermediate_output_ba68; assert_in_delta(0.0, (worksheet.intermediate_output_ba68||0), 0.002); end
  def test_intermediate_output_bb68; assert_in_delta(0.0, (worksheet.intermediate_output_bb68||0), 0.002); end
  def test_intermediate_output_bc68; assert_in_delta(0.0, (worksheet.intermediate_output_bc68||0), 0.002); end
  def test_intermediate_output_bd68; assert_in_delta(0.0, (worksheet.intermediate_output_bd68||0), 0.002); end
  def test_intermediate_output_be68; assert_in_delta(0.0, (worksheet.intermediate_output_be68||0), 0.002); end
  def test_intermediate_output_bf68; assert_in_delta(0.0, (worksheet.intermediate_output_bf68||0), 0.002); end
  def test_intermediate_output_bg68; assert_in_delta(0.0, (worksheet.intermediate_output_bg68||0), 0.002); end
  def test_intermediate_output_c69; assert_equal("V.11", worksheet.intermediate_output_c69.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_d69; assert_equal("Residential solar thermal", worksheet.intermediate_output_d69.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_f69; assert_in_delta(0.0, (worksheet.intermediate_output_f69||0), 0.002); end
  def test_intermediate_output_ay69; assert_in_delta(0.0, (worksheet.intermediate_output_ay69||0), 0.002); end
  def test_intermediate_output_az69; assert_in_delta(0.0, (worksheet.intermediate_output_az69||0), 0.002); end
  def test_intermediate_output_ba69; assert_in_delta(0.0, (worksheet.intermediate_output_ba69||0), 0.002); end
  def test_intermediate_output_bb69; assert_in_delta(0.0, (worksheet.intermediate_output_bb69||0), 0.002); end
  def test_intermediate_output_bc69; assert_in_delta(0.0, (worksheet.intermediate_output_bc69||0), 0.002); end
  def test_intermediate_output_bd69; assert_in_delta(0.0, (worksheet.intermediate_output_bd69||0), 0.002); end
  def test_intermediate_output_be69; assert_in_delta(0.0, (worksheet.intermediate_output_be69||0), 0.002); end
  def test_intermediate_output_bf69; assert_in_delta(0.0, (worksheet.intermediate_output_bf69||0), 0.002); end
  def test_intermediate_output_bg69; assert_in_delta(0.0, (worksheet.intermediate_output_bg69||0), 0.002); end
  def test_intermediate_output_c70; assert_equal("V.12", worksheet.intermediate_output_c70.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_d70; assert_equal("H2", worksheet.intermediate_output_d70.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_f70; assert_in_delta(0.0, (worksheet.intermediate_output_f70||0), 0.002); end
  def test_intermediate_output_ay70; assert_in_delta(0.0, (worksheet.intermediate_output_ay70||0), 0.002); end
  def test_intermediate_output_az70; assert_in_delta(0.0, (worksheet.intermediate_output_az70||0), 0.002); end
  def test_intermediate_output_ba70; assert_in_delta(0.0, (worksheet.intermediate_output_ba70||0), 0.002); end
  def test_intermediate_output_bb70; assert_in_delta(0.0, (worksheet.intermediate_output_bb70||0), 0.002); end
  def test_intermediate_output_bc70; assert_in_delta(0.0, (worksheet.intermediate_output_bc70||0), 0.002); end
  def test_intermediate_output_bd70; assert_in_delta(0.0, (worksheet.intermediate_output_bd70||0), 0.002); end
  def test_intermediate_output_be70; assert_in_delta(0.0, (worksheet.intermediate_output_be70||0), 0.002); end
  def test_intermediate_output_bf70; assert_in_delta(0.0, (worksheet.intermediate_output_bf70||0), 0.002); end
  def test_intermediate_output_bg70; assert_in_delta(0.0, (worksheet.intermediate_output_bg70||0), 0.002); end
  def test_intermediate_output_c71; assert_equal("V.13", worksheet.intermediate_output_c71.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_d71; assert_equal("Energy crops (second generation)", worksheet.intermediate_output_d71.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_f71; assert_in_delta(0.0, (worksheet.intermediate_output_f71||0), 0.002); end
  def test_intermediate_output_ay71; assert_in_delta(0.0, (worksheet.intermediate_output_ay71||0), 0.002); end
  def test_intermediate_output_az71; assert_in_delta(0.0, (worksheet.intermediate_output_az71||0), 0.002); end
  def test_intermediate_output_ba71; assert_in_delta(0.0, (worksheet.intermediate_output_ba71||0), 0.002); end
  def test_intermediate_output_bb71; assert_in_delta(0.0, (worksheet.intermediate_output_bb71||0), 0.002); end
  def test_intermediate_output_bc71; assert_in_delta(0.0, (worksheet.intermediate_output_bc71||0), 0.002); end
  def test_intermediate_output_bd71; assert_in_delta(0.0, (worksheet.intermediate_output_bd71||0), 0.002); end
  def test_intermediate_output_be71; assert_in_delta(0.0, (worksheet.intermediate_output_be71||0), 0.002); end
  def test_intermediate_output_bf71; assert_in_delta(0.0, (worksheet.intermediate_output_bf71||0), 0.002); end
  def test_intermediate_output_bg71; assert_in_delta(0.0, (worksheet.intermediate_output_bg71||0), 0.002); end
  def test_intermediate_output_d72; assert_equal("Total unaccounted supply / demand", worksheet.intermediate_output_d72.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_f72; assert_in_delta(0.0, (worksheet.intermediate_output_f72||0), 0.002); end
  def test_intermediate_output_ay72; assert_in_epsilon(-63.08038452043206, worksheet.intermediate_output_ay72, 0.002); end
  def test_intermediate_output_az72; assert_in_epsilon(-66.17783877714237, worksheet.intermediate_output_az72, 0.002); end
  def test_intermediate_output_ba72; assert_in_epsilon(-72.12845475498057, worksheet.intermediate_output_ba72, 0.002); end
  def test_intermediate_output_bb72; assert_in_epsilon(-430.5272574461128, worksheet.intermediate_output_bb72, 0.002); end
  def test_intermediate_output_bc72; assert_in_epsilon(-804.713664295316, worksheet.intermediate_output_bc72, 0.002); end
  def test_intermediate_output_bd72; assert_in_epsilon(-1189.6838543760791, worksheet.intermediate_output_bd72, 0.002); end
  def test_intermediate_output_be72; assert_in_epsilon(-1579.7789004072033, worksheet.intermediate_output_be72, 0.002); end
  def test_intermediate_output_bf72; assert_in_epsilon(-1969.4691732951053, worksheet.intermediate_output_bf72, 0.002); end
  def test_intermediate_output_bg72; assert_in_epsilon(-1944.0817566904534, worksheet.intermediate_output_bg72, 0.002); end
  def test_intermediate_output_d74; assert_equal("Supply, Demand, and Unaccounted supply", worksheet.intermediate_output_d74.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_f74; assert_in_delta(0.0, (worksheet.intermediate_output_f74||0), 0.002); end
  def test_intermediate_output_ay74; assert_in_epsilon(-63.08038452043024, worksheet.intermediate_output_ay74, 0.002); end
  def test_intermediate_output_az74; assert_in_epsilon(-66.17783877714601, worksheet.intermediate_output_az74, 0.002); end
  def test_intermediate_output_ba74; assert_in_epsilon(-72.12845475498239, worksheet.intermediate_output_ba74, 0.002); end
  def test_intermediate_output_bb74; assert_in_epsilon(-430.527257446111, worksheet.intermediate_output_bb74, 0.002); end
  def test_intermediate_output_bc74; assert_in_epsilon(-804.713664295316, worksheet.intermediate_output_bc74, 0.002); end
  def test_intermediate_output_bd74; assert_in_epsilon(-1189.6838543760791, worksheet.intermediate_output_bd74, 0.002); end
  def test_intermediate_output_be74; assert_in_epsilon(-1579.7789004072033, worksheet.intermediate_output_be74, 0.002); end
  def test_intermediate_output_bf74; assert_in_epsilon(-1969.469173295107, worksheet.intermediate_output_bf74, 0.002); end
  def test_intermediate_output_bg74; assert_in_epsilon(-1944.0817566904534, worksheet.intermediate_output_bg74, 0.002); end
  def test_intermediate_output_b78; assert_equal("Electricity grid (net of distribution losses)", worksheet.intermediate_output_b78.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_c80; assert_equal("V.01", worksheet.intermediate_output_c80.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_d80; assert_equal("Electricity (delivered to end user)", worksheet.intermediate_output_d80.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_f80; assert_in_epsilon(-2189.2, worksheet.intermediate_output_f80, 0.002); end
  def test_intermediate_output_ay80; assert_in_epsilon(-3001.794996903744, worksheet.intermediate_output_ay80, 0.002); end
  def test_intermediate_output_az80; assert_in_epsilon(-3090.6971872203317, worksheet.intermediate_output_az80, 0.002); end
  def test_intermediate_output_ba80; assert_in_epsilon(-3285.9899569623, worksheet.intermediate_output_ba80, 0.002); end
  def test_intermediate_output_bb80; assert_in_epsilon(-3507.6417861936498, worksheet.intermediate_output_bb80, 0.002); end
  def test_intermediate_output_bc80; assert_in_epsilon(-3765.130425281744, worksheet.intermediate_output_bc80, 0.002); end
  def test_intermediate_output_bd80; assert_in_epsilon(-4002.866377723707, worksheet.intermediate_output_bd80, 0.002); end
  def test_intermediate_output_be80; assert_in_epsilon(-4196.888228203029, worksheet.intermediate_output_be80, 0.002); end
  def test_intermediate_output_bf80; assert_in_epsilon(-4356.625129792793, worksheet.intermediate_output_bf80, 0.002); end
  def test_intermediate_output_bg80; assert_in_epsilon(-4493.5155928867, worksheet.intermediate_output_bg80, 0.002); end
  def test_intermediate_output_bh80; assert_equal("REFERENCED", worksheet.intermediate_output_bh80.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_c81; assert_equal("V.02", worksheet.intermediate_output_c81.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_d81; assert_equal("Electricity (supplied to grid)", worksheet.intermediate_output_d81.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_f81; assert_in_epsilon(2189.2, worksheet.intermediate_output_f81, 0.002); end
  def test_intermediate_output_ay81; assert_in_epsilon(3001.794996903744, worksheet.intermediate_output_ay81, 0.002); end
  def test_intermediate_output_az81; assert_in_epsilon(3090.6971872203317, worksheet.intermediate_output_az81, 0.002); end
  def test_intermediate_output_ba81; assert_in_epsilon(3285.9899569623, worksheet.intermediate_output_ba81, 0.002); end
  def test_intermediate_output_bb81; assert_in_epsilon(3507.6417861936498, worksheet.intermediate_output_bb81, 0.002); end
  def test_intermediate_output_bc81; assert_in_epsilon(3765.130425281744, worksheet.intermediate_output_bc81, 0.002); end
  def test_intermediate_output_bd81; assert_in_epsilon(4002.866377723707, worksheet.intermediate_output_bd81, 0.002); end
  def test_intermediate_output_be81; assert_in_epsilon(4196.88822820303, worksheet.intermediate_output_be81, 0.002); end
  def test_intermediate_output_bf81; assert_in_epsilon(4356.625129792793, worksheet.intermediate_output_bf81, 0.002); end
  def test_intermediate_output_bg81; assert_in_epsilon(4493.5155928867, worksheet.intermediate_output_bg81, 0.002); end
  def test_intermediate_output_d82; assert_equal("Total electricity grid", worksheet.intermediate_output_d82.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_f82; assert_in_delta(0.0, (worksheet.intermediate_output_f82||0), 0.002); end
  def test_intermediate_output_ay82; assert_in_delta(0.0, (worksheet.intermediate_output_ay82||0), 0.002); end
  def test_intermediate_output_az82; assert_in_delta(0.0, (worksheet.intermediate_output_az82||0), 0.002); end
  def test_intermediate_output_ba82; assert_in_delta(0.0, (worksheet.intermediate_output_ba82||0), 0.002); end
  def test_intermediate_output_bb82; assert_in_delta(0.0, (worksheet.intermediate_output_bb82||0), 0.002); end
  def test_intermediate_output_bc82; assert_in_delta(0.0, (worksheet.intermediate_output_bc82||0), 0.002); end
  def test_intermediate_output_bd82; assert_in_delta(0.0, (worksheet.intermediate_output_bd82||0), 0.002); end
  def test_intermediate_output_be82; assert_in_delta(0.0, (worksheet.intermediate_output_be82||0), 0.002); end
  def test_intermediate_output_bf82; assert_in_delta(0.0, (worksheet.intermediate_output_bf82||0), 0.002); end
  def test_intermediate_output_bg82; assert_in_delta(0.0, (worksheet.intermediate_output_bg82||0), 0.002); end
  def test_intermediate_output_c84; assert_equal("V.02", worksheet.intermediate_output_c84.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_d84; assert_equal("Losses", worksheet.intermediate_output_d84.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_ay84; assert_in_delta(0.0, (worksheet.intermediate_output_ay84||0), 0.002); end
  def test_intermediate_output_az84; assert_in_delta(0.0, (worksheet.intermediate_output_az84||0), 0.002); end
  def test_intermediate_output_ba84; assert_in_delta(0.0, (worksheet.intermediate_output_ba84||0), 0.002); end
  def test_intermediate_output_bb84; assert_in_delta(0.0, (worksheet.intermediate_output_bb84||0), 0.002); end
  def test_intermediate_output_bc84; assert_in_delta(0.0, (worksheet.intermediate_output_bc84||0), 0.002); end
  def test_intermediate_output_bd84; assert_in_delta(0.0, (worksheet.intermediate_output_bd84||0), 0.002); end
  def test_intermediate_output_be84; assert_in_delta(0.0, (worksheet.intermediate_output_be84||0), 0.002); end
  def test_intermediate_output_bf84; assert_in_delta(0.0, (worksheet.intermediate_output_bf84||0), 0.002); end
  def test_intermediate_output_bg84; assert_in_delta(0.0, (worksheet.intermediate_output_bg84||0), 0.002); end
  def test_intermediate_output_d85; assert_equal("Demand (for charting)", worksheet.intermediate_output_d85.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_ay85; assert_in_epsilon(3001.794996903744, worksheet.intermediate_output_ay85, 0.002); end
  def test_intermediate_output_az85; assert_in_epsilon(3090.6971872203317, worksheet.intermediate_output_az85, 0.002); end
  def test_intermediate_output_ba85; assert_in_epsilon(3285.9899569623, worksheet.intermediate_output_ba85, 0.002); end
  def test_intermediate_output_bb85; assert_in_epsilon(3507.6417861936498, worksheet.intermediate_output_bb85, 0.002); end
  def test_intermediate_output_bc85; assert_in_epsilon(3765.130425281744, worksheet.intermediate_output_bc85, 0.002); end
  def test_intermediate_output_bd85; assert_in_epsilon(4002.866377723707, worksheet.intermediate_output_bd85, 0.002); end
  def test_intermediate_output_be85; assert_in_epsilon(4196.888228203029, worksheet.intermediate_output_be85, 0.002); end
  def test_intermediate_output_bf85; assert_in_epsilon(4356.625129792793, worksheet.intermediate_output_bf85, 0.002); end
  def test_intermediate_output_bg85; assert_in_epsilon(4493.5155928867, worksheet.intermediate_output_bg85, 0.002); end
  def test_intermediate_output_d86; assert_equal("Dummy for charting", worksheet.intermediate_output_d86.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_ay86; assert_in_epsilon(3001.794996903744, worksheet.intermediate_output_ay86, 0.002); end
  def test_intermediate_output_az86; assert_in_epsilon(3090.6971872203317, worksheet.intermediate_output_az86, 0.002); end
  def test_intermediate_output_ba86; assert_in_epsilon(3285.9899569623, worksheet.intermediate_output_ba86, 0.002); end
  def test_intermediate_output_bb86; assert_in_epsilon(3507.6417861936498, worksheet.intermediate_output_bb86, 0.002); end
  def test_intermediate_output_bc86; assert_in_epsilon(3765.130425281744, worksheet.intermediate_output_bc86, 0.002); end
  def test_intermediate_output_bd86; assert_in_epsilon(4002.866377723707, worksheet.intermediate_output_bd86, 0.002); end
  def test_intermediate_output_be86; assert_in_epsilon(4196.888228203028, worksheet.intermediate_output_be86, 0.002); end
  def test_intermediate_output_bf86; assert_in_epsilon(4356.625129792793, worksheet.intermediate_output_bf86, 0.002); end
  def test_intermediate_output_bg86; assert_in_epsilon(4493.5155928867, worksheet.intermediate_output_bg86, 0.002); end
  def test_intermediate_output_c89; assert_equal("Z.01", worksheet.intermediate_output_c89.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_d89; assert_equal("Unallocated", worksheet.intermediate_output_d89.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_f89; assert_in_delta(0.0, (worksheet.intermediate_output_f89||0), 0.002); end
  def test_intermediate_output_ay89; assert_in_delta(0.0, (worksheet.intermediate_output_ay89||0), 0.002); end
  def test_intermediate_output_az89; assert_in_delta(3.126388037344441e-13, worksheet.intermediate_output_az89, 0.002); end
  def test_intermediate_output_ba89; assert_in_delta(-1.6200374375330284e-12, worksheet.intermediate_output_ba89, 0.002); end
  def test_intermediate_output_bb89; assert_in_delta(2.1316282072803006e-13, worksheet.intermediate_output_bb89, 0.002); end
  def test_intermediate_output_bc89; assert_in_delta(1.1937117960769683e-12, worksheet.intermediate_output_bc89, 0.002); end
  def test_intermediate_output_bd89; assert_in_delta(1.8047785488306545e-12, worksheet.intermediate_output_bd89, 0.002); end
  def test_intermediate_output_be89; assert_in_delta(4.547473508864641e-13, worksheet.intermediate_output_be89, 0.002); end
  def test_intermediate_output_bf89; assert_in_delta(1.7905676941154525e-12, worksheet.intermediate_output_bf89, 0.002); end
  def test_intermediate_output_bg89; assert_in_delta(1.9042545318370685e-12, worksheet.intermediate_output_bg89, 0.002); end
  def test_intermediate_output_d91; assert_equal("Net balance (should be zero!)", worksheet.intermediate_output_d91.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_f91; assert_in_delta(0.0, (worksheet.intermediate_output_f91||0), 0.002); end
  def test_intermediate_output_ay91; assert_in_epsilon(-63.08038452043024, worksheet.intermediate_output_ay91, 0.002); end
  def test_intermediate_output_az91; assert_in_epsilon(-66.1778387771457, worksheet.intermediate_output_az91, 0.002); end
  def test_intermediate_output_ba91; assert_in_epsilon(-72.128454754984, worksheet.intermediate_output_ba91, 0.002); end
  def test_intermediate_output_bb91; assert_in_epsilon(-430.52725744611075, worksheet.intermediate_output_bb91, 0.002); end
  def test_intermediate_output_bc91; assert_in_epsilon(-804.7136642953149, worksheet.intermediate_output_bc91, 0.002); end
  def test_intermediate_output_bd91; assert_in_epsilon(-1189.6838543760773, worksheet.intermediate_output_bd91, 0.002); end
  def test_intermediate_output_be91; assert_in_epsilon(-1579.7789004072029, worksheet.intermediate_output_be91, 0.002); end
  def test_intermediate_output_bf91; assert_in_epsilon(-1969.4691732951053, worksheet.intermediate_output_bf91, 0.002); end
  def test_intermediate_output_bg91; assert_in_epsilon(-1944.0817566904516, worksheet.intermediate_output_bg91, 0.002); end
  def test_intermediate_output_b93; assert_equal("Electricity Generation", worksheet.intermediate_output_b93.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_c95; assert_equal("V.02", worksheet.intermediate_output_c95.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_d95; assert_equal("GWh", worksheet.intermediate_output_d95.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_ay95; assert_in_epsilon(2012.0, worksheet.intermediate_output_ay95, 0.002); end
  def test_intermediate_output_az95; assert_in_epsilon(2015.0, worksheet.intermediate_output_az95, 0.002); end
  def test_intermediate_output_ba95; assert_in_epsilon(2020.0, worksheet.intermediate_output_ba95, 0.002); end
  def test_intermediate_output_bb95; assert_in_epsilon(2025.0, worksheet.intermediate_output_bb95, 0.002); end
  def test_intermediate_output_bc95; assert_in_epsilon(2030.0, worksheet.intermediate_output_bc95, 0.002); end
  def test_intermediate_output_bd95; assert_in_epsilon(2035.0, worksheet.intermediate_output_bd95, 0.002); end
  def test_intermediate_output_be95; assert_in_epsilon(2040.0, worksheet.intermediate_output_be95, 0.002); end
  def test_intermediate_output_bf95; assert_in_epsilon(2045.0, worksheet.intermediate_output_bf95, 0.002); end
  def test_intermediate_output_bg95; assert_in_epsilon(2050.0, worksheet.intermediate_output_bg95, 0.002); end
  def test_intermediate_output_c96; assert_equal("I.a", worksheet.intermediate_output_c96.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_d96; assert_equal("Biogas power generation", worksheet.intermediate_output_d96.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_f96; assert_in_epsilon(7.04, worksheet.intermediate_output_f96, 0.002); end
  def test_intermediate_output_ay96; assert_in_epsilon(14.508488439699367, worksheet.intermediate_output_ay96, 0.002); end
  def test_intermediate_output_az96; assert_in_epsilon(15.22090291874272, worksheet.intermediate_output_az96, 0.002); end
  def test_intermediate_output_ba96; assert_in_epsilon(16.589544593645552, worksheet.intermediate_output_ba96, 0.002); end
  def test_intermediate_output_bb96; assert_in_epsilon(17.87877740932717, worksheet.intermediate_output_bb96, 0.002); end
  def test_intermediate_output_bc96; assert_in_epsilon(19.00272639447997, worksheet.intermediate_output_bc96, 0.002); end
  def test_intermediate_output_bd96; assert_in_epsilon(19.974237326170343, worksheet.intermediate_output_bd96, 0.002); end
  def test_intermediate_output_be96; assert_in_epsilon(20.808714306771485, worksheet.intermediate_output_be96, 0.002); end
  def test_intermediate_output_bf96; assert_in_epsilon(21.51299182508738, worksheet.intermediate_output_bf96, 0.002); end
  def test_intermediate_output_bg96; assert_in_epsilon(22.091302595602144, worksheet.intermediate_output_bg96, 0.002); end
  def test_intermediate_output_c97; assert_equal("IX.a", worksheet.intermediate_output_c97.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_d97; assert_equal("Domestic space heating and hot water", worksheet.intermediate_output_d97.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_f97; assert_in_delta(0.0, (worksheet.intermediate_output_f97||0), 0.002); end
  def test_intermediate_output_ay97; assert_in_delta(0.0, (worksheet.intermediate_output_ay97||0), 0.002); end
  def test_intermediate_output_az97; assert_in_delta(0.0, (worksheet.intermediate_output_az97||0), 0.002); end
  def test_intermediate_output_ba97; assert_in_delta(0.0, (worksheet.intermediate_output_ba97||0), 0.002); end
  def test_intermediate_output_bb97; assert_in_delta(0.0, (worksheet.intermediate_output_bb97||0), 0.002); end
  def test_intermediate_output_bc97; assert_in_delta(0.0, (worksheet.intermediate_output_bc97||0), 0.002); end
  def test_intermediate_output_bd97; assert_in_delta(0.0, (worksheet.intermediate_output_bd97||0), 0.002); end
  def test_intermediate_output_be97; assert_in_delta(0.0, (worksheet.intermediate_output_be97||0), 0.002); end
  def test_intermediate_output_bf97; assert_in_delta(0.0, (worksheet.intermediate_output_bf97||0), 0.002); end
  def test_intermediate_output_bg97; assert_in_delta(0.0, (worksheet.intermediate_output_bg97||0), 0.002); end
  def test_intermediate_output_c98; assert_equal("IX.c", worksheet.intermediate_output_c98.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_d98; assert_equal("Commercial heating and cooling", worksheet.intermediate_output_d98.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_f98; assert_in_delta(0.0, (worksheet.intermediate_output_f98||0), 0.002); end
  def test_intermediate_output_ay98; assert_in_delta(0.0, (worksheet.intermediate_output_ay98||0), 0.002); end
  def test_intermediate_output_az98; assert_in_delta(0.0, (worksheet.intermediate_output_az98||0), 0.002); end
  def test_intermediate_output_ba98; assert_in_delta(0.0, (worksheet.intermediate_output_ba98||0), 0.002); end
  def test_intermediate_output_bb98; assert_in_delta(0.0, (worksheet.intermediate_output_bb98||0), 0.002); end
  def test_intermediate_output_bc98; assert_in_delta(0.0, (worksheet.intermediate_output_bc98||0), 0.002); end
  def test_intermediate_output_bd98; assert_in_delta(0.0, (worksheet.intermediate_output_bd98||0), 0.002); end
  def test_intermediate_output_be98; assert_in_delta(0.0, (worksheet.intermediate_output_be98||0), 0.002); end
  def test_intermediate_output_bf98; assert_in_delta(0.0, (worksheet.intermediate_output_bf98||0), 0.002); end
  def test_intermediate_output_bg98; assert_in_delta(0.0, (worksheet.intermediate_output_bg98||0), 0.002); end
  def test_intermediate_output_d99; assert_equal("Conventional", worksheet.intermediate_output_d99.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_f99; assert_in_epsilon(7.04, worksheet.intermediate_output_f99, 0.002); end
  def test_intermediate_output_ax99; assert_in_delta(0.0, (worksheet.intermediate_output_ax99||0), 0.002); end
  def test_intermediate_output_ay99; assert_in_epsilon(14.508488439699367, worksheet.intermediate_output_ay99, 0.002); end
  def test_intermediate_output_az99; assert_in_epsilon(15.22090291874272, worksheet.intermediate_output_az99, 0.002); end
  def test_intermediate_output_ba99; assert_in_epsilon(16.589544593645552, worksheet.intermediate_output_ba99, 0.002); end
  def test_intermediate_output_bb99; assert_in_epsilon(17.87877740932717, worksheet.intermediate_output_bb99, 0.002); end
  def test_intermediate_output_bc99; assert_in_epsilon(19.00272639447997, worksheet.intermediate_output_bc99, 0.002); end
  def test_intermediate_output_bd99; assert_in_epsilon(19.974237326170343, worksheet.intermediate_output_bd99, 0.002); end
  def test_intermediate_output_be99; assert_in_epsilon(20.808714306771485, worksheet.intermediate_output_be99, 0.002); end
  def test_intermediate_output_bf99; assert_in_epsilon(21.51299182508738, worksheet.intermediate_output_bf99, 0.002); end
  def test_intermediate_output_bg99; assert_in_epsilon(22.091302595602144, worksheet.intermediate_output_bg99, 0.002); end
  def test_intermediate_output_c100; assert_equal("I.b", worksheet.intermediate_output_c100.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_d100; assert_equal("CCS Power [UNUSED]", worksheet.intermediate_output_d100.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_f100; assert_in_delta(0.0, (worksheet.intermediate_output_f100||0), 0.002); end
  def test_intermediate_output_ay100; assert_in_delta(0.0, (worksheet.intermediate_output_ay100||0), 0.002); end
  def test_intermediate_output_az100; assert_in_delta(0.0, (worksheet.intermediate_output_az100||0), 0.002); end
  def test_intermediate_output_ba100; assert_in_delta(0.0, (worksheet.intermediate_output_ba100||0), 0.002); end
  def test_intermediate_output_bb100; assert_in_delta(0.0, (worksheet.intermediate_output_bb100||0), 0.002); end
  def test_intermediate_output_bc100; assert_in_delta(0.0, (worksheet.intermediate_output_bc100||0), 0.002); end
  def test_intermediate_output_bd100; assert_in_delta(0.0, (worksheet.intermediate_output_bd100||0), 0.002); end
  def test_intermediate_output_be100; assert_in_delta(0.0, (worksheet.intermediate_output_be100||0), 0.002); end
  def test_intermediate_output_bf100; assert_in_delta(0.0, (worksheet.intermediate_output_bf100||0), 0.002); end
  def test_intermediate_output_bg100; assert_in_delta(0.0, (worksheet.intermediate_output_bg100||0), 0.002); end
  def test_intermediate_output_c101; assert_equal("II.a", worksheet.intermediate_output_c101.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_d101; assert_equal("Nuclear power [UNUSED]", worksheet.intermediate_output_d101.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_f101; assert_in_delta(0.0, (worksheet.intermediate_output_f101||0), 0.002); end
  def test_intermediate_output_ay101; assert_in_delta(0.0, (worksheet.intermediate_output_ay101||0), 0.002); end
  def test_intermediate_output_az101; assert_in_delta(0.0, (worksheet.intermediate_output_az101||0), 0.002); end
  def test_intermediate_output_ba101; assert_in_delta(0.0, (worksheet.intermediate_output_ba101||0), 0.002); end
  def test_intermediate_output_bb101; assert_in_delta(0.0, (worksheet.intermediate_output_bb101||0), 0.002); end
  def test_intermediate_output_bc101; assert_in_delta(0.0, (worksheet.intermediate_output_bc101||0), 0.002); end
  def test_intermediate_output_bd101; assert_in_delta(0.0, (worksheet.intermediate_output_bd101||0), 0.002); end
  def test_intermediate_output_be101; assert_in_delta(0.0, (worksheet.intermediate_output_be101||0), 0.002); end
  def test_intermediate_output_bf101; assert_in_delta(0.0, (worksheet.intermediate_output_bf101||0), 0.002); end
  def test_intermediate_output_bg101; assert_in_delta(0.0, (worksheet.intermediate_output_bg101||0), 0.002); end
  def test_intermediate_output_c102; assert_equal("III.a.1", worksheet.intermediate_output_c102.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_d102; assert_equal("Onshore wind", worksheet.intermediate_output_d102.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_f102; assert_in_delta(0.0, (worksheet.intermediate_output_f102||0), 0.002); end
  def test_intermediate_output_ay102; assert_in_delta(0.0, (worksheet.intermediate_output_ay102||0), 0.002); end
  def test_intermediate_output_az102; assert_in_delta(0.0, (worksheet.intermediate_output_az102||0), 0.002); end
  def test_intermediate_output_ba102; assert_in_delta(0.0, (worksheet.intermediate_output_ba102||0), 0.002); end
  def test_intermediate_output_bb102; assert_in_delta(0.0, (worksheet.intermediate_output_bb102||0), 0.002); end
  def test_intermediate_output_bc102; assert_in_delta(0.0, (worksheet.intermediate_output_bc102||0), 0.002); end
  def test_intermediate_output_bd102; assert_in_delta(0.0, (worksheet.intermediate_output_bd102||0), 0.002); end
  def test_intermediate_output_be102; assert_in_delta(0.0, (worksheet.intermediate_output_be102||0), 0.002); end
  def test_intermediate_output_bf102; assert_in_delta(0.0, (worksheet.intermediate_output_bf102||0), 0.002); end
  def test_intermediate_output_bg102; assert_in_delta(0.0, (worksheet.intermediate_output_bg102||0), 0.002); end
  def test_intermediate_output_c103; assert_equal("III.a.2", worksheet.intermediate_output_c103.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_d103; assert_equal("Offshore wind [UNUSED]", worksheet.intermediate_output_d103.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_f103; assert_in_delta(0.0, (worksheet.intermediate_output_f103||0), 0.002); end
  def test_intermediate_output_ay103; assert_in_delta(0.0, (worksheet.intermediate_output_ay103||0), 0.002); end
  def test_intermediate_output_az103; assert_in_delta(0.0, (worksheet.intermediate_output_az103||0), 0.002); end
  def test_intermediate_output_ba103; assert_in_delta(0.0, (worksheet.intermediate_output_ba103||0), 0.002); end
  def test_intermediate_output_bb103; assert_in_delta(0.0, (worksheet.intermediate_output_bb103||0), 0.002); end
  def test_intermediate_output_bc103; assert_in_delta(0.0, (worksheet.intermediate_output_bc103||0), 0.002); end
  def test_intermediate_output_bd103; assert_in_delta(0.0, (worksheet.intermediate_output_bd103||0), 0.002); end
  def test_intermediate_output_be103; assert_in_delta(0.0, (worksheet.intermediate_output_be103||0), 0.002); end
  def test_intermediate_output_bf103; assert_in_delta(0.0, (worksheet.intermediate_output_bf103||0), 0.002); end
  def test_intermediate_output_bg103; assert_in_delta(0.0, (worksheet.intermediate_output_bg103||0), 0.002); end
  def test_intermediate_output_c104; assert_equal("III.b", worksheet.intermediate_output_c104.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_d104; assert_equal("Hydro power", worksheet.intermediate_output_d104.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_f104; assert_in_delta(0.0, (worksheet.intermediate_output_f104||0), 0.002); end
  def test_intermediate_output_ay104; assert_in_delta(0.0, (worksheet.intermediate_output_ay104||0), 0.002); end
  def test_intermediate_output_az104; assert_in_delta(0.0, (worksheet.intermediate_output_az104||0), 0.002); end
  def test_intermediate_output_ba104; assert_in_delta(0.0, (worksheet.intermediate_output_ba104||0), 0.002); end
  def test_intermediate_output_bb104; assert_in_delta(0.0, (worksheet.intermediate_output_bb104||0), 0.002); end
  def test_intermediate_output_bc104; assert_in_delta(0.0, (worksheet.intermediate_output_bc104||0), 0.002); end
  def test_intermediate_output_bd104; assert_in_delta(0.0, (worksheet.intermediate_output_bd104||0), 0.002); end
  def test_intermediate_output_be104; assert_in_delta(0.0, (worksheet.intermediate_output_be104||0), 0.002); end
  def test_intermediate_output_bf104; assert_in_delta(0.0, (worksheet.intermediate_output_bf104||0), 0.002); end
  def test_intermediate_output_bg104; assert_in_delta(0.0, (worksheet.intermediate_output_bg104||0), 0.002); end
  def test_intermediate_output_c105; assert_equal("III.c", worksheet.intermediate_output_c105.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_d105; assert_equal("Tidal & Wave", worksheet.intermediate_output_d105.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_f105; assert_in_delta(0.0, (worksheet.intermediate_output_f105||0), 0.002); end
  def test_intermediate_output_ay105; assert_in_delta(0.0, (worksheet.intermediate_output_ay105||0), 0.002); end
  def test_intermediate_output_az105; assert_in_delta(0.0, (worksheet.intermediate_output_az105||0), 0.002); end
  def test_intermediate_output_ba105; assert_in_delta(0.0, (worksheet.intermediate_output_ba105||0), 0.002); end
  def test_intermediate_output_bb105; assert_in_delta(0.0, (worksheet.intermediate_output_bb105||0), 0.002); end
  def test_intermediate_output_bc105; assert_in_delta(0.0, (worksheet.intermediate_output_bc105||0), 0.002); end
  def test_intermediate_output_bd105; assert_in_delta(0.0, (worksheet.intermediate_output_bd105||0), 0.002); end
  def test_intermediate_output_be105; assert_in_delta(0.0, (worksheet.intermediate_output_be105||0), 0.002); end
  def test_intermediate_output_bf105; assert_in_delta(0.0, (worksheet.intermediate_output_bf105||0), 0.002); end
  def test_intermediate_output_bg105; assert_in_delta(0.0, (worksheet.intermediate_output_bg105||0), 0.002); end
  def test_intermediate_output_c106; assert_equal("III.d", worksheet.intermediate_output_c106.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_d106; assert_equal("Geothermal electricity [UNUSED]", worksheet.intermediate_output_d106.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_f106; assert_in_delta(0.0, (worksheet.intermediate_output_f106||0), 0.002); end
  def test_intermediate_output_ay106; assert_in_delta(0.0, (worksheet.intermediate_output_ay106||0), 0.002); end
  def test_intermediate_output_az106; assert_in_delta(0.0, (worksheet.intermediate_output_az106||0), 0.002); end
  def test_intermediate_output_ba106; assert_in_delta(0.0, (worksheet.intermediate_output_ba106||0), 0.002); end
  def test_intermediate_output_bb106; assert_in_delta(0.0, (worksheet.intermediate_output_bb106||0), 0.002); end
  def test_intermediate_output_bc106; assert_in_delta(0.0, (worksheet.intermediate_output_bc106||0), 0.002); end
  def test_intermediate_output_bd106; assert_in_delta(0.0, (worksheet.intermediate_output_bd106||0), 0.002); end
  def test_intermediate_output_be106; assert_in_delta(0.0, (worksheet.intermediate_output_be106||0), 0.002); end
  def test_intermediate_output_bf106; assert_in_delta(0.0, (worksheet.intermediate_output_bf106||0), 0.002); end
  def test_intermediate_output_bg106; assert_in_delta(0.0, (worksheet.intermediate_output_bg106||0), 0.002); end
  def test_intermediate_output_c107; assert_equal("III.e", worksheet.intermediate_output_c107.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_d107; assert_equal("Tidal [UNUSED - See III.c]", worksheet.intermediate_output_d107.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_f107; assert_in_delta(0.0, (worksheet.intermediate_output_f107||0), 0.002); end
  def test_intermediate_output_ay107; assert_in_delta(0.0, (worksheet.intermediate_output_ay107||0), 0.002); end
  def test_intermediate_output_az107; assert_in_delta(0.0, (worksheet.intermediate_output_az107||0), 0.002); end
  def test_intermediate_output_ba107; assert_in_delta(0.0, (worksheet.intermediate_output_ba107||0), 0.002); end
  def test_intermediate_output_bb107; assert_in_delta(0.0, (worksheet.intermediate_output_bb107||0), 0.002); end
  def test_intermediate_output_bc107; assert_in_delta(0.0, (worksheet.intermediate_output_bc107||0), 0.002); end
  def test_intermediate_output_bd107; assert_in_delta(0.0, (worksheet.intermediate_output_bd107||0), 0.002); end
  def test_intermediate_output_be107; assert_in_delta(0.0, (worksheet.intermediate_output_be107||0), 0.002); end
  def test_intermediate_output_bf107; assert_in_delta(0.0, (worksheet.intermediate_output_bf107||0), 0.002); end
  def test_intermediate_output_bg107; assert_in_delta(0.0, (worksheet.intermediate_output_bg107||0), 0.002); end
  def test_intermediate_output_c108; assert_equal("IV.a", worksheet.intermediate_output_c108.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_d108; assert_equal("Solar PV", worksheet.intermediate_output_d108.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_f108; assert_in_delta(0.0, (worksheet.intermediate_output_f108||0), 0.002); end
  def test_intermediate_output_ay108; assert_in_delta(0.214093779966, worksheet.intermediate_output_ay108, 0.002); end
  def test_intermediate_output_az108; assert_in_epsilon(2.47111155648, worksheet.intermediate_output_az108, 0.002); end
  def test_intermediate_output_ba108; assert_in_epsilon(8.619745426200002, worksheet.intermediate_output_ba108, 0.002); end
  def test_intermediate_output_bb108; assert_in_epsilon(13.570481990700003, worksheet.intermediate_output_bb108, 0.002); end
  def test_intermediate_output_bc108; assert_in_epsilon(18.7524095328, worksheet.intermediate_output_bc108, 0.002); end
  def test_intermediate_output_bd108; assert_in_epsilon(24.0991387515, worksheet.intermediate_output_bd108, 0.002); end
  def test_intermediate_output_be108; assert_in_epsilon(29.564978186699996, worksheet.intermediate_output_be108, 0.002); end
  def test_intermediate_output_bf108; assert_in_epsilon(35.082757486800006, worksheet.intermediate_output_bf108, 0.002); end
  def test_intermediate_output_bg108; assert_in_epsilon(40.5892115532, worksheet.intermediate_output_bg108, 0.002); end
  def test_intermediate_output_d109; assert_equal("Non-thermal renewable generation", worksheet.intermediate_output_d109.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_f109; assert_in_delta(0.0, (worksheet.intermediate_output_f109||0), 0.002); end
  def test_intermediate_output_ay109; assert_in_delta(0.214093779966, worksheet.intermediate_output_ay109, 0.002); end
  def test_intermediate_output_az109; assert_in_epsilon(2.47111155648, worksheet.intermediate_output_az109, 0.002); end
  def test_intermediate_output_ba109; assert_in_epsilon(8.619745426200002, worksheet.intermediate_output_ba109, 0.002); end
  def test_intermediate_output_bb109; assert_in_epsilon(13.570481990700003, worksheet.intermediate_output_bb109, 0.002); end
  def test_intermediate_output_bc109; assert_in_epsilon(18.7524095328, worksheet.intermediate_output_bc109, 0.002); end
  def test_intermediate_output_bd109; assert_in_epsilon(24.0991387515, worksheet.intermediate_output_bd109, 0.002); end
  def test_intermediate_output_be109; assert_in_epsilon(29.564978186699996, worksheet.intermediate_output_be109, 0.002); end
  def test_intermediate_output_bf109; assert_in_epsilon(35.082757486800006, worksheet.intermediate_output_bf109, 0.002); end
  def test_intermediate_output_bg109; assert_in_epsilon(40.5892115532, worksheet.intermediate_output_bg109, 0.002); end
  def test_intermediate_output_c110; assert_equal("VII.a", worksheet.intermediate_output_c110.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_d110; assert_equal("Electricity imports from national grid", worksheet.intermediate_output_d110.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_f110; assert_in_epsilon(2182.16, worksheet.intermediate_output_f110, 0.002); end
  def test_intermediate_output_ay110; assert_in_epsilon(2987.0724146840785, worksheet.intermediate_output_ay110, 0.002); end
  def test_intermediate_output_az110; assert_in_epsilon(3073.005172745109, worksheet.intermediate_output_az110, 0.002); end
  def test_intermediate_output_ba110; assert_in_epsilon(3260.7806669424544, worksheet.intermediate_output_ba110, 0.002); end
  def test_intermediate_output_bb110; assert_in_epsilon(3476.1925267936226, worksheet.intermediate_output_bb110, 0.002); end
  def test_intermediate_output_bc110; assert_in_epsilon(3727.3752893544643, worksheet.intermediate_output_bc110, 0.002); end
  def test_intermediate_output_bd110; assert_in_epsilon(3958.793001646037, worksheet.intermediate_output_bd110, 0.002); end
  def test_intermediate_output_be110; assert_in_epsilon(4146.514535709557, worksheet.intermediate_output_be110, 0.002); end
  def test_intermediate_output_bf110; assert_in_epsilon(4300.029380480905, worksheet.intermediate_output_bf110, 0.002); end
  def test_intermediate_output_bg110; assert_in_epsilon(4430.835078737898, worksheet.intermediate_output_bg110, 0.002); end
  def test_intermediate_output_d111; assert_equal("Total", worksheet.intermediate_output_d111.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_f111; assert_in_epsilon(2189.2, worksheet.intermediate_output_f111, 0.002); end
  def test_intermediate_output_ay111; assert_in_epsilon(3001.794996903744, worksheet.intermediate_output_ay111, 0.002); end
  def test_intermediate_output_az111; assert_in_epsilon(3090.6971872203317, worksheet.intermediate_output_az111, 0.002); end
  def test_intermediate_output_ba111; assert_in_epsilon(3285.9899569623, worksheet.intermediate_output_ba111, 0.002); end
  def test_intermediate_output_bb111; assert_in_epsilon(3507.6417861936498, worksheet.intermediate_output_bb111, 0.002); end
  def test_intermediate_output_bc111; assert_in_epsilon(3765.130425281744, worksheet.intermediate_output_bc111, 0.002); end
  def test_intermediate_output_bd111; assert_in_epsilon(4002.866377723707, worksheet.intermediate_output_bd111, 0.002); end
  def test_intermediate_output_be111; assert_in_epsilon(4196.888228203028, worksheet.intermediate_output_be111, 0.002); end
  def test_intermediate_output_bf111; assert_in_epsilon(4356.625129792793, worksheet.intermediate_output_bf111, 0.002); end
  def test_intermediate_output_bg111; assert_in_epsilon(4493.5155928867, worksheet.intermediate_output_bg111, 0.002); end
  def test_intermediate_output_d113; assert_equal("Electricity exports", worksheet.intermediate_output_d113.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_f113; assert_in_delta(0.0, (worksheet.intermediate_output_f113||0), 0.002); end
  def test_intermediate_output_ax113; assert_in_delta(0.0, (worksheet.intermediate_output_ax113||0), 0.002); end
  def test_intermediate_output_ay113; assert_in_delta(0.0, (worksheet.intermediate_output_ay113||0), 0.002); end
  def test_intermediate_output_az113; assert_in_delta(0.0, (worksheet.intermediate_output_az113||0), 0.002); end
  def test_intermediate_output_ba113; assert_in_delta(0.0, (worksheet.intermediate_output_ba113||0), 0.002); end
  def test_intermediate_output_bb113; assert_in_delta(0.0, (worksheet.intermediate_output_bb113||0), 0.002); end
  def test_intermediate_output_bc113; assert_in_delta(0.0, (worksheet.intermediate_output_bc113||0), 0.002); end
  def test_intermediate_output_bd113; assert_in_delta(0.0, (worksheet.intermediate_output_bd113||0), 0.002); end
  def test_intermediate_output_be113; assert_in_delta(0.0, (worksheet.intermediate_output_be113||0), 0.002); end
  def test_intermediate_output_bf113; assert_in_delta(0.0, (worksheet.intermediate_output_bf113||0), 0.002); end
  def test_intermediate_output_bg113; assert_in_delta(0.0, (worksheet.intermediate_output_bg113||0), 0.002); end
  def test_intermediate_output_bh113; assert_equal("REFERENCED", worksheet.intermediate_output_bh113.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_d114; assert_equal("Electricity used in Wellington, before losses and district heating heat demand", worksheet.intermediate_output_d114.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_f114; assert_in_epsilon(2189.2, worksheet.intermediate_output_f114, 0.002); end
  def test_intermediate_output_ax114; assert_in_delta(0.0, (worksheet.intermediate_output_ax114||0), 0.002); end
  def test_intermediate_output_ay114; assert_in_epsilon(3001.794996903744, worksheet.intermediate_output_ay114, 0.002); end
  def test_intermediate_output_az114; assert_in_epsilon(3090.6971872203317, worksheet.intermediate_output_az114, 0.002); end
  def test_intermediate_output_ba114; assert_in_epsilon(3285.9899569623, worksheet.intermediate_output_ba114, 0.002); end
  def test_intermediate_output_bb114; assert_in_epsilon(3507.6417861936498, worksheet.intermediate_output_bb114, 0.002); end
  def test_intermediate_output_bc114; assert_in_epsilon(3765.130425281744, worksheet.intermediate_output_bc114, 0.002); end
  def test_intermediate_output_bd114; assert_in_epsilon(4002.866377723707, worksheet.intermediate_output_bd114, 0.002); end
  def test_intermediate_output_be114; assert_in_epsilon(4196.888228203028, worksheet.intermediate_output_be114, 0.002); end
  def test_intermediate_output_bf114; assert_in_epsilon(4356.625129792793, worksheet.intermediate_output_bf114, 0.002); end
  def test_intermediate_output_bg114; assert_in_epsilon(4493.5155928867, worksheet.intermediate_output_bg114, 0.002); end
  def test_intermediate_output_d116; assert_equal("MW installed capacity", worksheet.intermediate_output_d116.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_ay116; assert_in_epsilon(2012.0, worksheet.intermediate_output_ay116, 0.002); end
  def test_intermediate_output_az116; assert_in_epsilon(2015.0, worksheet.intermediate_output_az116, 0.002); end
  def test_intermediate_output_ba116; assert_in_epsilon(2020.0, worksheet.intermediate_output_ba116, 0.002); end
  def test_intermediate_output_bb116; assert_in_epsilon(2025.0, worksheet.intermediate_output_bb116, 0.002); end
  def test_intermediate_output_bc116; assert_in_epsilon(2030.0, worksheet.intermediate_output_bc116, 0.002); end
  def test_intermediate_output_bd116; assert_in_epsilon(2035.0, worksheet.intermediate_output_bd116, 0.002); end
  def test_intermediate_output_be116; assert_in_epsilon(2040.0, worksheet.intermediate_output_be116, 0.002); end
  def test_intermediate_output_bf116; assert_in_epsilon(2045.0, worksheet.intermediate_output_bf116, 0.002); end
  def test_intermediate_output_bg116; assert_in_epsilon(2050.0, worksheet.intermediate_output_bg116, 0.002); end
  def test_intermediate_output_c117; assert_equal("I.a", worksheet.intermediate_output_c117.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_d117; assert_equal("Unabated thermal generation ", worksheet.intermediate_output_d117.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_ay117; assert_in_delta(0.0, (worksheet.intermediate_output_ay117||0), 0.002); end
  def test_intermediate_output_az117; assert_in_delta(0.0, (worksheet.intermediate_output_az117||0), 0.002); end
  def test_intermediate_output_ba117; assert_in_delta(0.0, (worksheet.intermediate_output_ba117||0), 0.002); end
  def test_intermediate_output_bb117; assert_in_delta(0.0, (worksheet.intermediate_output_bb117||0), 0.002); end
  def test_intermediate_output_bc117; assert_in_delta(0.0, (worksheet.intermediate_output_bc117||0), 0.002); end
  def test_intermediate_output_bd117; assert_in_delta(0.0, (worksheet.intermediate_output_bd117||0), 0.002); end
  def test_intermediate_output_be117; assert_in_delta(0.0, (worksheet.intermediate_output_be117||0), 0.002); end
  def test_intermediate_output_bf117; assert_in_delta(0.0, (worksheet.intermediate_output_bf117||0), 0.002); end
  def test_intermediate_output_bg117; assert_in_delta(0.0, (worksheet.intermediate_output_bg117||0), 0.002); end
  def test_intermediate_output_c118; assert_equal("I.a.Liquid", worksheet.intermediate_output_c118.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_d118; assert_equal("Oil / Biofuel", worksheet.intermediate_output_d118.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_ay118; assert_in_delta(0.0, (worksheet.intermediate_output_ay118||0), 0.002); end
  def test_intermediate_output_az118; assert_in_delta(0.0, (worksheet.intermediate_output_az118||0), 0.002); end
  def test_intermediate_output_ba118; assert_in_delta(0.0, (worksheet.intermediate_output_ba118||0), 0.002); end
  def test_intermediate_output_bb118; assert_in_delta(0.0, (worksheet.intermediate_output_bb118||0), 0.002); end
  def test_intermediate_output_bc118; assert_in_delta(0.0, (worksheet.intermediate_output_bc118||0), 0.002); end
  def test_intermediate_output_bd118; assert_in_delta(0.0, (worksheet.intermediate_output_bd118||0), 0.002); end
  def test_intermediate_output_be118; assert_in_delta(0.0, (worksheet.intermediate_output_be118||0), 0.002); end
  def test_intermediate_output_bf118; assert_in_delta(0.0, (worksheet.intermediate_output_bf118||0), 0.002); end
  def test_intermediate_output_bg118; assert_in_delta(0.0, (worksheet.intermediate_output_bg118||0), 0.002); end
  def test_intermediate_output_c119; assert_equal("I.a.Solid", worksheet.intermediate_output_c119.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_d119; assert_equal("Coal / Biomass", worksheet.intermediate_output_d119.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_ay119; assert_in_delta(0.0, (worksheet.intermediate_output_ay119||0), 0.002); end
  def test_intermediate_output_az119; assert_in_delta(0.0, (worksheet.intermediate_output_az119||0), 0.002); end
  def test_intermediate_output_ba119; assert_in_delta(0.0, (worksheet.intermediate_output_ba119||0), 0.002); end
  def test_intermediate_output_bb119; assert_in_delta(0.0, (worksheet.intermediate_output_bb119||0), 0.002); end
  def test_intermediate_output_bc119; assert_in_delta(0.0, (worksheet.intermediate_output_bc119||0), 0.002); end
  def test_intermediate_output_bd119; assert_in_delta(0.0, (worksheet.intermediate_output_bd119||0), 0.002); end
  def test_intermediate_output_be119; assert_in_delta(0.0, (worksheet.intermediate_output_be119||0), 0.002); end
  def test_intermediate_output_bf119; assert_in_delta(0.0, (worksheet.intermediate_output_bf119||0), 0.002); end
  def test_intermediate_output_bg119; assert_in_delta(0.0, (worksheet.intermediate_output_bg119||0), 0.002); end
  def test_intermediate_output_c120; assert_equal("I.a.Gas", worksheet.intermediate_output_c120.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_d120; assert_equal("Gas / Biogas", worksheet.intermediate_output_d120.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_ay120; assert_in_delta(0.0, (worksheet.intermediate_output_ay120||0), 0.002); end
  def test_intermediate_output_az120; assert_in_delta(0.0, (worksheet.intermediate_output_az120||0), 0.002); end
  def test_intermediate_output_ba120; assert_in_delta(0.0, (worksheet.intermediate_output_ba120||0), 0.002); end
  def test_intermediate_output_bb120; assert_in_delta(0.0, (worksheet.intermediate_output_bb120||0), 0.002); end
  def test_intermediate_output_bc120; assert_in_delta(0.0, (worksheet.intermediate_output_bc120||0), 0.002); end
  def test_intermediate_output_bd120; assert_in_delta(0.0, (worksheet.intermediate_output_bd120||0), 0.002); end
  def test_intermediate_output_be120; assert_in_delta(0.0, (worksheet.intermediate_output_be120||0), 0.002); end
  def test_intermediate_output_bf120; assert_in_delta(0.0, (worksheet.intermediate_output_bf120||0), 0.002); end
  def test_intermediate_output_bg120; assert_in_delta(0.0, (worksheet.intermediate_output_bg120||0), 0.002); end
  def test_intermediate_output_c121; assert_equal("I.b", worksheet.intermediate_output_c121.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_d121; assert_equal("CCS Power [UNUSED]", worksheet.intermediate_output_d121.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_ay121; assert_in_delta(0.0, (worksheet.intermediate_output_ay121||0), 0.002); end
  def test_intermediate_output_az121; assert_in_delta(0.0, (worksheet.intermediate_output_az121||0), 0.002); end
  def test_intermediate_output_ba121; assert_in_delta(0.0, (worksheet.intermediate_output_ba121||0), 0.002); end
  def test_intermediate_output_bb121; assert_in_delta(0.0, (worksheet.intermediate_output_bb121||0), 0.002); end
  def test_intermediate_output_bc121; assert_in_delta(0.0, (worksheet.intermediate_output_bc121||0), 0.002); end
  def test_intermediate_output_bd121; assert_in_delta(0.0, (worksheet.intermediate_output_bd121||0), 0.002); end
  def test_intermediate_output_be121; assert_in_delta(0.0, (worksheet.intermediate_output_be121||0), 0.002); end
  def test_intermediate_output_bf121; assert_in_delta(0.0, (worksheet.intermediate_output_bf121||0), 0.002); end
  def test_intermediate_output_bg121; assert_in_delta(0.0, (worksheet.intermediate_output_bg121||0), 0.002); end
  def test_intermediate_output_c122; assert_equal("II.a", worksheet.intermediate_output_c122.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_d122; assert_equal("Nuclear power [UNUSED]", worksheet.intermediate_output_d122.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_ay122; assert_in_delta(0.0, (worksheet.intermediate_output_ay122||0), 0.002); end
  def test_intermediate_output_az122; assert_in_delta(0.0, (worksheet.intermediate_output_az122||0), 0.002); end
  def test_intermediate_output_ba122; assert_in_delta(0.0, (worksheet.intermediate_output_ba122||0), 0.002); end
  def test_intermediate_output_bb122; assert_in_delta(0.0, (worksheet.intermediate_output_bb122||0), 0.002); end
  def test_intermediate_output_bc122; assert_in_delta(0.0, (worksheet.intermediate_output_bc122||0), 0.002); end
  def test_intermediate_output_bd122; assert_in_delta(0.0, (worksheet.intermediate_output_bd122||0), 0.002); end
  def test_intermediate_output_be122; assert_in_delta(0.0, (worksheet.intermediate_output_be122||0), 0.002); end
  def test_intermediate_output_bf122; assert_in_delta(0.0, (worksheet.intermediate_output_bf122||0), 0.002); end
  def test_intermediate_output_bg122; assert_in_delta(0.0, (worksheet.intermediate_output_bg122||0), 0.002); end
  def test_intermediate_output_c123; assert_equal("III.a.1", worksheet.intermediate_output_c123.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_d123; assert_equal("Onshore wind", worksheet.intermediate_output_d123.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_ay123; assert_in_delta(0.0, (worksheet.intermediate_output_ay123||0), 0.002); end
  def test_intermediate_output_az123; assert_in_delta(0.0, (worksheet.intermediate_output_az123||0), 0.002); end
  def test_intermediate_output_ba123; assert_in_delta(0.0, (worksheet.intermediate_output_ba123||0), 0.002); end
  def test_intermediate_output_bb123; assert_in_delta(0.0, (worksheet.intermediate_output_bb123||0), 0.002); end
  def test_intermediate_output_bc123; assert_in_delta(0.0, (worksheet.intermediate_output_bc123||0), 0.002); end
  def test_intermediate_output_bd123; assert_in_delta(0.0, (worksheet.intermediate_output_bd123||0), 0.002); end
  def test_intermediate_output_be123; assert_in_delta(0.0, (worksheet.intermediate_output_be123||0), 0.002); end
  def test_intermediate_output_bf123; assert_in_delta(0.0, (worksheet.intermediate_output_bf123||0), 0.002); end
  def test_intermediate_output_bg123; assert_in_delta(0.0, (worksheet.intermediate_output_bg123||0), 0.002); end
  def test_intermediate_output_c124; assert_equal("III.a.2", worksheet.intermediate_output_c124.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_d124; assert_equal("Offshore wind [UNUSED]", worksheet.intermediate_output_d124.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_ay124; assert_in_delta(0.0, (worksheet.intermediate_output_ay124||0), 0.002); end
  def test_intermediate_output_az124; assert_in_delta(0.0, (worksheet.intermediate_output_az124||0), 0.002); end
  def test_intermediate_output_ba124; assert_in_delta(0.0, (worksheet.intermediate_output_ba124||0), 0.002); end
  def test_intermediate_output_bb124; assert_in_delta(0.0, (worksheet.intermediate_output_bb124||0), 0.002); end
  def test_intermediate_output_bc124; assert_in_delta(0.0, (worksheet.intermediate_output_bc124||0), 0.002); end
  def test_intermediate_output_bd124; assert_in_delta(0.0, (worksheet.intermediate_output_bd124||0), 0.002); end
  def test_intermediate_output_be124; assert_in_delta(0.0, (worksheet.intermediate_output_be124||0), 0.002); end
  def test_intermediate_output_bf124; assert_in_delta(0.0, (worksheet.intermediate_output_bf124||0), 0.002); end
  def test_intermediate_output_bg124; assert_in_delta(0.0, (worksheet.intermediate_output_bg124||0), 0.002); end
  def test_intermediate_output_c125; assert_equal("III.b", worksheet.intermediate_output_c125.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_d125; assert_equal("Hydro power", worksheet.intermediate_output_d125.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_ay125; assert_in_delta(0.0, (worksheet.intermediate_output_ay125||0), 0.002); end
  def test_intermediate_output_az125; assert_in_delta(0.0, (worksheet.intermediate_output_az125||0), 0.002); end
  def test_intermediate_output_ba125; assert_in_delta(0.0, (worksheet.intermediate_output_ba125||0), 0.002); end
  def test_intermediate_output_bb125; assert_in_delta(0.0, (worksheet.intermediate_output_bb125||0), 0.002); end
  def test_intermediate_output_bc125; assert_in_delta(0.0, (worksheet.intermediate_output_bc125||0), 0.002); end
  def test_intermediate_output_bd125; assert_in_delta(0.0, (worksheet.intermediate_output_bd125||0), 0.002); end
  def test_intermediate_output_be125; assert_in_delta(0.0, (worksheet.intermediate_output_be125||0), 0.002); end
  def test_intermediate_output_bf125; assert_in_delta(0.0, (worksheet.intermediate_output_bf125||0), 0.002); end
  def test_intermediate_output_bg125; assert_in_delta(0.0, (worksheet.intermediate_output_bg125||0), 0.002); end
  def test_intermediate_output_c126; assert_equal("III.c.Wave", worksheet.intermediate_output_c126.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_d126; assert_equal("Wave", worksheet.intermediate_output_d126.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_ay126; assert_in_delta(0.0, (worksheet.intermediate_output_ay126||0), 0.002); end
  def test_intermediate_output_az126; assert_in_delta(0.0, (worksheet.intermediate_output_az126||0), 0.002); end
  def test_intermediate_output_ba126; assert_in_delta(0.0, (worksheet.intermediate_output_ba126||0), 0.002); end
  def test_intermediate_output_bb126; assert_in_delta(0.0, (worksheet.intermediate_output_bb126||0), 0.002); end
  def test_intermediate_output_bc126; assert_in_delta(0.0, (worksheet.intermediate_output_bc126||0), 0.002); end
  def test_intermediate_output_bd126; assert_in_delta(0.0, (worksheet.intermediate_output_bd126||0), 0.002); end
  def test_intermediate_output_be126; assert_in_delta(0.0, (worksheet.intermediate_output_be126||0), 0.002); end
  def test_intermediate_output_bf126; assert_in_delta(0.0, (worksheet.intermediate_output_bf126||0), 0.002); end
  def test_intermediate_output_bg126; assert_in_delta(0.0, (worksheet.intermediate_output_bg126||0), 0.002); end
  def test_intermediate_output_c127; assert_equal("III.c.TidalStream", worksheet.intermediate_output_c127.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_d127; assert_equal("Tidal Stream", worksheet.intermediate_output_d127.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_ay127; assert_in_delta(0.0, (worksheet.intermediate_output_ay127||0), 0.002); end
  def test_intermediate_output_az127; assert_in_delta(0.0, (worksheet.intermediate_output_az127||0), 0.002); end
  def test_intermediate_output_ba127; assert_in_delta(0.0, (worksheet.intermediate_output_ba127||0), 0.002); end
  def test_intermediate_output_bb127; assert_in_delta(0.0, (worksheet.intermediate_output_bb127||0), 0.002); end
  def test_intermediate_output_bc127; assert_in_delta(0.0, (worksheet.intermediate_output_bc127||0), 0.002); end
  def test_intermediate_output_bd127; assert_in_delta(0.0, (worksheet.intermediate_output_bd127||0), 0.002); end
  def test_intermediate_output_be127; assert_in_delta(0.0, (worksheet.intermediate_output_be127||0), 0.002); end
  def test_intermediate_output_bf127; assert_in_delta(0.0, (worksheet.intermediate_output_bf127||0), 0.002); end
  def test_intermediate_output_bg127; assert_in_delta(0.0, (worksheet.intermediate_output_bg127||0), 0.002); end
  def test_intermediate_output_c128; assert_equal("III.c.TidalRange", worksheet.intermediate_output_c128.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_d128; assert_equal("Tidal Range [UNUSED]", worksheet.intermediate_output_d128.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_ay128; assert_in_delta(0.0, (worksheet.intermediate_output_ay128||0), 0.002); end
  def test_intermediate_output_az128; assert_in_delta(0.0, (worksheet.intermediate_output_az128||0), 0.002); end
  def test_intermediate_output_ba128; assert_in_delta(0.0, (worksheet.intermediate_output_ba128||0), 0.002); end
  def test_intermediate_output_bb128; assert_in_delta(0.0, (worksheet.intermediate_output_bb128||0), 0.002); end
  def test_intermediate_output_bc128; assert_in_delta(0.0, (worksheet.intermediate_output_bc128||0), 0.002); end
  def test_intermediate_output_bd128; assert_in_delta(0.0, (worksheet.intermediate_output_bd128||0), 0.002); end
  def test_intermediate_output_be128; assert_in_delta(0.0, (worksheet.intermediate_output_be128||0), 0.002); end
  def test_intermediate_output_bf128; assert_in_delta(0.0, (worksheet.intermediate_output_bf128||0), 0.002); end
  def test_intermediate_output_bg128; assert_in_delta(0.0, (worksheet.intermediate_output_bg128||0), 0.002); end
  def test_intermediate_output_c129; assert_equal("III.d", worksheet.intermediate_output_c129.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_d129; assert_equal("Geothermal electricity [UNUSED]", worksheet.intermediate_output_d129.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_ay129; assert_in_delta(0.0, (worksheet.intermediate_output_ay129||0), 0.002); end
  def test_intermediate_output_az129; assert_in_delta(0.0, (worksheet.intermediate_output_az129||0), 0.002); end
  def test_intermediate_output_ba129; assert_in_delta(0.0, (worksheet.intermediate_output_ba129||0), 0.002); end
  def test_intermediate_output_bb129; assert_in_delta(0.0, (worksheet.intermediate_output_bb129||0), 0.002); end
  def test_intermediate_output_bc129; assert_in_delta(0.0, (worksheet.intermediate_output_bc129||0), 0.002); end
  def test_intermediate_output_bd129; assert_in_delta(0.0, (worksheet.intermediate_output_bd129||0), 0.002); end
  def test_intermediate_output_be129; assert_in_delta(0.0, (worksheet.intermediate_output_be129||0), 0.002); end
  def test_intermediate_output_bf129; assert_in_delta(0.0, (worksheet.intermediate_output_bf129||0), 0.002); end
  def test_intermediate_output_bg129; assert_in_delta(0.0, (worksheet.intermediate_output_bg129||0), 0.002); end
  def test_intermediate_output_c130; assert_equal("IV.a", worksheet.intermediate_output_c130.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_d130; assert_equal("Solar PV", worksheet.intermediate_output_d130.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_ay130; assert_in_delta(0.0, (worksheet.intermediate_output_ay130||0), 0.002); end
  def test_intermediate_output_az130; assert_in_delta(0.0, (worksheet.intermediate_output_az130||0), 0.002); end
  def test_intermediate_output_ba130; assert_in_delta(0.0, (worksheet.intermediate_output_ba130||0), 0.002); end
  def test_intermediate_output_bb130; assert_in_delta(0.0, (worksheet.intermediate_output_bb130||0), 0.002); end
  def test_intermediate_output_bc130; assert_in_delta(0.0, (worksheet.intermediate_output_bc130||0), 0.002); end
  def test_intermediate_output_bd130; assert_in_delta(0.0, (worksheet.intermediate_output_bd130||0), 0.002); end
  def test_intermediate_output_be130; assert_in_delta(0.0, (worksheet.intermediate_output_be130||0), 0.002); end
  def test_intermediate_output_bf130; assert_in_delta(0.0, (worksheet.intermediate_output_bf130||0), 0.002); end
  def test_intermediate_output_bg130; assert_in_delta(0.0, (worksheet.intermediate_output_bg130||0), 0.002); end
  def test_intermediate_output_c131; assert_equal("VII.c", worksheet.intermediate_output_c131.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_d131; assert_equal("Standby / peaking gas", worksheet.intermediate_output_d131.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_ay131; assert_in_delta(0.0, (worksheet.intermediate_output_ay131||0), 0.002); end
  def test_intermediate_output_az131; assert_in_delta(0.0, (worksheet.intermediate_output_az131||0), 0.002); end
  def test_intermediate_output_ba131; assert_in_delta(0.0, (worksheet.intermediate_output_ba131||0), 0.002); end
  def test_intermediate_output_bb131; assert_in_delta(0.0, (worksheet.intermediate_output_bb131||0), 0.002); end
  def test_intermediate_output_bc131; assert_in_delta(0.0, (worksheet.intermediate_output_bc131||0), 0.002); end
  def test_intermediate_output_bd131; assert_in_delta(0.0, (worksheet.intermediate_output_bd131||0), 0.002); end
  def test_intermediate_output_be131; assert_in_delta(0.0, (worksheet.intermediate_output_be131||0), 0.002); end
  def test_intermediate_output_bf131; assert_in_delta(0.0, (worksheet.intermediate_output_bf131||0), 0.002); end
  def test_intermediate_output_bg131; assert_in_delta(0.0, (worksheet.intermediate_output_bg131||0), 0.002); end
  def test_intermediate_output_d132; assert_equal("Total generation", worksheet.intermediate_output_d132.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_ay132; assert_in_delta(0.0, (worksheet.intermediate_output_ay132||0), 0.002); end
  def test_intermediate_output_az132; assert_in_delta(0.0, (worksheet.intermediate_output_az132||0), 0.002); end
  def test_intermediate_output_ba132; assert_in_delta(0.0, (worksheet.intermediate_output_ba132||0), 0.002); end
  def test_intermediate_output_bb132; assert_in_delta(0.0, (worksheet.intermediate_output_bb132||0), 0.002); end
  def test_intermediate_output_bc132; assert_in_delta(0.0, (worksheet.intermediate_output_bc132||0), 0.002); end
  def test_intermediate_output_bd132; assert_in_delta(0.0, (worksheet.intermediate_output_bd132||0), 0.002); end
  def test_intermediate_output_be132; assert_in_delta(0.0, (worksheet.intermediate_output_be132||0), 0.002); end
  def test_intermediate_output_bf132; assert_in_delta(0.0, (worksheet.intermediate_output_bf132||0), 0.002); end
  def test_intermediate_output_bg132; assert_in_delta(0.0, (worksheet.intermediate_output_bg132||0), 0.002); end
  def test_intermediate_output_b135; assert_equal("Emissions", worksheet.intermediate_output_b135.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_c137; assert_equal("Emissions as % of base year, adjusted so that 2012 matches actuals", worksheet.intermediate_output_c137.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_d138; assert_equal("IPCC Sector", worksheet.intermediate_output_d138.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_f138; assert_equal("2012 Actuals, GHG Inv.", worksheet.intermediate_output_f138.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_ay138; assert_in_epsilon(2012.0, worksheet.intermediate_output_ay138, 0.002); end
  def test_intermediate_output_az138; assert_in_epsilon(2015.0, worksheet.intermediate_output_az138, 0.002); end
  def test_intermediate_output_ba138; assert_in_epsilon(2020.0, worksheet.intermediate_output_ba138, 0.002); end
  def test_intermediate_output_bb138; assert_in_epsilon(2025.0, worksheet.intermediate_output_bb138, 0.002); end
  def test_intermediate_output_bc138; assert_in_epsilon(2030.0, worksheet.intermediate_output_bc138, 0.002); end
  def test_intermediate_output_bd138; assert_in_epsilon(2035.0, worksheet.intermediate_output_bd138, 0.002); end
  def test_intermediate_output_be138; assert_in_epsilon(2040.0, worksheet.intermediate_output_be138, 0.002); end
  def test_intermediate_output_bf138; assert_in_epsilon(2045.0, worksheet.intermediate_output_bf138, 0.002); end
  def test_intermediate_output_bg138; assert_in_epsilon(2050.0, worksheet.intermediate_output_bg138, 0.002); end
  def test_intermediate_output_c139; assert_equal("1A", worksheet.intermediate_output_c139.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_d139; assert_equal("Fuel Combustion", worksheet.intermediate_output_d139.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_c140; assert_equal("1B", worksheet.intermediate_output_c140.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_d140; assert_equal("Fugitive Emissions from Fuels", worksheet.intermediate_output_d140.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_c141; assert_in_delta(1.0, worksheet.intermediate_output_c141, 0.002); end
  def test_intermediate_output_d141; assert_equal("Fuel Combustion", worksheet.intermediate_output_d141.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_f141; assert_in_delta(0.9421687326030799, worksheet.intermediate_output_f141, 0.002); end
  def test_intermediate_output_ay141; assert_in_delta(0.8917774433010845, worksheet.intermediate_output_ay141, 0.002); end
  def test_intermediate_output_az141; assert_in_delta(0.8615825211130308, worksheet.intermediate_output_az141, 0.002); end
  def test_intermediate_output_ba141; assert_in_delta(0.8694882377890204, worksheet.intermediate_output_ba141, 0.002); end
  def test_intermediate_output_bb141; assert_in_delta(0.8213507901707985, worksheet.intermediate_output_bb141, 0.002); end
  def test_intermediate_output_bc141; assert_in_delta(0.6962741891950216, worksheet.intermediate_output_bc141, 0.002); end
  def test_intermediate_output_bd141; assert_in_delta(0.5514198239878121, worksheet.intermediate_output_bd141, 0.002); end
  def test_intermediate_output_be141; assert_in_delta(0.4534913382214519, worksheet.intermediate_output_be141, 0.002); end
  def test_intermediate_output_bf141; assert_in_delta(0.3965503046138395, worksheet.intermediate_output_bf141, 0.002); end
  def test_intermediate_output_bg141; assert_in_delta(0.33421405522339115, worksheet.intermediate_output_bg141, 0.002); end
  def test_intermediate_output_c142; assert_in_epsilon(2.0, worksheet.intermediate_output_c142, 0.002); end
  def test_intermediate_output_d142; assert_equal("Industrial Processes", worksheet.intermediate_output_d142.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_f142; assert_in_delta(0.0, (worksheet.intermediate_output_f142||0), 0.002); end
  def test_intermediate_output_ay142; assert_in_delta(0.0, (worksheet.intermediate_output_ay142||0), 0.002); end
  def test_intermediate_output_az142; assert_in_delta(0.0, (worksheet.intermediate_output_az142||0), 0.002); end
  def test_intermediate_output_ba142; assert_in_delta(0.0, (worksheet.intermediate_output_ba142||0), 0.002); end
  def test_intermediate_output_bb142; assert_in_delta(0.0, (worksheet.intermediate_output_bb142||0), 0.002); end
  def test_intermediate_output_bc142; assert_in_delta(0.0, (worksheet.intermediate_output_bc142||0), 0.002); end
  def test_intermediate_output_bd142; assert_in_delta(0.0, (worksheet.intermediate_output_bd142||0), 0.002); end
  def test_intermediate_output_be142; assert_in_delta(0.0, (worksheet.intermediate_output_be142||0), 0.002); end
  def test_intermediate_output_bf142; assert_in_delta(0.0, (worksheet.intermediate_output_bf142||0), 0.002); end
  def test_intermediate_output_bg142; assert_in_delta(0.0, (worksheet.intermediate_output_bg142||0), 0.002); end
  def test_intermediate_output_c143; assert_in_epsilon(3.0, worksheet.intermediate_output_c143, 0.002); end
  def test_intermediate_output_d143; assert_equal("Solvent and Other Product Use", worksheet.intermediate_output_d143.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_f143; assert_in_delta(0.04615095019724854, worksheet.intermediate_output_f143, 0.002); end
  def test_intermediate_output_ay143; assert_in_delta(0.02738315758497013, worksheet.intermediate_output_ay143, 0.002); end
  def test_intermediate_output_az143; assert_in_delta(0.0307265943864845, worksheet.intermediate_output_az143, 0.002); end
  def test_intermediate_output_ba143; assert_in_delta(0.025578091854461922, worksheet.intermediate_output_ba143, 0.002); end
  def test_intermediate_output_bb143; assert_in_delta(0.01600207211145587, worksheet.intermediate_output_bb143, 0.002); end
  def test_intermediate_output_bc143; assert_in_delta(0.00982337629159309, worksheet.intermediate_output_bc143, 0.002); end
  def test_intermediate_output_bd143; assert_in_delta(0.006250944301331651, worksheet.intermediate_output_bd143, 0.002); end
  def test_intermediate_output_be143; assert_in_delta(0.004454208568558497, worksheet.intermediate_output_be143, 0.002); end
  def test_intermediate_output_bf143; assert_in_delta(0.004327341699773386, worksheet.intermediate_output_bf143, 0.002); end
  def test_intermediate_output_bg143; assert_in_delta(0.004188632595433982, worksheet.intermediate_output_bg143, 0.002); end
  def test_intermediate_output_c144; assert_in_epsilon(4.0, worksheet.intermediate_output_c144, 0.002); end
  def test_intermediate_output_d144; assert_equal("Agriculture", worksheet.intermediate_output_d144.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_f144; assert_in_delta(0.012129683401085369, worksheet.intermediate_output_f144, 0.002); end
  def test_intermediate_output_ay144; assert_in_delta(0.48807168978945664, worksheet.intermediate_output_ay144, 0.002); end
  def test_intermediate_output_az144; assert_in_delta(0.4584288505073508, worksheet.intermediate_output_az144, 0.002); end
  def test_intermediate_output_ba144; assert_in_delta(0.46050171588847827, worksheet.intermediate_output_ba144, 0.002); end
  def test_intermediate_output_bb144; assert_in_delta(0.46229362066389934, worksheet.intermediate_output_bb144, 0.002); end
  def test_intermediate_output_bc144; assert_in_delta(0.4637989680608799, worksheet.intermediate_output_bc144, 0.002); end
  def test_intermediate_output_bd144; assert_in_delta(0.46501216130668527, worksheet.intermediate_output_bd144, 0.002); end
  def test_intermediate_output_be144; assert_in_delta(0.4659276036285811, worksheet.intermediate_output_be144, 0.002); end
  def test_intermediate_output_bf144; assert_in_delta(0.46653969825383285, worksheet.intermediate_output_bf144, 0.002); end
  def test_intermediate_output_bg144; assert_in_delta(0.4668428484097063, worksheet.intermediate_output_bg144, 0.002); end
  def test_intermediate_output_c145; assert_in_epsilon(5.0, worksheet.intermediate_output_c145, 0.002); end
  def test_intermediate_output_d145; assert_equal("LULUCF", worksheet.intermediate_output_d145.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_f145; assert_in_delta(-0.04640807417345856, worksheet.intermediate_output_f145, 0.002); end
  def test_intermediate_output_ay145; assert_in_delta(-0.48851569463895717, worksheet.intermediate_output_ay145, 0.002); end
  def test_intermediate_output_az145; assert_in_delta(-0.35752241026692827, worksheet.intermediate_output_az145, 0.002); end
  def test_intermediate_output_ba145; assert_in_delta(-0.2867457658984011, worksheet.intermediate_output_ba145, 0.002); end
  def test_intermediate_output_bb145; assert_in_delta(-0.4308579774784384, worksheet.intermediate_output_bb145, 0.002); end
  def test_intermediate_output_bc145; assert_in_delta(-0.558401644869979, worksheet.intermediate_output_bc145, 0.002); end
  def test_intermediate_output_bd145; assert_in_delta(-0.7087697140955586, worksheet.intermediate_output_bd145, 0.002); end
  def test_intermediate_output_be145; assert_in_delta(-0.7087697140955586, worksheet.intermediate_output_be145, 0.002); end
  def test_intermediate_output_bf145; assert_in_delta(-0.7087697140955586, worksheet.intermediate_output_bf145, 0.002); end
  def test_intermediate_output_bg145; assert_in_delta(-0.7087697140955586, worksheet.intermediate_output_bg145, 0.002); end
  def test_intermediate_output_c146; assert_in_epsilon(6.0, worksheet.intermediate_output_c146, 0.002); end
  def test_intermediate_output_d146; assert_equal("Waste", worksheet.intermediate_output_d146.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_f146; assert_in_delta(0.04225564210905742, worksheet.intermediate_output_f146, 0.002); end
  def test_intermediate_output_ay146; assert_in_delta(0.08231948042821834, worksheet.intermediate_output_ay146, 0.002); end
  def test_intermediate_output_az146; assert_in_delta(0.0736148604258935, worksheet.intermediate_output_az146, 0.002); end
  def test_intermediate_output_ba146; assert_in_delta(0.06973083909597949, worksheet.intermediate_output_ba146, 0.002); end
  def test_intermediate_output_bb146; assert_in_delta(0.06796390454733078, worksheet.intermediate_output_bb146, 0.002); end
  def test_intermediate_output_bc146; assert_in_delta(0.06724797464391545, worksheet.intermediate_output_bc146, 0.002); end
  def test_intermediate_output_bd146; assert_in_delta(0.0671099816958813, worksheet.intermediate_output_bd146, 0.002); end
  def test_intermediate_output_be146; assert_in_delta(0.06728844380779742, worksheet.intermediate_output_be146, 0.002); end
  def test_intermediate_output_bf146; assert_in_delta(0.06770113822993584, worksheet.intermediate_output_bf146, 0.002); end
  def test_intermediate_output_bg146; assert_in_delta(0.06805413019881792, worksheet.intermediate_output_bg146, 0.002); end
  def test_intermediate_output_c147; assert_in_epsilon(7.0, worksheet.intermediate_output_c147, 0.002); end
  def test_intermediate_output_d147; assert_equal("Other", worksheet.intermediate_output_d147.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_f147; assert_in_delta(0.0, (worksheet.intermediate_output_f147||0), 0.002); end
  def test_intermediate_output_ay147; assert_in_delta(0.0, (worksheet.intermediate_output_ay147||0), 0.002); end
  def test_intermediate_output_az147; assert_in_delta(0.0, (worksheet.intermediate_output_az147||0), 0.002); end
  def test_intermediate_output_ba147; assert_in_delta(0.0, (worksheet.intermediate_output_ba147||0), 0.002); end
  def test_intermediate_output_bb147; assert_in_delta(0.0, (worksheet.intermediate_output_bb147||0), 0.002); end
  def test_intermediate_output_bc147; assert_in_delta(0.0, (worksheet.intermediate_output_bc147||0), 0.002); end
  def test_intermediate_output_bd147; assert_in_delta(0.0, (worksheet.intermediate_output_bd147||0), 0.002); end
  def test_intermediate_output_be147; assert_in_delta(0.0, (worksheet.intermediate_output_be147||0), 0.002); end
  def test_intermediate_output_bf147; assert_in_delta(0.0, (worksheet.intermediate_output_bf147||0), 0.002); end
  def test_intermediate_output_bg147; assert_in_delta(0.0, (worksheet.intermediate_output_bg147||0), 0.002); end
  def test_intermediate_output_c148; assert_equal("X1", worksheet.intermediate_output_c148.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_d148; assert_equal("Int'l Aviation & Shipping", worksheet.intermediate_output_d148.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_f148; assert_in_delta(0.0, (worksheet.intermediate_output_f148||0), 0.002); end
  def test_intermediate_output_ay148; assert_in_delta(0.0, (worksheet.intermediate_output_ay148||0), 0.002); end
  def test_intermediate_output_az148; assert_in_delta(0.0, (worksheet.intermediate_output_az148||0), 0.002); end
  def test_intermediate_output_ba148; assert_in_delta(0.0, (worksheet.intermediate_output_ba148||0), 0.002); end
  def test_intermediate_output_bb148; assert_in_delta(0.0, (worksheet.intermediate_output_bb148||0), 0.002); end
  def test_intermediate_output_bc148; assert_in_delta(0.0, (worksheet.intermediate_output_bc148||0), 0.002); end
  def test_intermediate_output_bd148; assert_in_delta(0.0, (worksheet.intermediate_output_bd148||0), 0.002); end
  def test_intermediate_output_be148; assert_in_delta(0.0, (worksheet.intermediate_output_be148||0), 0.002); end
  def test_intermediate_output_bf148; assert_in_delta(0.0, (worksheet.intermediate_output_bf148||0), 0.002); end
  def test_intermediate_output_bg148; assert_in_delta(0.0, (worksheet.intermediate_output_bg148||0), 0.002); end
  def test_intermediate_output_c149; assert_equal("X2", worksheet.intermediate_output_c149.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_d149; assert_equal("Bioenergy credit", worksheet.intermediate_output_d149.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_ay149; assert_in_delta(-0.004739142327759698, worksheet.intermediate_output_ay149, 0.002); end
  def test_intermediate_output_az149; assert_in_delta(-0.0049718497959825685, worksheet.intermediate_output_az149, 0.002); end
  def test_intermediate_output_ba149; assert_in_delta(-0.005418911371006462, worksheet.intermediate_output_ba149, 0.002); end
  def test_intermediate_output_bb149; assert_in_delta(-0.04185210634389119, worksheet.intermediate_output_bb149, 0.002); end
  def test_intermediate_output_bc149; assert_in_delta(-0.0799162172400901, worksheet.intermediate_output_bc149, 0.002); end
  def test_intermediate_output_bd149; assert_in_delta(-0.11909896427918555, worksheet.intermediate_output_bd149, 0.002); end
  def test_intermediate_output_be149; assert_in_delta(-0.15882089668422453, worksheet.intermediate_output_be149, 0.002); end
  def test_intermediate_output_bf149; assert_in_delta(-0.19851676611264774, worksheet.intermediate_output_bf149, 0.002); end
  def test_intermediate_output_bg149; assert_in_delta(-0.19585753784628543, worksheet.intermediate_output_bg149, 0.002); end
  def test_intermediate_output_c150; assert_equal("X3", worksheet.intermediate_output_c150.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_d150; assert_equal("Carbon capture", worksheet.intermediate_output_d150.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_ay150; assert_in_delta(0.0, (worksheet.intermediate_output_ay150||0), 0.002); end
  def test_intermediate_output_az150; assert_in_delta(0.0, (worksheet.intermediate_output_az150||0), 0.002); end
  def test_intermediate_output_ba150; assert_in_delta(0.0, (worksheet.intermediate_output_ba150||0), 0.002); end
  def test_intermediate_output_bb150; assert_in_delta(0.0, (worksheet.intermediate_output_bb150||0), 0.002); end
  def test_intermediate_output_bc150; assert_in_delta(0.0, (worksheet.intermediate_output_bc150||0), 0.002); end
  def test_intermediate_output_bd150; assert_in_delta(0.0, (worksheet.intermediate_output_bd150||0), 0.002); end
  def test_intermediate_output_be150; assert_in_delta(0.0, (worksheet.intermediate_output_be150||0), 0.002); end
  def test_intermediate_output_bf150; assert_in_delta(0.0, (worksheet.intermediate_output_bf150||0), 0.002); end
  def test_intermediate_output_bg150; assert_in_delta(0.0, (worksheet.intermediate_output_bg150||0), 0.002); end
  def test_intermediate_output_d151; assert_equal("Total", worksheet.intermediate_output_d151.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_f151; assert_in_delta(0.9962969341370126, worksheet.intermediate_output_f151, 0.002); end
  def test_intermediate_output_ay151; assert_in_delta(0.9962969341370126, worksheet.intermediate_output_ay151, 0.002); end
  def test_intermediate_output_az151; assert_in_epsilon(1.0618585663698488, worksheet.intermediate_output_az151, 0.002); end
  def test_intermediate_output_ba151; assert_in_epsilon(1.1331342073585324, worksheet.intermediate_output_ba151, 0.002); end
  def test_intermediate_output_bb151; assert_in_delta(0.8949003036711549, worksheet.intermediate_output_bb151, 0.002); end
  def test_intermediate_output_bc151; assert_in_delta(0.598826646081341, worksheet.intermediate_output_bc151, 0.002); end
  def test_intermediate_output_bd151; assert_in_delta(0.26192423291696626, worksheet.intermediate_output_bd151, 0.002); end
  def test_intermediate_output_be151; assert_in_delta(0.12357098344660586, worksheet.intermediate_output_be151, 0.002); end
  def test_intermediate_output_bf151; assert_in_delta(0.027832002589175342, worksheet.intermediate_output_bf151, 0.002); end
  def test_intermediate_output_bg151; assert_in_delta(-0.031327585514494605, worksheet.intermediate_output_bg151, 0.002); end
  def test_intermediate_output_c153; assert_equal("Excluding international bunkers", worksheet.intermediate_output_c153.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_f153; assert_in_delta(0.9962969341370128, worksheet.intermediate_output_f153, 0.002); end
  def test_intermediate_output_ay153; assert_in_delta(0.9962969341370127, worksheet.intermediate_output_ay153, 0.002); end
  def test_intermediate_output_az153; assert_in_epsilon(1.0618585663698488, worksheet.intermediate_output_az153, 0.002); end
  def test_intermediate_output_ba153; assert_in_epsilon(1.1331342073585327, worksheet.intermediate_output_ba153, 0.002); end
  def test_intermediate_output_bb153; assert_in_delta(0.8949003036711549, worksheet.intermediate_output_bb153, 0.002); end
  def test_intermediate_output_bc153; assert_in_delta(0.5988266460813411, worksheet.intermediate_output_bc153, 0.002); end
  def test_intermediate_output_bd153; assert_in_delta(0.26192423291696615, worksheet.intermediate_output_bd153, 0.002); end
  def test_intermediate_output_be153; assert_in_delta(0.12357098344660576, worksheet.intermediate_output_be153, 0.002); end
  def test_intermediate_output_bf153; assert_in_delta(0.02783200258917518, worksheet.intermediate_output_bf153, 0.002); end
  def test_intermediate_output_bg153; assert_in_delta(-0.031327585514494626, worksheet.intermediate_output_bg153, 0.002); end
  def test_intermediate_output_e155; assert_equal("Adjustment factor:", worksheet.intermediate_output_e155.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_ay155; assert_in_delta(0.5097415717291632, worksheet.intermediate_output_ay155, 0.002); end
  def test_intermediate_output_bf155; assert_equal("% reduction 1990-2050", worksheet.intermediate_output_bf155.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_bg155; assert_in_epsilon(1.0313275855144945, worksheet.intermediate_output_bg155, 0.002); end
  def test_intermediate_output_c157; assert_equal("Emissions by sector", worksheet.intermediate_output_c157.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_f157; assert_equal("Sector", worksheet.intermediate_output_f157.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_ay157; assert_in_epsilon(2012.0, worksheet.intermediate_output_ay157, 0.002); end
  def test_intermediate_output_az157; assert_in_epsilon(2015.0, worksheet.intermediate_output_az157, 0.002); end
  def test_intermediate_output_ba157; assert_in_epsilon(2020.0, worksheet.intermediate_output_ba157, 0.002); end
  def test_intermediate_output_bb157; assert_in_epsilon(2025.0, worksheet.intermediate_output_bb157, 0.002); end
  def test_intermediate_output_bc157; assert_in_epsilon(2030.0, worksheet.intermediate_output_bc157, 0.002); end
  def test_intermediate_output_bd157; assert_in_epsilon(2035.0, worksheet.intermediate_output_bd157, 0.002); end
  def test_intermediate_output_be157; assert_in_epsilon(2040.0, worksheet.intermediate_output_be157, 0.002); end
  def test_intermediate_output_bf157; assert_in_epsilon(2045.0, worksheet.intermediate_output_bf157, 0.002); end
  def test_intermediate_output_bg157; assert_in_epsilon(2050.0, worksheet.intermediate_output_bg157, 0.002); end
  def test_intermediate_output_c158; assert_equal("I", worksheet.intermediate_output_c158.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_f158; assert_equal("Thermal generation", worksheet.intermediate_output_f158.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_ay158; assert_in_delta(0.011658542637987478, worksheet.intermediate_output_ay158, 0.002); end
  def test_intermediate_output_az158; assert_in_delta(0.012231015408970274, worksheet.intermediate_output_az158, 0.002); end
  def test_intermediate_output_ba158; assert_in_delta(0.01333081070393154, worksheet.intermediate_output_ba158, 0.002); end
  def test_intermediate_output_bb158; assert_in_delta(0.014366795659524076, worksheet.intermediate_output_bb158, 0.002); end
  def test_intermediate_output_bc158; assert_in_delta(0.015269963982040119, worksheet.intermediate_output_bc158, 0.002); end
  def test_intermediate_output_bd158; assert_in_delta(0.016050638114115168, worksheet.intermediate_output_bd158, 0.002); end
  def test_intermediate_output_be158; assert_in_delta(0.016721196284195564, worksheet.intermediate_output_be158, 0.002); end
  def test_intermediate_output_bf158; assert_in_delta(0.01728713046199693, worksheet.intermediate_output_bf158, 0.002); end
  def test_intermediate_output_bg158; assert_in_delta(0.017751841917230612, worksheet.intermediate_output_bg158, 0.002); end
  def test_intermediate_output_c159; assert_equal("II", worksheet.intermediate_output_c159.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_f159; assert_equal("Nuclear power generation", worksheet.intermediate_output_f159.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_ay159; assert_in_delta(0.0, (worksheet.intermediate_output_ay159||0), 0.002); end
  def test_intermediate_output_az159; assert_in_delta(0.0, (worksheet.intermediate_output_az159||0), 0.002); end
  def test_intermediate_output_ba159; assert_in_delta(0.0, (worksheet.intermediate_output_ba159||0), 0.002); end
  def test_intermediate_output_bb159; assert_in_delta(0.0, (worksheet.intermediate_output_bb159||0), 0.002); end
  def test_intermediate_output_bc159; assert_in_delta(0.0, (worksheet.intermediate_output_bc159||0), 0.002); end
  def test_intermediate_output_bd159; assert_in_delta(0.0, (worksheet.intermediate_output_bd159||0), 0.002); end
  def test_intermediate_output_be159; assert_in_delta(0.0, (worksheet.intermediate_output_be159||0), 0.002); end
  def test_intermediate_output_bf159; assert_in_delta(0.0, (worksheet.intermediate_output_bf159||0), 0.002); end
  def test_intermediate_output_bg159; assert_in_delta(0.0, (worksheet.intermediate_output_bg159||0), 0.002); end
  def test_intermediate_output_bj159; assert_in_epsilon(2.1591678175622433, worksheet.intermediate_output_bj159, 0.002); end
  def test_intermediate_output_c160; assert_equal("III", worksheet.intermediate_output_c160.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_f160; assert_equal("Large-scale renewable power generation", worksheet.intermediate_output_f160.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_ay160; assert_in_delta(0.0, (worksheet.intermediate_output_ay160||0), 0.002); end
  def test_intermediate_output_az160; assert_in_delta(0.0, (worksheet.intermediate_output_az160||0), 0.002); end
  def test_intermediate_output_ba160; assert_in_delta(0.0, (worksheet.intermediate_output_ba160||0), 0.002); end
  def test_intermediate_output_bb160; assert_in_delta(0.0, (worksheet.intermediate_output_bb160||0), 0.002); end
  def test_intermediate_output_bc160; assert_in_delta(0.0, (worksheet.intermediate_output_bc160||0), 0.002); end
  def test_intermediate_output_bd160; assert_in_delta(0.0, (worksheet.intermediate_output_bd160||0), 0.002); end
  def test_intermediate_output_be160; assert_in_delta(0.0, (worksheet.intermediate_output_be160||0), 0.002); end
  def test_intermediate_output_bf160; assert_in_delta(0.0, (worksheet.intermediate_output_bf160||0), 0.002); end
  def test_intermediate_output_bg160; assert_in_delta(0.0, (worksheet.intermediate_output_bg160||0), 0.002); end
  def test_intermediate_output_c161; assert_equal("IV", worksheet.intermediate_output_c161.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_f161; assert_equal("Distributed renewable power generation", worksheet.intermediate_output_f161.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_ay161; assert_in_delta(0.0, (worksheet.intermediate_output_ay161||0), 0.002); end
  def test_intermediate_output_az161; assert_in_delta(0.0, (worksheet.intermediate_output_az161||0), 0.002); end
  def test_intermediate_output_ba161; assert_in_delta(0.0, (worksheet.intermediate_output_ba161||0), 0.002); end
  def test_intermediate_output_bb161; assert_in_delta(0.0, (worksheet.intermediate_output_bb161||0), 0.002); end
  def test_intermediate_output_bc161; assert_in_delta(0.0, (worksheet.intermediate_output_bc161||0), 0.002); end
  def test_intermediate_output_bd161; assert_in_delta(0.0, (worksheet.intermediate_output_bd161||0), 0.002); end
  def test_intermediate_output_be161; assert_in_delta(0.0, (worksheet.intermediate_output_be161||0), 0.002); end
  def test_intermediate_output_bf161; assert_in_delta(0.0, (worksheet.intermediate_output_bf161||0), 0.002); end
  def test_intermediate_output_bg161; assert_in_delta(0.0, (worksheet.intermediate_output_bg161||0), 0.002); end
  def test_intermediate_output_c162; assert_equal("V", worksheet.intermediate_output_c162.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_f162; assert_equal("Bioenergy", worksheet.intermediate_output_f162.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_ay162; assert_in_delta(-0.011606790751759494, worksheet.intermediate_output_ay162, 0.002); end
  def test_intermediate_output_az162; assert_in_delta(-0.012176722334994176, worksheet.intermediate_output_az162, 0.002); end
  def test_intermediate_output_ba162; assert_in_delta(-0.013271635674916443, worksheet.intermediate_output_ba162, 0.002); end
  def test_intermediate_output_bb162; assert_in_delta(-0.10250138258319945, worksheet.intermediate_output_bb162, 0.002); end
  def test_intermediate_output_bc162; assert_in_delta(-0.19572545980410858, worksheet.intermediate_output_bc162, 0.002); end
  def test_intermediate_output_bd162; assert_in_delta(-0.29168922592651003, worksheet.intermediate_output_bd162, 0.002); end
  def test_intermediate_output_be162; assert_in_delta(-0.3889735288224664, worksheet.intermediate_output_be162, 0.002); end
  def test_intermediate_output_bf162; assert_in_delta(-0.48619400001744695, worksheet.intermediate_output_bf162, 0.002); end
  def test_intermediate_output_bg162; assert_in_delta(-0.47968119581909274, worksheet.intermediate_output_bg162, 0.002); end
  def test_intermediate_output_c163; assert_equal("VI", worksheet.intermediate_output_c163.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_f163; assert_equal("Agriculture & waste", worksheet.intermediate_output_f163.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_ay163; assert_in_delta(0.23106053300323304, worksheet.intermediate_output_ay163, 0.002); end
  def test_intermediate_output_az163; assert_in_delta(0.4564411047828204, worksheet.intermediate_output_az163, 0.002); end
  def test_intermediate_output_ba163; assert_in_delta(0.6293004104227882, worksheet.intermediate_output_ba163, 0.002); end
  def test_intermediate_output_bb163; assert_in_delta(0.2856962651005609, worksheet.intermediate_output_bb163, 0.002); end
  def test_intermediate_output_bc163; assert_in_delta(-0.029529052919435722, worksheet.intermediate_output_bc163, 0.002); end
  def test_intermediate_output_bd163; assert_in_delta(-0.40228192591978884, worksheet.intermediate_output_bd163, 0.002); end
  def test_intermediate_output_be163; assert_in_delta(-0.40343201142894575, worksheet.intermediate_output_be163, 0.002); end
  def test_intermediate_output_bf163; assert_in_delta(-0.39511705777611866, worksheet.intermediate_output_bf163, 0.002); end
  def test_intermediate_output_bg163; assert_in_delta(-0.395578768380933, worksheet.intermediate_output_bg163, 0.002); end
  def test_intermediate_output_c164; assert_equal("VII", worksheet.intermediate_output_c164.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_f164; assert_equal("Electricity distribution, storage & balancing", worksheet.intermediate_output_f164.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_ay164; assert_in_delta(0.46598329669071625, worksheet.intermediate_output_ay164, 0.002); end
  def test_intermediate_output_az164; assert_in_delta(0.37797963624764847, worksheet.intermediate_output_az164, 0.002); end
  def test_intermediate_output_ba164; assert_in_delta(0.32607806669424544, worksheet.intermediate_output_ba164, 0.002); end
  def test_intermediate_output_bb164; assert_in_delta(0.2607144395095217, worksheet.intermediate_output_bb164, 0.002); end
  def test_intermediate_output_bc164; assert_in_delta(0.1863687644677232, worksheet.intermediate_output_bc164, 0.002); end
  def test_intermediate_output_bd164; assert_in_delta(0.09896982504115093, worksheet.intermediate_output_bd164, 0.002); end
  def test_intermediate_output_be164; assert_in_delta(0.09536983432131982, worksheet.intermediate_output_be164, 0.002); end
  def test_intermediate_output_bf164; assert_in_delta(0.09030061699009902, worksheet.intermediate_output_bf164, 0.002); end
  def test_intermediate_output_bg164; assert_in_delta(0.08861670157475796, worksheet.intermediate_output_bg164, 0.002); end
  def test_intermediate_output_c165; assert_equal("VIII", worksheet.intermediate_output_c165.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_f165; assert_equal("H2 Production", worksheet.intermediate_output_f165.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_ay165; assert_in_delta(0.0, (worksheet.intermediate_output_ay165||0), 0.002); end
  def test_intermediate_output_az165; assert_in_delta(0.0, (worksheet.intermediate_output_az165||0), 0.002); end
  def test_intermediate_output_ba165; assert_in_delta(0.0, (worksheet.intermediate_output_ba165||0), 0.002); end
  def test_intermediate_output_bb165; assert_in_delta(0.0, (worksheet.intermediate_output_bb165||0), 0.002); end
  def test_intermediate_output_bc165; assert_in_delta(0.0, (worksheet.intermediate_output_bc165||0), 0.002); end
  def test_intermediate_output_bd165; assert_in_delta(0.0, (worksheet.intermediate_output_bd165||0), 0.002); end
  def test_intermediate_output_be165; assert_in_delta(0.0, (worksheet.intermediate_output_be165||0), 0.002); end
  def test_intermediate_output_bf165; assert_in_delta(0.0, (worksheet.intermediate_output_bf165||0), 0.002); end
  def test_intermediate_output_bg165; assert_in_delta(0.0, (worksheet.intermediate_output_bg165||0), 0.002); end
  def test_intermediate_output_c166; assert_equal("IX", worksheet.intermediate_output_c166.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_f166; assert_equal("Heating", worksheet.intermediate_output_f166.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_ay166; assert_in_delta(0.14550093021174165, worksheet.intermediate_output_ay166, 0.002); end
  def test_intermediate_output_az166; assert_in_delta(0.1501969250274327, worksheet.intermediate_output_az166, 0.002); end
  def test_intermediate_output_ba166; assert_in_delta(0.15852591884166536, worksheet.intermediate_output_ba166, 0.002); end
  def test_intermediate_output_bb166; assert_in_delta(0.16423053141841218, worksheet.intermediate_output_bb166, 0.002); end
  def test_intermediate_output_bc166; assert_in_delta(0.16887280500448862, worksheet.intermediate_output_bc166, 0.002); end
  def test_intermediate_output_bd166; assert_in_delta(0.17264288058723562, worksheet.intermediate_output_bd166, 0.002); end
  def test_intermediate_output_be166; assert_in_delta(0.17557642966844247, worksheet.intermediate_output_be166, 0.002); end
  def test_intermediate_output_bf166; assert_in_delta(0.17765727215703328, worksheet.intermediate_output_bf166, 0.002); end
  def test_intermediate_output_bg166; assert_in_delta(0.1788854080530081, worksheet.intermediate_output_bg166, 0.002); end
  def test_intermediate_output_c167; assert_equal("X", worksheet.intermediate_output_c167.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_f167; assert_equal("Lighting & appliances", worksheet.intermediate_output_f167.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_ay167; assert_in_delta(0.029250632866178444, worksheet.intermediate_output_ay167, 0.002); end
  def test_intermediate_output_az167; assert_in_delta(0.030118516529646998, worksheet.intermediate_output_az167, 0.002); end
  def test_intermediate_output_ba167; assert_in_delta(0.031731552325748626, worksheet.intermediate_output_ba167, 0.002); end
  def test_intermediate_output_bb167; assert_in_delta(0.032801483321998226, worksheet.intermediate_output_bb167, 0.002); end
  def test_intermediate_output_bc167; assert_in_delta(0.03366314531841495, worksheet.intermediate_output_bc167, 0.002); end
  def test_intermediate_output_bd167; assert_in_delta(0.034355659238221085, worksheet.intermediate_output_bd167, 0.002); end
  def test_intermediate_output_be167; assert_in_delta(0.0348788383676101, worksheet.intermediate_output_be167, 0.002); end
  def test_intermediate_output_bf167; assert_in_delta(0.0352307106495545, worksheet.intermediate_output_bf167, 0.002); end
  def test_intermediate_output_bg167; assert_in_delta(0.035411462402039365, worksheet.intermediate_output_bg167, 0.002); end
  def test_intermediate_output_c168; assert_equal("XI", worksheet.intermediate_output_c168.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_f168; assert_equal("Industry", worksheet.intermediate_output_f168.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_ay168; assert_in_delta(0.1868718552005045, worksheet.intermediate_output_ay168, 0.002); end
  def test_intermediate_output_az168; assert_in_delta(0.18797203632477108, worksheet.intermediate_output_az168, 0.002); end
  def test_intermediate_output_ba168; assert_in_delta(0.172460452996408, worksheet.intermediate_output_ba168, 0.002); end
  def test_intermediate_output_bb168; assert_in_delta(0.15614964347343804, worksheet.intermediate_output_bb168, 0.002); end
  def test_intermediate_output_bc168; assert_in_delta(0.13970334218397773, worksheet.intermediate_output_bc168, 0.002); end
  def test_intermediate_output_bd168; assert_in_delta(0.12017268991144865, worksheet.intermediate_output_bd168, 0.002); end
  def test_intermediate_output_be168; assert_in_delta(0.10081287478070755, worksheet.intermediate_output_be168, 0.002); end
  def test_intermediate_output_bf168; assert_in_delta(0.08169138624964337, worksheet.intermediate_output_bf168, 0.002); end
  def test_intermediate_output_bg168; assert_in_delta(0.06286251520780169, worksheet.intermediate_output_bg168, 0.002); end
  def test_intermediate_output_c169; assert_equal("XII", worksheet.intermediate_output_c169.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_f169; assert_equal("Transport", worksheet.intermediate_output_f169.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_ay169; assert_in_epsilon(1.3142798854170905, worksheet.intermediate_output_ay169, 0.002); end
  def test_intermediate_output_az169; assert_in_epsilon(1.3226170205414085, worksheet.intermediate_output_az169, 0.002); end
  def test_intermediate_output_ba169; assert_in_epsilon(1.3943968623851395, worksheet.intermediate_output_ba169, 0.002); end
  def test_intermediate_output_bb169; assert_in_epsilon(1.341081050809181, worksheet.intermediate_output_bb169, 0.002); end
  def test_intermediate_output_bc169; assert_in_epsilon(1.1239239469271012, worksheet.intermediate_output_bc169, 0.002); end
  def test_intermediate_output_bd169; assert_in_delta(0.8779573950742079, worksheet.intermediate_output_bd169, 0.002); end
  def test_intermediate_output_be169; assert_in_delta(0.6607792132843953, worksheet.intermediate_output_be169, 0.002); end
  def test_intermediate_output_bf169; assert_in_delta(0.5367099863133303, worksheet.intermediate_output_bf169, 0.002); end
  def test_intermediate_output_bg169; assert_in_delta(0.4047480866034742, worksheet.intermediate_output_bg169, 0.002); end
  def test_intermediate_output_c170; assert_equal("XIII", worksheet.intermediate_output_c170.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_f170; assert_equal("Solvent and other product use", worksheet.intermediate_output_f170.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_ay170; assert_in_delta(0.067065, worksheet.intermediate_output_ay170, 0.002); end
  def test_intermediate_output_az170; assert_in_delta(0.07525352202846883, worksheet.intermediate_output_az170, 0.002); end
  def test_intermediate_output_ba170; assert_in_delta(0.06264415361510473, worksheet.intermediate_output_ba170, 0.002); end
  def test_intermediate_output_bb170; assert_in_delta(0.03919120586530995, worksheet.intermediate_output_bb170, 0.002); end
  def test_intermediate_output_bc170; assert_in_delta(0.02405875688190505, worksheet.intermediate_output_bc170, 0.002); end
  def test_intermediate_output_bd170; assert_in_delta(0.015309395137064303, worksheet.intermediate_output_bd170, 0.002); end
  def test_intermediate_output_be170; assert_in_delta(0.01090895002606769, worksheet.intermediate_output_be170, 0.002); end
  def test_intermediate_output_bf170; assert_in_delta(0.010598236167424032, worksheet.intermediate_output_bf170, 0.002); end
  def test_intermediate_output_bg170; assert_in_delta(0.010258519096678763, worksheet.intermediate_output_bg170, 0.002); end
  def test_intermediate_output_c171; assert_equal("XIV", worksheet.intermediate_output_c171.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_f171; assert_equal("Geosequestration", worksheet.intermediate_output_f171.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_ay171; assert_in_delta(0.0, (worksheet.intermediate_output_ay171||0), 0.002); end
  def test_intermediate_output_az171; assert_in_delta(0.0, (worksheet.intermediate_output_az171||0), 0.002); end
  def test_intermediate_output_ba171; assert_in_delta(0.0, (worksheet.intermediate_output_ba171||0), 0.002); end
  def test_intermediate_output_bb171; assert_in_delta(0.0, (worksheet.intermediate_output_bb171||0), 0.002); end
  def test_intermediate_output_bc171; assert_in_delta(0.0, (worksheet.intermediate_output_bc171||0), 0.002); end
  def test_intermediate_output_bd171; assert_in_delta(0.0, (worksheet.intermediate_output_bd171||0), 0.002); end
  def test_intermediate_output_be171; assert_in_delta(0.0, (worksheet.intermediate_output_be171||0), 0.002); end
  def test_intermediate_output_bf171; assert_in_delta(0.0, (worksheet.intermediate_output_bf171||0), 0.002); end
  def test_intermediate_output_bg171; assert_in_delta(0.0, (worksheet.intermediate_output_bg171||0), 0.002); end
  def test_intermediate_output_c172; assert_equal("XV", worksheet.intermediate_output_c172.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_f172; assert_equal("Fossil fuel production", worksheet.intermediate_output_f172.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_ay172; assert_in_delta(0.0, (worksheet.intermediate_output_ay172||0), 0.002); end
  def test_intermediate_output_az172; assert_in_delta(0.0, (worksheet.intermediate_output_az172||0), 0.002); end
  def test_intermediate_output_ba172; assert_in_delta(0.0, (worksheet.intermediate_output_ba172||0), 0.002); end
  def test_intermediate_output_bb172; assert_in_delta(0.0, (worksheet.intermediate_output_bb172||0), 0.002); end
  def test_intermediate_output_bc172; assert_in_delta(0.0, (worksheet.intermediate_output_bc172||0), 0.002); end
  def test_intermediate_output_bd172; assert_in_delta(0.0, (worksheet.intermediate_output_bd172||0), 0.002); end
  def test_intermediate_output_be172; assert_in_delta(0.0, (worksheet.intermediate_output_be172||0), 0.002); end
  def test_intermediate_output_bf172; assert_in_delta(0.0, (worksheet.intermediate_output_bf172||0), 0.002); end
  def test_intermediate_output_bg172; assert_in_delta(0.0, (worksheet.intermediate_output_bg172||0), 0.002); end
  def test_intermediate_output_c173; assert_equal("XVI", worksheet.intermediate_output_c173.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_f173; assert_equal("Transfers", worksheet.intermediate_output_f173.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_ay173; assert_in_delta(0.0, (worksheet.intermediate_output_ay173||0), 0.002); end
  def test_intermediate_output_az173; assert_in_delta(0.0, (worksheet.intermediate_output_az173||0), 0.002); end
  def test_intermediate_output_ba173; assert_in_delta(0.0, (worksheet.intermediate_output_ba173||0), 0.002); end
  def test_intermediate_output_bb173; assert_in_delta(0.0, (worksheet.intermediate_output_bb173||0), 0.002); end
  def test_intermediate_output_bc173; assert_in_delta(0.0, (worksheet.intermediate_output_bc173||0), 0.002); end
  def test_intermediate_output_bd173; assert_in_delta(0.0, (worksheet.intermediate_output_bd173||0), 0.002); end
  def test_intermediate_output_be173; assert_in_delta(0.0, (worksheet.intermediate_output_be173||0), 0.002); end
  def test_intermediate_output_bf173; assert_in_delta(0.0, (worksheet.intermediate_output_bf173||0), 0.002); end
  def test_intermediate_output_bg173; assert_in_delta(0.0, (worksheet.intermediate_output_bg173||0), 0.002); end
  def test_intermediate_output_c174; assert_equal("XVII", worksheet.intermediate_output_c174.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_f174; assert_equal("District heating", worksheet.intermediate_output_f174.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_ay174; assert_in_delta(0.0, (worksheet.intermediate_output_ay174||0), 0.002); end
  def test_intermediate_output_az174; assert_in_delta(0.0, (worksheet.intermediate_output_az174||0), 0.002); end
  def test_intermediate_output_ba174; assert_in_delta(0.0, (worksheet.intermediate_output_ba174||0), 0.002); end
  def test_intermediate_output_bb174; assert_in_delta(0.0, (worksheet.intermediate_output_bb174||0), 0.002); end
  def test_intermediate_output_bc174; assert_in_delta(0.0, (worksheet.intermediate_output_bc174||0), 0.002); end
  def test_intermediate_output_bd174; assert_in_delta(0.0, (worksheet.intermediate_output_bd174||0), 0.002); end
  def test_intermediate_output_be174; assert_in_delta(0.0, (worksheet.intermediate_output_be174||0), 0.002); end
  def test_intermediate_output_bf174; assert_in_delta(0.0, (worksheet.intermediate_output_bf174||0), 0.002); end
  def test_intermediate_output_bg174; assert_in_delta(0.0, (worksheet.intermediate_output_bg174||0), 0.002); end
  def test_intermediate_output_f175; assert_equal("Total", worksheet.intermediate_output_f175.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_ay175; assert_in_epsilon(2.4400638852756926, worksheet.intermediate_output_ay175, 0.002); end
  def test_intermediate_output_az175; assert_in_epsilon(2.6006330545561727, worksheet.intermediate_output_az175, 0.002); end
  def test_intermediate_output_ba175; assert_in_epsilon(2.775196592310115, worksheet.intermediate_output_ba175, 0.002); end
  def test_intermediate_output_bb175; assert_in_epsilon(2.1917300325747466, worksheet.intermediate_output_bb175, 0.002); end
  def test_intermediate_output_bc175; assert_in_epsilon(1.4666062120421066, worksheet.intermediate_output_bc175, 0.002); end
  def test_intermediate_output_bd175; assert_in_delta(0.6414873312571447, worksheet.intermediate_output_bd175, 0.002); end
  def test_intermediate_output_be175; assert_in_delta(0.30264179648132633, worksheet.intermediate_output_be175, 0.002); end
  def test_intermediate_output_bf175; assert_in_delta(0.06816428119551596, worksheet.intermediate_output_bf175, 0.002); end
  def test_intermediate_output_bg175; assert_in_delta(-0.07672542934503498, worksheet.intermediate_output_bg175, 0.002); end
  def test_intermediate_output_f176; assert_equal("Emissions in the time period (up to and including year above)", worksheet.intermediate_output_f176.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_az176; assert_in_epsilon(8.015991389375824, worksheet.intermediate_output_az176, 0.002); end
  def test_intermediate_output_ba176; assert_in_epsilon(13.52685588604269, worksheet.intermediate_output_ba176, 0.002); end
  def test_intermediate_output_bb176; assert_in_epsilon(12.125583282344468, worksheet.intermediate_output_bb176, 0.002); end
  def test_intermediate_output_bc176; assert_in_epsilon(8.783278701275814, worksheet.intermediate_output_bc176, 0.002); end
  def test_intermediate_output_bd176; assert_in_epsilon(4.857674417855648, worksheet.intermediate_output_bd176, 0.002); end
  def test_intermediate_output_be176; assert_in_epsilon(2.1909000519582684, worksheet.intermediate_output_be176, 0.002); end
  def test_intermediate_output_bf176; assert_in_delta(0.8097764365492004, worksheet.intermediate_output_bf176, 0.002); end
  def test_intermediate_output_bg176; assert_in_delta(-0.09384772564407304, worksheet.intermediate_output_bg176, 0.002); end
  def test_intermediate_output_bh176; assert_equal("REFERENCED - All costs", worksheet.intermediate_output_bh176.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_c177; assert_equal("Modelled emissions", worksheet.intermediate_output_c177.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_f177; assert_equal("Cumulative emissions", worksheet.intermediate_output_f177.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_az177; assert_in_epsilon(8.015991389375824, worksheet.intermediate_output_az177, 0.002); end
  def test_intermediate_output_ba177; assert_in_epsilon(21.542847275418513, worksheet.intermediate_output_ba177, 0.002); end
  def test_intermediate_output_bb177; assert_in_epsilon(33.66843055776298, worksheet.intermediate_output_bb177, 0.002); end
  def test_intermediate_output_bc177; assert_in_epsilon(42.45170925903879, worksheet.intermediate_output_bc177, 0.002); end
  def test_intermediate_output_bd177; assert_in_epsilon(47.30938367689444, worksheet.intermediate_output_bd177, 0.002); end
  def test_intermediate_output_be177; assert_in_epsilon(49.50028372885271, worksheet.intermediate_output_be177, 0.002); end
  def test_intermediate_output_bf177; assert_in_epsilon(50.31006016540191, worksheet.intermediate_output_bf177, 0.002); end
  def test_intermediate_output_bg177; assert_in_epsilon(50.21621243975783, worksheet.intermediate_output_bg177, 0.002); end
  def test_intermediate_output_d179; assert_equal("IPCC Sector", worksheet.intermediate_output_d179.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_f179; assert_equal("Actuals, GHG Inv.", worksheet.intermediate_output_f179.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_bg179; assert_equal("Mt CO2e", worksheet.intermediate_output_bg179.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_c180; assert_equal("1A", worksheet.intermediate_output_c180.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_d180; assert_equal("Fuel Combustion", worksheet.intermediate_output_d180.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_ay180; assert_in_epsilon(2.1350354490877708, worksheet.intermediate_output_ay180, 0.002); end
  def test_intermediate_output_az180; assert_in_epsilon(2.042913103183891, worksheet.intermediate_output_az180, 0.002); end
  def test_intermediate_output_ba180; assert_in_epsilon(2.0605629762654223, worksheet.intermediate_output_ba180, 0.002); end
  def test_intermediate_output_bb180; assert_in_epsilon(1.9333831463371187, worksheet.intermediate_output_bb180, 0.002); end
  def test_intermediate_output_bc180; assert_in_epsilon(1.5841285269473475, worksheet.intermediate_output_bc180, 0.002); end
  def test_intermediate_output_bd180; assert_in_epsilon(1.2515307657322252, worksheet.intermediate_output_bd180, 0.002); end
  def test_intermediate_output_be180; assert_in_epsilon(1.015290852031183, worksheet.intermediate_output_be180, 0.002); end
  def test_intermediate_output_bf180; assert_in_delta(0.8809038942648126, worksheet.intermediate_output_bf180, 0.002); end
  def test_intermediate_output_bg180; assert_in_delta(0.7299180325590148, worksheet.intermediate_output_bg180, 0.002); end
  def test_intermediate_output_c181; assert_equal("1B", worksheet.intermediate_output_c181.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_d181; assert_equal("Fugitive Emissions from Fuels", worksheet.intermediate_output_d181.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_ay181; assert_in_delta(0.049046282516976424, worksheet.intermediate_output_ay181, 0.002); end
  def test_intermediate_output_az181; assert_in_delta(0.06721724241804916, worksheet.intermediate_output_az181, 0.002); end
  def test_intermediate_output_ba181; assert_in_delta(0.06892952241291309, worksheet.intermediate_output_ba181, 0.002); end
  def test_intermediate_output_bb181; assert_in_delta(0.07821433185285652, worksheet.intermediate_output_bb181, 0.002); end
  def test_intermediate_output_bc181; assert_in_delta(0.12113969690402007, worksheet.intermediate_output_bc181, 0.002); end
  def test_intermediate_output_bd181; assert_in_delta(0.09896982504115093, worksheet.intermediate_output_bd181, 0.002); end
  def test_intermediate_output_be181; assert_in_delta(0.09536983432131982, worksheet.intermediate_output_be181, 0.002); end
  def test_intermediate_output_bf181; assert_in_delta(0.09030061699009902, worksheet.intermediate_output_bf181, 0.002); end
  def test_intermediate_output_bg181; assert_in_delta(0.08861670157475796, worksheet.intermediate_output_bg181, 0.002); end
  def test_intermediate_output_a182; assert_in_delta(0.0, (worksheet.intermediate_output_a182||0), 0.002); end
  def test_intermediate_output_c182; assert_in_delta(1.0, worksheet.intermediate_output_c182, 0.002); end
  def test_intermediate_output_d182; assert_equal("Fuel Combustion", worksheet.intermediate_output_d182.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_f182; assert_in_epsilon(1.176227, worksheet.intermediate_output_f182, 0.002); end
  def test_intermediate_output_ay182; assert_in_epsilon(2.1840817316047474, worksheet.intermediate_output_ay182, 0.002); end
  def test_intermediate_output_az182; assert_in_epsilon(2.1101303456019402, worksheet.intermediate_output_az182, 0.002); end
  def test_intermediate_output_ba182; assert_in_epsilon(2.1294924986783355, worksheet.intermediate_output_ba182, 0.002); end
  def test_intermediate_output_bb182; assert_in_epsilon(2.0115974781899753, worksheet.intermediate_output_bb182, 0.002); end
  def test_intermediate_output_bc182; assert_in_epsilon(1.7052682238513677, worksheet.intermediate_output_bc182, 0.002); end
  def test_intermediate_output_bd182; assert_in_epsilon(1.3505005907733763, worksheet.intermediate_output_bd182, 0.002); end
  def test_intermediate_output_be182; assert_in_epsilon(1.1106606863525028, worksheet.intermediate_output_be182, 0.002); end
  def test_intermediate_output_bf182; assert_in_delta(0.9712045112549117, worksheet.intermediate_output_bf182, 0.002); end
  def test_intermediate_output_bg182; assert_in_delta(0.8185347341337728, worksheet.intermediate_output_bg182, 0.002); end
  def test_intermediate_output_a183; assert_in_delta(0.0, (worksheet.intermediate_output_a183||0), 0.002); end
  def test_intermediate_output_c183; assert_in_epsilon(2.0, worksheet.intermediate_output_c183, 0.002); end
  def test_intermediate_output_d183; assert_equal("Industrial Processes", worksheet.intermediate_output_d183.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_f183; assert_in_delta(0.0, (worksheet.intermediate_output_f183||0), 0.002); end
  def test_intermediate_output_ay183; assert_in_delta(0.0, (worksheet.intermediate_output_ay183||0), 0.002); end
  def test_intermediate_output_az183; assert_in_delta(0.0, (worksheet.intermediate_output_az183||0), 0.002); end
  def test_intermediate_output_ba183; assert_in_delta(0.0, (worksheet.intermediate_output_ba183||0), 0.002); end
  def test_intermediate_output_bb183; assert_in_delta(0.0, (worksheet.intermediate_output_bb183||0), 0.002); end
  def test_intermediate_output_bc183; assert_in_delta(0.0, (worksheet.intermediate_output_bc183||0), 0.002); end
  def test_intermediate_output_bd183; assert_in_delta(0.0, (worksheet.intermediate_output_bd183||0), 0.002); end
  def test_intermediate_output_be183; assert_in_delta(0.0, (worksheet.intermediate_output_be183||0), 0.002); end
  def test_intermediate_output_bf183; assert_in_delta(0.0, (worksheet.intermediate_output_bf183||0), 0.002); end
  def test_intermediate_output_bg183; assert_in_delta(0.0, (worksheet.intermediate_output_bg183||0), 0.002); end
  def test_intermediate_output_a184; assert_in_delta(0.0, (worksheet.intermediate_output_a184||0), 0.002); end
  def test_intermediate_output_c184; assert_in_epsilon(3.0, worksheet.intermediate_output_c184, 0.002); end
  def test_intermediate_output_d184; assert_equal("Solvent and Other Product Use", worksheet.intermediate_output_d184.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_f184; assert_in_delta(0.057616, worksheet.intermediate_output_f184, 0.002); end
  def test_intermediate_output_ay184; assert_in_delta(0.067065, worksheet.intermediate_output_ay184, 0.002); end
  def test_intermediate_output_az184; assert_in_delta(0.07525352202846883, worksheet.intermediate_output_az184, 0.002); end
  def test_intermediate_output_ba184; assert_in_delta(0.06264415361510473, worksheet.intermediate_output_ba184, 0.002); end
  def test_intermediate_output_bb184; assert_in_delta(0.03919120586530995, worksheet.intermediate_output_bb184, 0.002); end
  def test_intermediate_output_bc184; assert_in_delta(0.02405875688190505, worksheet.intermediate_output_bc184, 0.002); end
  def test_intermediate_output_bd184; assert_in_delta(0.015309395137064303, worksheet.intermediate_output_bd184, 0.002); end
  def test_intermediate_output_be184; assert_in_delta(0.01090895002606769, worksheet.intermediate_output_be184, 0.002); end
  def test_intermediate_output_bf184; assert_in_delta(0.010598236167424032, worksheet.intermediate_output_bf184, 0.002); end
  def test_intermediate_output_bg184; assert_in_delta(0.010258519096678763, worksheet.intermediate_output_bg184, 0.002); end
  def test_intermediate_output_a185; assert_in_delta(0.0, (worksheet.intermediate_output_a185||0), 0.002); end
  def test_intermediate_output_c185; assert_in_epsilon(4.0, worksheet.intermediate_output_c185, 0.002); end
  def test_intermediate_output_d185; assert_equal("Agriculture", worksheet.intermediate_output_d185.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_f185; assert_in_delta(0.015143, worksheet.intermediate_output_f185, 0.002); end
  def test_intermediate_output_ay185; assert_in_epsilon(1.195352572988, worksheet.intermediate_output_ay185, 0.002); end
  def test_intermediate_output_az185; assert_in_epsilon(1.122753311552, worksheet.intermediate_output_az185, 0.002); end
  def test_intermediate_output_ba185; assert_in_epsilon(1.1278300349486332, worksheet.intermediate_output_ba185, 0.002); end
  def test_intermediate_output_bb185; assert_in_epsilon(1.132218648401655, worksheet.intermediate_output_bb185, 0.002); end
  def test_intermediate_output_bc185; assert_in_epsilon(1.1359054446692232, worksheet.intermediate_output_bc185, 0.002); end
  def test_intermediate_output_bd185; assert_in_epsilon(1.1388767165094946, worksheet.intermediate_output_bd185, 0.002); end
  def test_intermediate_output_be185; assert_in_epsilon(1.141118756680627, worksheet.intermediate_output_be185, 0.002); end
  def test_intermediate_output_bf185; assert_in_epsilon(1.1426178579407766, worksheet.intermediate_output_bf185, 0.002); end
  def test_intermediate_output_bg185; assert_in_epsilon(1.1433603130481018, worksheet.intermediate_output_bg185, 0.002); end
  def test_intermediate_output_a186; assert_in_delta(0.0, (worksheet.intermediate_output_a186||0), 0.002); end
  def test_intermediate_output_c186; assert_in_epsilon(5.0, worksheet.intermediate_output_c186, 0.002); end
  def test_intermediate_output_d186; assert_equal("LULUCF", worksheet.intermediate_output_d186.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_f186; assert_in_delta(-0.057937, worksheet.intermediate_output_f186, 0.002); end
  def test_intermediate_output_ay186; assert_in_epsilon(-1.19644, worksheet.intermediate_output_ay186, 0.002); end
  def test_intermediate_output_az186; assert_in_delta(-0.87562, worksheet.intermediate_output_az186, 0.002); end
  def test_intermediate_output_ba186; assert_in_delta(-0.7022785714285713, worksheet.intermediate_output_ba186, 0.002); end
  def test_intermediate_output_bb186; assert_in_epsilon(-1.0552285714285712, worksheet.intermediate_output_bb186, 0.002); end
  def test_intermediate_output_bc186; assert_in_epsilon(-1.3675999999999997, worksheet.intermediate_output_bc186, 0.002); end
  def test_intermediate_output_bd186; assert_in_epsilon(-1.735871428571428, worksheet.intermediate_output_bd186, 0.002); end
  def test_intermediate_output_be186; assert_in_epsilon(-1.735871428571428, worksheet.intermediate_output_be186, 0.002); end
  def test_intermediate_output_bf186; assert_in_epsilon(-1.735871428571428, worksheet.intermediate_output_bf186, 0.002); end
  def test_intermediate_output_bg186; assert_in_epsilon(-1.735871428571428, worksheet.intermediate_output_bg186, 0.002); end
  def test_intermediate_output_a187; assert_in_delta(0.0, (worksheet.intermediate_output_a187||0), 0.002); end
  def test_intermediate_output_c187; assert_in_epsilon(6.0, worksheet.intermediate_output_c187, 0.002); end
  def test_intermediate_output_d187; assert_equal("Waste", worksheet.intermediate_output_d187.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_f187; assert_in_delta(0.052753, worksheet.intermediate_output_f187, 0.002); end
  def test_intermediate_output_ay187; assert_in_delta(0.20161137143470464, worksheet.intermediate_output_ay187, 0.002); end
  def test_intermediate_output_az187; assert_in_delta(0.18029259770875813, worksheet.intermediate_output_az187, 0.002); end
  def test_intermediate_output_ba187; assert_in_delta(0.17078011217152936, worksheet.intermediate_output_ba187, 0.002); end
  def test_intermediate_output_bb187; assert_in_delta(0.1664526541295771, worksheet.intermediate_output_bb187, 0.002); end
  def test_intermediate_output_bc187; assert_in_delta(0.16469924644371906, worksheet.intermediate_output_bc187, 0.002); end
  def test_intermediate_output_bd187; assert_in_delta(0.16436128333514788, worksheet.intermediate_output_bd187, 0.002); end
  def test_intermediate_output_be187; assert_in_delta(0.16479836081602334, worksheet.intermediate_output_be187, 0.002); end
  def test_intermediate_output_bf187; assert_in_delta(0.16580910442127889, worksheet.intermediate_output_bf187, 0.002); end
  def test_intermediate_output_bg187; assert_in_delta(0.1666736287669325, worksheet.intermediate_output_bg187, 0.002); end
  def test_intermediate_output_a188; assert_in_delta(0.0, (worksheet.intermediate_output_a188||0), 0.002); end
  def test_intermediate_output_c188; assert_in_epsilon(7.0, worksheet.intermediate_output_c188, 0.002); end
  def test_intermediate_output_d188; assert_equal("Other", worksheet.intermediate_output_d188.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_f188; assert_in_delta(0.0, (worksheet.intermediate_output_f188||0), 0.002); end
  def test_intermediate_output_ay188; assert_in_delta(0.0, (worksheet.intermediate_output_ay188||0), 0.002); end
  def test_intermediate_output_az188; assert_in_delta(0.0, (worksheet.intermediate_output_az188||0), 0.002); end
  def test_intermediate_output_ba188; assert_in_delta(0.0, (worksheet.intermediate_output_ba188||0), 0.002); end
  def test_intermediate_output_bb188; assert_in_delta(0.0, (worksheet.intermediate_output_bb188||0), 0.002); end
  def test_intermediate_output_bc188; assert_in_delta(0.0, (worksheet.intermediate_output_bc188||0), 0.002); end
  def test_intermediate_output_bd188; assert_in_delta(0.0, (worksheet.intermediate_output_bd188||0), 0.002); end
  def test_intermediate_output_be188; assert_in_delta(0.0, (worksheet.intermediate_output_be188||0), 0.002); end
  def test_intermediate_output_bf188; assert_in_delta(0.0, (worksheet.intermediate_output_bf188||0), 0.002); end
  def test_intermediate_output_bg188; assert_in_delta(0.0, (worksheet.intermediate_output_bg188||0), 0.002); end
  def test_intermediate_output_c189; assert_equal("X1", worksheet.intermediate_output_c189.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_d189; assert_equal("Int'l Aviation & Shipping", worksheet.intermediate_output_d189.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_ay189; assert_in_delta(0.0, (worksheet.intermediate_output_ay189||0), 0.002); end
  def test_intermediate_output_az189; assert_in_delta(0.0, (worksheet.intermediate_output_az189||0), 0.002); end
  def test_intermediate_output_ba189; assert_in_delta(0.0, (worksheet.intermediate_output_ba189||0), 0.002); end
  def test_intermediate_output_bb189; assert_in_delta(0.0, (worksheet.intermediate_output_bb189||0), 0.002); end
  def test_intermediate_output_bc189; assert_in_delta(0.0, (worksheet.intermediate_output_bc189||0), 0.002); end
  def test_intermediate_output_bd189; assert_in_delta(0.0, (worksheet.intermediate_output_bd189||0), 0.002); end
  def test_intermediate_output_be189; assert_in_delta(0.0, (worksheet.intermediate_output_be189||0), 0.002); end
  def test_intermediate_output_bf189; assert_in_delta(0.0, (worksheet.intermediate_output_bf189||0), 0.002); end
  def test_intermediate_output_bg189; assert_in_delta(0.0, (worksheet.intermediate_output_bg189||0), 0.002); end
  def test_intermediate_output_c190; assert_equal("X2", worksheet.intermediate_output_c190.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_d190; assert_equal("Bioenergy credit", worksheet.intermediate_output_d190.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_ay190; assert_in_delta(-0.011606790751759494, worksheet.intermediate_output_ay190, 0.002); end
  def test_intermediate_output_az190; assert_in_delta(-0.012176722334994176, worksheet.intermediate_output_az190, 0.002); end
  def test_intermediate_output_ba190; assert_in_delta(-0.013271635674916443, worksheet.intermediate_output_ba190, 0.002); end
  def test_intermediate_output_bb190; assert_in_delta(-0.10250138258319945, worksheet.intermediate_output_bb190, 0.002); end
  def test_intermediate_output_bc190; assert_in_delta(-0.19572545980410858, worksheet.intermediate_output_bc190, 0.002); end
  def test_intermediate_output_bd190; assert_in_delta(-0.29168922592651003, worksheet.intermediate_output_bd190, 0.002); end
  def test_intermediate_output_be190; assert_in_delta(-0.3889735288224664, worksheet.intermediate_output_be190, 0.002); end
  def test_intermediate_output_bf190; assert_in_delta(-0.48619400001744695, worksheet.intermediate_output_bf190, 0.002); end
  def test_intermediate_output_bg190; assert_in_delta(-0.47968119581909274, worksheet.intermediate_output_bg190, 0.002); end
  def test_intermediate_output_c191; assert_equal("X3", worksheet.intermediate_output_c191.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_d191; assert_equal("Carbon capture", worksheet.intermediate_output_d191.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_ay191; assert_in_delta(0.0, (worksheet.intermediate_output_ay191||0), 0.002); end
  def test_intermediate_output_az191; assert_in_delta(0.0, (worksheet.intermediate_output_az191||0), 0.002); end
  def test_intermediate_output_ba191; assert_in_delta(0.0, (worksheet.intermediate_output_ba191||0), 0.002); end
  def test_intermediate_output_bb191; assert_in_delta(0.0, (worksheet.intermediate_output_bb191||0), 0.002); end
  def test_intermediate_output_bc191; assert_in_delta(0.0, (worksheet.intermediate_output_bc191||0), 0.002); end
  def test_intermediate_output_bd191; assert_in_delta(0.0, (worksheet.intermediate_output_bd191||0), 0.002); end
  def test_intermediate_output_be191; assert_in_delta(0.0, (worksheet.intermediate_output_be191||0), 0.002); end
  def test_intermediate_output_bf191; assert_in_delta(0.0, (worksheet.intermediate_output_bf191||0), 0.002); end
  def test_intermediate_output_bg191; assert_in_delta(0.0, (worksheet.intermediate_output_bg191||0), 0.002); end
  def test_intermediate_output_d192; assert_equal("Total", worksheet.intermediate_output_d192.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_f192; assert_in_epsilon(1.243802, worksheet.intermediate_output_f192, 0.002); end
  def test_intermediate_output_ay192; assert_in_epsilon(2.440063885275692, worksheet.intermediate_output_ay192, 0.002); end
  def test_intermediate_output_az192; assert_in_epsilon(2.600633054556173, worksheet.intermediate_output_az192, 0.002); end
  def test_intermediate_output_ba192; assert_in_epsilon(2.7751965923101154, worksheet.intermediate_output_ba192, 0.002); end
  def test_intermediate_output_bb192; assert_in_epsilon(2.1917300325747466, worksheet.intermediate_output_bb192, 0.002); end
  def test_intermediate_output_bc192; assert_in_epsilon(1.466606212042107, worksheet.intermediate_output_bc192, 0.002); end
  def test_intermediate_output_bd192; assert_in_delta(0.6414873312571449, worksheet.intermediate_output_bd192, 0.002); end
  def test_intermediate_output_be192; assert_in_delta(0.3026417964813263, worksheet.intermediate_output_be192, 0.002); end
  def test_intermediate_output_bf192; assert_in_delta(0.0681642811955161, worksheet.intermediate_output_bf192, 0.002); end
  def test_intermediate_output_bg192; assert_in_delta(-0.0767254293450349, worksheet.intermediate_output_bg192, 0.002); end
  def test_intermediate_output_bh192; assert_equal("REFERENCED - All costs", worksheet.intermediate_output_bh192.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_c194; assert_equal("Excluding international bunkers", worksheet.intermediate_output_c194.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_f194; assert_in_epsilon(1.243802, worksheet.intermediate_output_f194, 0.002); end
  def test_intermediate_output_ay194; assert_in_epsilon(2.440063885275692, worksheet.intermediate_output_ay194, 0.002); end
  def test_intermediate_output_az194; assert_in_epsilon(2.600633054556173, worksheet.intermediate_output_az194, 0.002); end
  def test_intermediate_output_ba194; assert_in_epsilon(2.7751965923101154, worksheet.intermediate_output_ba194, 0.002); end
  def test_intermediate_output_bb194; assert_in_epsilon(2.1917300325747466, worksheet.intermediate_output_bb194, 0.002); end
  def test_intermediate_output_bc194; assert_in_epsilon(1.466606212042107, worksheet.intermediate_output_bc194, 0.002); end
  def test_intermediate_output_bd194; assert_in_delta(0.6414873312571449, worksheet.intermediate_output_bd194, 0.002); end
  def test_intermediate_output_be194; assert_in_delta(0.3026417964813263, worksheet.intermediate_output_be194, 0.002); end
  def test_intermediate_output_bf194; assert_in_delta(0.0681642811955161, worksheet.intermediate_output_bf194, 0.002); end
  def test_intermediate_output_bg194; assert_in_delta(-0.0767254293450349, worksheet.intermediate_output_bg194, 0.002); end
  def test_intermediate_output_bh194; assert_equal("REFERENCED - All costs", worksheet.intermediate_output_bh194.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_d195; assert_equal("Fuel combustion with bioenergy credit", worksheet.intermediate_output_d195.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_ay195; assert_in_epsilon(2.1724749408529878, worksheet.intermediate_output_ay195, 0.002); end
  def test_intermediate_output_az195; assert_in_epsilon(2.097953623266946, worksheet.intermediate_output_az195, 0.002); end
  def test_intermediate_output_ba195; assert_in_epsilon(2.116220863003419, worksheet.intermediate_output_ba195, 0.002); end
  def test_intermediate_output_bb195; assert_in_epsilon(1.9090960956067757, worksheet.intermediate_output_bb195, 0.002); end
  def test_intermediate_output_bc195; assert_in_epsilon(1.5095427640472592, worksheet.intermediate_output_bc195, 0.002); end
  def test_intermediate_output_bd195; assert_in_epsilon(1.0588113648468662, worksheet.intermediate_output_bd195, 0.002); end
  def test_intermediate_output_be195; assert_in_delta(0.7216871575300364, worksheet.intermediate_output_be195, 0.002); end
  def test_intermediate_output_bf195; assert_in_delta(0.48501051123746475, worksheet.intermediate_output_bf195, 0.002); end
  def test_intermediate_output_bg195; assert_in_delta(0.33885353831468, worksheet.intermediate_output_bg195, 0.002); end
  def test_intermediate_output_c197; assert_equal("Please note: emissions by sector need to account for bio-energy, which is accounted for separately (in V). ", worksheet.intermediate_output_c197.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_c198; assert_equal("Cumulative emissions are estimates based on a linear trajectory between the 5 year time periods", worksheet.intermediate_output_c198.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_c201; assert_equal("Targets", worksheet.intermediate_output_c201.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_ay201; assert_equal("2050 target", worksheet.intermediate_output_ay201.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_az201; assert_equal("2020 target ", worksheet.intermediate_output_az201.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_bb201; assert_equal("2050 target", worksheet.intermediate_output_bb201.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_bc201; assert_equal("2020 target", worksheet.intermediate_output_bc201.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_be201; assert_equal("Actuals, as % of 2012, modelled", worksheet.intermediate_output_be201.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_f202; assert_equal("Base year (2001)", worksheet.intermediate_output_f202.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_ay202; assert_equal("(20% of base)", worksheet.intermediate_output_ay202.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_az202; assert_equal("(70% of base)", worksheet.intermediate_output_az202.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_bb202; assert_equal("% of 2012", worksheet.intermediate_output_bb202.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_bc202; assert_equal("% of 2012", worksheet.intermediate_output_bc202.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_bf202; assert_in_epsilon(2020.0, worksheet.intermediate_output_bf202, 0.002); end
  def test_intermediate_output_bg202; assert_in_epsilon(2030.0, worksheet.intermediate_output_bg202, 0.002); end
  def test_intermediate_output_bh202; assert_in_epsilon(2050.0, worksheet.intermediate_output_bh202, 0.002); end
  def test_intermediate_output_d203; assert_equal("Kyoto agreed sectors", worksheet.intermediate_output_d203.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_f203; assert_in_epsilon(1.248425, worksheet.intermediate_output_f203, 0.002); end
  def test_intermediate_output_ay203; assert_in_delta(0.249685, worksheet.intermediate_output_ay203, 0.002); end
  def test_intermediate_output_az203; assert_in_delta(0.8738974999999999, worksheet.intermediate_output_az203, 0.002); end
  def test_intermediate_output_d204; assert_equal("International bunkers (CO2 only)", worksheet.intermediate_output_d204.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_f204; assert_in_delta(0.0, (worksheet.intermediate_output_f204||0), 0.002); end
  def test_intermediate_output_d205; assert_equal("Total", worksheet.intermediate_output_d205.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_f205; assert_in_epsilon(1.248425, worksheet.intermediate_output_f205, 0.002); end
  def test_intermediate_output_ay205; assert_in_delta(0.249685, worksheet.intermediate_output_ay205, 0.002); end
  def test_intermediate_output_az205; assert_in_delta(0.8738974999999999, worksheet.intermediate_output_az205, 0.002); end
  def test_intermediate_output_bb205; assert_in_delta(0.25061303658058115, worksheet.intermediate_output_bb205, 0.002); end
  def test_intermediate_output_bc205; assert_in_delta(0.877145628032034, worksheet.intermediate_output_bc205, 0.002); end
  def test_intermediate_output_bf205; assert_in_epsilon(1.1373458740390963, worksheet.intermediate_output_bf205, 0.002); end
  def test_intermediate_output_bg205; assert_in_delta(0.6010523826413674, worksheet.intermediate_output_bg205, 0.002); end
  def test_intermediate_output_bh205; assert_in_delta(-0.03144402480936108, worksheet.intermediate_output_bh205, 0.002); end
  def test_intermediate_output_d206; assert_equal("Target, for chart", worksheet.intermediate_output_d206.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_ay206; assert_in_delta(0.2, worksheet.intermediate_output_ay206, 0.002); end
  def test_intermediate_output_az206; assert_in_delta(0.2, worksheet.intermediate_output_az206, 0.002); end
  def test_intermediate_output_ba206; assert_in_delta(0.2, worksheet.intermediate_output_ba206, 0.002); end
  def test_intermediate_output_bb206; assert_in_delta(0.2, worksheet.intermediate_output_bb206, 0.002); end
  def test_intermediate_output_bc206; assert_in_delta(0.2, worksheet.intermediate_output_bc206, 0.002); end
  def test_intermediate_output_bd206; assert_in_delta(0.2, worksheet.intermediate_output_bd206, 0.002); end
  def test_intermediate_output_be206; assert_in_delta(0.2, worksheet.intermediate_output_be206, 0.002); end
  def test_intermediate_output_bf206; assert_in_delta(0.2, worksheet.intermediate_output_bf206, 0.002); end
  def test_intermediate_output_bg206; assert_in_delta(0.2, worksheet.intermediate_output_bg206, 0.002); end
  def test_intermediate_output_bh206; assert_in_delta(0.2, worksheet.intermediate_output_bh206, 0.002); end
  def test_intermediate_output_d207; assert_equal("Dummy, for chart", worksheet.intermediate_output_d207.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_ay207; assert_in_delta(0.0, (worksheet.intermediate_output_ay207||0), 0.002); end
  def test_intermediate_output_az207; assert_in_delta(0.0, (worksheet.intermediate_output_az207||0), 0.002); end
  def test_intermediate_output_ba207; assert_in_delta(0.0, (worksheet.intermediate_output_ba207||0), 0.002); end
  def test_intermediate_output_bb207; assert_in_delta(0.0, (worksheet.intermediate_output_bb207||0), 0.002); end
  def test_intermediate_output_bc207; assert_in_delta(0.0, (worksheet.intermediate_output_bc207||0), 0.002); end
  def test_intermediate_output_bd207; assert_in_delta(0.0, (worksheet.intermediate_output_bd207||0), 0.002); end
  def test_intermediate_output_be207; assert_in_delta(0.0, (worksheet.intermediate_output_be207||0), 0.002); end
  def test_intermediate_output_bf207; assert_in_delta(0.0, (worksheet.intermediate_output_bf207||0), 0.002); end
  def test_intermediate_output_bg207; assert_in_delta(0.0, (worksheet.intermediate_output_bg207||0), 0.002); end
  def test_intermediate_output_bh207; assert_in_delta(0.0, (worksheet.intermediate_output_bh207||0), 0.002); end
  def test_intermediate_output_b210; assert_equal("Bio-energy - Production and Use", worksheet.intermediate_output_b210.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_b212; assert_equal("Production", worksheet.intermediate_output_b212.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_c214; assert_equal("Domestic", worksheet.intermediate_output_c214.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_ay214; assert_in_epsilon(2012.0, worksheet.intermediate_output_ay214, 0.002); end
  def test_intermediate_output_az214; assert_equal("2015", worksheet.intermediate_output_az214.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_ba214; assert_equal("2020", worksheet.intermediate_output_ba214.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_bb214; assert_equal("2025", worksheet.intermediate_output_bb214.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_bc214; assert_equal("2030", worksheet.intermediate_output_bc214.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_bd214; assert_equal("2035", worksheet.intermediate_output_bd214.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_be214; assert_equal("2040", worksheet.intermediate_output_be214.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_bf214; assert_equal("2045", worksheet.intermediate_output_bf214.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_bg214; assert_equal("2050", worksheet.intermediate_output_bg214.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_c215; assert_equal("V.a", worksheet.intermediate_output_c215.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_d215; assert_equal("V.03", worksheet.intermediate_output_d215.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_e215; assert_equal("Solid hydrocarbons", worksheet.intermediate_output_e215.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_ay215; assert_in_delta(0.0, (worksheet.intermediate_output_ay215||0), 0.002); end
  def test_intermediate_output_az215; assert_in_delta(0.0, (worksheet.intermediate_output_az215||0), 0.002); end
  def test_intermediate_output_ba215; assert_in_delta(0.0, (worksheet.intermediate_output_ba215||0), 0.002); end
  def test_intermediate_output_bb215; assert_in_delta(0.0, (worksheet.intermediate_output_bb215||0), 0.002); end
  def test_intermediate_output_bc215; assert_in_delta(0.0, (worksheet.intermediate_output_bc215||0), 0.002); end
  def test_intermediate_output_bd215; assert_in_delta(0.0, (worksheet.intermediate_output_bd215||0), 0.002); end
  def test_intermediate_output_be215; assert_in_delta(0.0, (worksheet.intermediate_output_be215||0), 0.002); end
  def test_intermediate_output_bf215; assert_in_delta(0.0, (worksheet.intermediate_output_bf215||0), 0.002); end
  def test_intermediate_output_bg215; assert_in_delta(0.0, (worksheet.intermediate_output_bg215||0), 0.002); end
  def test_intermediate_output_c216; assert_equal("V.a", worksheet.intermediate_output_c216.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_d216; assert_equal("V.04", worksheet.intermediate_output_d216.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_e216; assert_equal("Liquid hydrocarbons", worksheet.intermediate_output_e216.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_ay216; assert_in_delta(0.0, (worksheet.intermediate_output_ay216||0), 0.002); end
  def test_intermediate_output_az216; assert_in_delta(0.0, (worksheet.intermediate_output_az216||0), 0.002); end
  def test_intermediate_output_ba216; assert_in_delta(0.0, (worksheet.intermediate_output_ba216||0), 0.002); end
  def test_intermediate_output_bb216; assert_in_delta(0.0, (worksheet.intermediate_output_bb216||0), 0.002); end
  def test_intermediate_output_bc216; assert_in_delta(0.0, (worksheet.intermediate_output_bc216||0), 0.002); end
  def test_intermediate_output_bd216; assert_in_delta(0.0, (worksheet.intermediate_output_bd216||0), 0.002); end
  def test_intermediate_output_be216; assert_in_delta(0.0, (worksheet.intermediate_output_be216||0), 0.002); end
  def test_intermediate_output_bf216; assert_in_delta(0.0, (worksheet.intermediate_output_bf216||0), 0.002); end
  def test_intermediate_output_bg216; assert_in_delta(0.0, (worksheet.intermediate_output_bg216||0), 0.002); end
  def test_intermediate_output_c217; assert_equal("V.a", worksheet.intermediate_output_c217.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_d217; assert_equal("V.05", worksheet.intermediate_output_d217.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_e217; assert_equal("Gaseous hydrocarbons", worksheet.intermediate_output_e217.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_ay217; assert_in_delta(0.0, (worksheet.intermediate_output_ay217||0), 0.002); end
  def test_intermediate_output_az217; assert_in_delta(0.0, (worksheet.intermediate_output_az217||0), 0.002); end
  def test_intermediate_output_ba217; assert_in_delta(0.0, (worksheet.intermediate_output_ba217||0), 0.002); end
  def test_intermediate_output_bb217; assert_in_delta(0.0, (worksheet.intermediate_output_bb217||0), 0.002); end
  def test_intermediate_output_bc217; assert_in_delta(0.0, (worksheet.intermediate_output_bc217||0), 0.002); end
  def test_intermediate_output_bd217; assert_in_delta(0.0, (worksheet.intermediate_output_bd217||0), 0.002); end
  def test_intermediate_output_be217; assert_in_delta(0.0, (worksheet.intermediate_output_be217||0), 0.002); end
  def test_intermediate_output_bf217; assert_in_delta(0.0, (worksheet.intermediate_output_bf217||0), 0.002); end
  def test_intermediate_output_bg217; assert_in_delta(0.0, (worksheet.intermediate_output_bg217||0), 0.002); end
  def test_intermediate_output_c219; assert_equal("Imports", worksheet.intermediate_output_c219.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_c220; assert_equal("V.b", worksheet.intermediate_output_c220.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_d220; assert_equal("V.03", worksheet.intermediate_output_d220.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_e220; assert_equal("Solid hydrocarbons", worksheet.intermediate_output_e220.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_ay220; assert_in_delta(0.0, (worksheet.intermediate_output_ay220||0), 0.002); end
  def test_intermediate_output_az220; assert_in_delta(0.0, (worksheet.intermediate_output_az220||0), 0.002); end
  def test_intermediate_output_ba220; assert_in_delta(0.0, (worksheet.intermediate_output_ba220||0), 0.002); end
  def test_intermediate_output_bb220; assert_in_delta(0.0, (worksheet.intermediate_output_bb220||0), 0.002); end
  def test_intermediate_output_bc220; assert_in_delta(0.0, (worksheet.intermediate_output_bc220||0), 0.002); end
  def test_intermediate_output_bd220; assert_in_delta(0.0, (worksheet.intermediate_output_bd220||0), 0.002); end
  def test_intermediate_output_be220; assert_in_delta(0.0, (worksheet.intermediate_output_be220||0), 0.002); end
  def test_intermediate_output_bf220; assert_in_delta(0.0, (worksheet.intermediate_output_bf220||0), 0.002); end
  def test_intermediate_output_bg220; assert_in_delta(0.0, (worksheet.intermediate_output_bg220||0), 0.002); end
  def test_intermediate_output_c221; assert_equal("V.b", worksheet.intermediate_output_c221.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_d221; assert_equal("V.04", worksheet.intermediate_output_d221.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_e221; assert_equal("Liquid hydrocarbons", worksheet.intermediate_output_e221.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_ay221; assert_in_delta(0.0, (worksheet.intermediate_output_ay221||0), 0.002); end
  def test_intermediate_output_az221; assert_in_delta(0.0, (worksheet.intermediate_output_az221||0), 0.002); end
  def test_intermediate_output_ba221; assert_in_delta(0.0, (worksheet.intermediate_output_ba221||0), 0.002); end
  def test_intermediate_output_bb221; assert_in_delta(0.0, (worksheet.intermediate_output_bb221||0), 0.002); end
  def test_intermediate_output_bc221; assert_in_delta(0.0, (worksheet.intermediate_output_bc221||0), 0.002); end
  def test_intermediate_output_bd221; assert_in_delta(0.0, (worksheet.intermediate_output_bd221||0), 0.002); end
  def test_intermediate_output_be221; assert_in_delta(0.0, (worksheet.intermediate_output_be221||0), 0.002); end
  def test_intermediate_output_bf221; assert_in_delta(0.0, (worksheet.intermediate_output_bf221||0), 0.002); end
  def test_intermediate_output_bg221; assert_in_delta(0.0, (worksheet.intermediate_output_bg221||0), 0.002); end
  def test_intermediate_output_c222; assert_equal("V.b", worksheet.intermediate_output_c222.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_d222; assert_equal("V.05", worksheet.intermediate_output_d222.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_e222; assert_equal("Gaseous hydrocarbons", worksheet.intermediate_output_e222.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_ay222; assert_in_delta(0.0, (worksheet.intermediate_output_ay222||0), 0.002); end
  def test_intermediate_output_az222; assert_in_delta(0.0, (worksheet.intermediate_output_az222||0), 0.002); end
  def test_intermediate_output_ba222; assert_in_delta(0.0, (worksheet.intermediate_output_ba222||0), 0.002); end
  def test_intermediate_output_bb222; assert_in_delta(0.0, (worksheet.intermediate_output_bb222||0), 0.002); end
  def test_intermediate_output_bc222; assert_in_delta(0.0, (worksheet.intermediate_output_bc222||0), 0.002); end
  def test_intermediate_output_bd222; assert_in_delta(0.0, (worksheet.intermediate_output_bd222||0), 0.002); end
  def test_intermediate_output_be222; assert_in_delta(0.0, (worksheet.intermediate_output_be222||0), 0.002); end
  def test_intermediate_output_bf222; assert_in_delta(0.0, (worksheet.intermediate_output_bf222||0), 0.002); end
  def test_intermediate_output_bg222; assert_in_delta(0.0, (worksheet.intermediate_output_bg222||0), 0.002); end
  def test_intermediate_output_c224; assert_equal("Total", worksheet.intermediate_output_c224.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_c225; assert_equal("V.b", worksheet.intermediate_output_c225.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_d225; assert_equal("V.03", worksheet.intermediate_output_d225.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_e225; assert_equal("Solid hydrocarbons", worksheet.intermediate_output_e225.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_ay225; assert_in_delta(0.0, (worksheet.intermediate_output_ay225||0), 0.002); end
  def test_intermediate_output_az225; assert_in_delta(0.0, (worksheet.intermediate_output_az225||0), 0.002); end
  def test_intermediate_output_ba225; assert_in_delta(0.0, (worksheet.intermediate_output_ba225||0), 0.002); end
  def test_intermediate_output_bb225; assert_in_delta(0.0, (worksheet.intermediate_output_bb225||0), 0.002); end
  def test_intermediate_output_bc225; assert_in_delta(0.0, (worksheet.intermediate_output_bc225||0), 0.002); end
  def test_intermediate_output_bd225; assert_in_delta(0.0, (worksheet.intermediate_output_bd225||0), 0.002); end
  def test_intermediate_output_be225; assert_in_delta(0.0, (worksheet.intermediate_output_be225||0), 0.002); end
  def test_intermediate_output_bf225; assert_in_delta(0.0, (worksheet.intermediate_output_bf225||0), 0.002); end
  def test_intermediate_output_bg225; assert_in_delta(0.0, (worksheet.intermediate_output_bg225||0), 0.002); end
  def test_intermediate_output_c226; assert_equal("V.b", worksheet.intermediate_output_c226.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_d226; assert_equal("V.04", worksheet.intermediate_output_d226.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_e226; assert_equal("Liquid hydrocarbons", worksheet.intermediate_output_e226.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_ay226; assert_in_delta(0.0, (worksheet.intermediate_output_ay226||0), 0.002); end
  def test_intermediate_output_az226; assert_in_delta(0.0, (worksheet.intermediate_output_az226||0), 0.002); end
  def test_intermediate_output_ba226; assert_in_delta(0.0, (worksheet.intermediate_output_ba226||0), 0.002); end
  def test_intermediate_output_bb226; assert_in_delta(0.0, (worksheet.intermediate_output_bb226||0), 0.002); end
  def test_intermediate_output_bc226; assert_in_delta(0.0, (worksheet.intermediate_output_bc226||0), 0.002); end
  def test_intermediate_output_bd226; assert_in_delta(0.0, (worksheet.intermediate_output_bd226||0), 0.002); end
  def test_intermediate_output_be226; assert_in_delta(0.0, (worksheet.intermediate_output_be226||0), 0.002); end
  def test_intermediate_output_bf226; assert_in_delta(0.0, (worksheet.intermediate_output_bf226||0), 0.002); end
  def test_intermediate_output_bg226; assert_in_delta(0.0, (worksheet.intermediate_output_bg226||0), 0.002); end
  def test_intermediate_output_c227; assert_equal("V.b", worksheet.intermediate_output_c227.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_d227; assert_equal("V.05", worksheet.intermediate_output_d227.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_e227; assert_equal("Gaseous hydrocarbons", worksheet.intermediate_output_e227.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_ay227; assert_in_delta(0.0, (worksheet.intermediate_output_ay227||0), 0.002); end
  def test_intermediate_output_az227; assert_in_delta(0.0, (worksheet.intermediate_output_az227||0), 0.002); end
  def test_intermediate_output_ba227; assert_in_delta(0.0, (worksheet.intermediate_output_ba227||0), 0.002); end
  def test_intermediate_output_bb227; assert_in_delta(0.0, (worksheet.intermediate_output_bb227||0), 0.002); end
  def test_intermediate_output_bc227; assert_in_delta(0.0, (worksheet.intermediate_output_bc227||0), 0.002); end
  def test_intermediate_output_bd227; assert_in_delta(0.0, (worksheet.intermediate_output_bd227||0), 0.002); end
  def test_intermediate_output_be227; assert_in_delta(0.0, (worksheet.intermediate_output_be227||0), 0.002); end
  def test_intermediate_output_bf227; assert_in_delta(0.0, (worksheet.intermediate_output_bf227||0), 0.002); end
  def test_intermediate_output_bg227; assert_in_delta(0.0, (worksheet.intermediate_output_bg227||0), 0.002); end
  def test_intermediate_output_b229; assert_equal("Hydro-carbon use by sector and Bio-energy share", worksheet.intermediate_output_b229.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_ay229; assert_equal("Please note: Bio-energy is not assigned to sectors but is assumed to replace fossil fuels up to maximum demand", worksheet.intermediate_output_ay229.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_c231; assert_equal("Solid Hydrocarbon consumption", worksheet.intermediate_output_c231.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_ay231; assert_in_epsilon(54.67677763831769, worksheet.intermediate_output_ay231, 0.002); end
  def test_intermediate_output_az231; assert_in_epsilon(56.27203144190709, worksheet.intermediate_output_az231, 0.002); end
  def test_intermediate_output_ba231; assert_in_epsilon(59.29131976164692, worksheet.intermediate_output_ba231, 0.002); end
  def test_intermediate_output_bb231; assert_in_epsilon(61.2921832608632, worksheet.intermediate_output_bb231, 0.002); end
  def test_intermediate_output_bc231; assert_in_epsilon(62.90732634459812, worksheet.intermediate_output_bc231, 0.002); end
  def test_intermediate_output_bd231; assert_in_epsilon(64.20973092418254, worksheet.intermediate_output_bd231, 0.002); end
  def test_intermediate_output_be231; assert_in_epsilon(65.19610484818995, worksheet.intermediate_output_be231, 0.002); end
  def test_intermediate_output_bf231; assert_in_epsilon(65.86278285990707, worksheet.intermediate_output_bf231, 0.002); end
  def test_intermediate_output_bg231; assert_in_epsilon(66.20976495933392, worksheet.intermediate_output_bg231, 0.002); end
  def test_intermediate_output_c232; assert_equal("V", worksheet.intermediate_output_c232.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_d232; assert_equal("Share of solid biomass to total solid hydrocarbon consumption", worksheet.intermediate_output_d232.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_ay232; assert_in_delta(0.0, (worksheet.intermediate_output_ay232||0), 0.002); end
  def test_intermediate_output_az232; assert_in_delta(0.0, (worksheet.intermediate_output_az232||0), 0.002); end
  def test_intermediate_output_ba232; assert_in_delta(0.0, (worksheet.intermediate_output_ba232||0), 0.002); end
  def test_intermediate_output_bb232; assert_in_delta(0.0, (worksheet.intermediate_output_bb232||0), 0.002); end
  def test_intermediate_output_bc232; assert_in_delta(0.0, (worksheet.intermediate_output_bc232||0), 0.002); end
  def test_intermediate_output_bd232; assert_in_delta(0.0, (worksheet.intermediate_output_bd232||0), 0.002); end
  def test_intermediate_output_be232; assert_in_delta(0.0, (worksheet.intermediate_output_be232||0), 0.002); end
  def test_intermediate_output_bf232; assert_in_delta(0.0, (worksheet.intermediate_output_bf232||0), 0.002); end
  def test_intermediate_output_bg232; assert_in_delta(0.0, (worksheet.intermediate_output_bg232||0), 0.002); end
  def test_intermediate_output_c233; assert_equal("I.b", worksheet.intermediate_output_c233.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_d233; assert_equal("CCS Power [UNUSED]", worksheet.intermediate_output_d233.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_ay233; assert_in_delta(0.0, (worksheet.intermediate_output_ay233||0), 0.002); end
  def test_intermediate_output_az233; assert_in_delta(0.0, (worksheet.intermediate_output_az233||0), 0.002); end
  def test_intermediate_output_ba233; assert_in_delta(0.0, (worksheet.intermediate_output_ba233||0), 0.002); end
  def test_intermediate_output_bb233; assert_in_delta(0.0, (worksheet.intermediate_output_bb233||0), 0.002); end
  def test_intermediate_output_bc233; assert_in_delta(0.0, (worksheet.intermediate_output_bc233||0), 0.002); end
  def test_intermediate_output_bd233; assert_in_delta(0.0, (worksheet.intermediate_output_bd233||0), 0.002); end
  def test_intermediate_output_be233; assert_in_delta(0.0, (worksheet.intermediate_output_be233||0), 0.002); end
  def test_intermediate_output_bf233; assert_in_delta(0.0, (worksheet.intermediate_output_bf233||0), 0.002); end
  def test_intermediate_output_bg233; assert_in_delta(0.0, (worksheet.intermediate_output_bg233||0), 0.002); end
  def test_intermediate_output_c234; assert_equal("I.a", worksheet.intermediate_output_c234.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_d234; assert_equal("Biogas power generation", worksheet.intermediate_output_d234.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_ay234; assert_in_delta(0.0, (worksheet.intermediate_output_ay234||0), 0.002); end
  def test_intermediate_output_az234; assert_in_delta(0.0, (worksheet.intermediate_output_az234||0), 0.002); end
  def test_intermediate_output_ba234; assert_in_delta(0.0, (worksheet.intermediate_output_ba234||0), 0.002); end
  def test_intermediate_output_bb234; assert_in_delta(0.0, (worksheet.intermediate_output_bb234||0), 0.002); end
  def test_intermediate_output_bc234; assert_in_delta(0.0, (worksheet.intermediate_output_bc234||0), 0.002); end
  def test_intermediate_output_bd234; assert_in_delta(0.0, (worksheet.intermediate_output_bd234||0), 0.002); end
  def test_intermediate_output_be234; assert_in_delta(0.0, (worksheet.intermediate_output_be234||0), 0.002); end
  def test_intermediate_output_bf234; assert_in_delta(0.0, (worksheet.intermediate_output_bf234||0), 0.002); end
  def test_intermediate_output_bg234; assert_in_delta(0.0, (worksheet.intermediate_output_bg234||0), 0.002); end
  def test_intermediate_output_c235; assert_equal("XI", worksheet.intermediate_output_c235.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_d235; assert_equal("Industry", worksheet.intermediate_output_d235.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_ay235; assert_in_delta(0.0, (worksheet.intermediate_output_ay235||0), 0.002); end
  def test_intermediate_output_az235; assert_in_delta(0.0, (worksheet.intermediate_output_az235||0), 0.002); end
  def test_intermediate_output_ba235; assert_in_delta(0.0, (worksheet.intermediate_output_ba235||0), 0.002); end
  def test_intermediate_output_bb235; assert_in_delta(0.0, (worksheet.intermediate_output_bb235||0), 0.002); end
  def test_intermediate_output_bc235; assert_in_delta(0.0, (worksheet.intermediate_output_bc235||0), 0.002); end
  def test_intermediate_output_bd235; assert_in_delta(0.0, (worksheet.intermediate_output_bd235||0), 0.002); end
  def test_intermediate_output_be235; assert_in_delta(0.0, (worksheet.intermediate_output_be235||0), 0.002); end
  def test_intermediate_output_bf235; assert_in_delta(0.0, (worksheet.intermediate_output_bf235||0), 0.002); end
  def test_intermediate_output_bg235; assert_in_delta(0.0, (worksheet.intermediate_output_bg235||0), 0.002); end
  def test_intermediate_output_c236; assert_equal("IX", worksheet.intermediate_output_c236.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_d236; assert_equal("Heating", worksheet.intermediate_output_d236.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_ay236; assert_in_epsilon(54.67677763831769, worksheet.intermediate_output_ay236, 0.002); end
  def test_intermediate_output_az236; assert_in_epsilon(56.27203144190709, worksheet.intermediate_output_az236, 0.002); end
  def test_intermediate_output_ba236; assert_in_epsilon(59.29131976164692, worksheet.intermediate_output_ba236, 0.002); end
  def test_intermediate_output_bb236; assert_in_epsilon(61.2921832608632, worksheet.intermediate_output_bb236, 0.002); end
  def test_intermediate_output_bc236; assert_in_epsilon(62.90732634459812, worksheet.intermediate_output_bc236, 0.002); end
  def test_intermediate_output_bd236; assert_in_epsilon(64.20973092418254, worksheet.intermediate_output_bd236, 0.002); end
  def test_intermediate_output_be236; assert_in_epsilon(65.19610484818995, worksheet.intermediate_output_be236, 0.002); end
  def test_intermediate_output_bf236; assert_in_epsilon(65.86278285990707, worksheet.intermediate_output_bf236, 0.002); end
  def test_intermediate_output_bg236; assert_in_epsilon(66.20976495933392, worksheet.intermediate_output_bg236, 0.002); end
  def test_intermediate_output_c238; assert_equal("Liquid Hydrocarbon consumption", worksheet.intermediate_output_c238.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_ay238; assert_in_epsilon(5583.968924946566, worksheet.intermediate_output_ay238, 0.002); end
  def test_intermediate_output_az238; assert_in_epsilon(5616.186866296027, worksheet.intermediate_output_az238, 0.002); end
  def test_intermediate_output_ba238; assert_in_epsilon(5886.174177279776, worksheet.intermediate_output_ba238, 0.002); end
  def test_intermediate_output_bb238; assert_in_epsilon(5682.040011648532, worksheet.intermediate_output_bb238, 0.002); end
  def test_intermediate_output_bc238; assert_in_epsilon(4778.537319877898, worksheet.intermediate_output_bc238, 0.002); end
  def test_intermediate_output_bd238; assert_in_epsilon(3764.5441277895284, worksheet.intermediate_output_bd238, 0.002); end
  def test_intermediate_output_be238; assert_in_epsilon(2876.787465649744, worksheet.intermediate_output_be238, 0.002); end
  def test_intermediate_output_bf238; assert_in_epsilon(2392.9833306543214, worksheet.intermediate_output_bf238, 0.002); end
  def test_intermediate_output_bg238; assert_in_epsilon(1848.032614970444, worksheet.intermediate_output_bg238, 0.002); end
  def test_intermediate_output_c239; assert_equal("V", worksheet.intermediate_output_c239.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_d239; assert_equal("Share of Bioliquids to total liquid hydrocarbon consumption", worksheet.intermediate_output_d239.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_ay239; assert_in_delta(0.0, (worksheet.intermediate_output_ay239||0), 0.002); end
  def test_intermediate_output_az239; assert_in_delta(0.0, (worksheet.intermediate_output_az239||0), 0.002); end
  def test_intermediate_output_ba239; assert_in_delta(0.0, (worksheet.intermediate_output_ba239||0), 0.002); end
  def test_intermediate_output_bb239; assert_in_delta(0.0, (worksheet.intermediate_output_bb239||0), 0.002); end
  def test_intermediate_output_bc239; assert_in_delta(0.0, (worksheet.intermediate_output_bc239||0), 0.002); end
  def test_intermediate_output_bd239; assert_in_delta(0.0, (worksheet.intermediate_output_bd239||0), 0.002); end
  def test_intermediate_output_be239; assert_in_delta(0.0, (worksheet.intermediate_output_be239||0), 0.002); end
  def test_intermediate_output_bf239; assert_in_delta(0.0, (worksheet.intermediate_output_bf239||0), 0.002); end
  def test_intermediate_output_bg239; assert_in_delta(0.0, (worksheet.intermediate_output_bg239||0), 0.002); end
  def test_intermediate_output_c240; assert_equal("XII", worksheet.intermediate_output_c240.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_d240; assert_equal("Transport", worksheet.intermediate_output_d240.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_ay240; assert_in_epsilon(5160.222327375605, worksheet.intermediate_output_ay240, 0.002); end
  def test_intermediate_output_az240; assert_in_epsilon(5192.956200344529, worksheet.intermediate_output_az240, 0.002); end
  def test_intermediate_output_ba240; assert_in_epsilon(5474.783493486097, worksheet.intermediate_output_ba240, 0.002); end
  def test_intermediate_output_bb240; assert_in_epsilon(5265.451033673626, worksheet.intermediate_output_bb240, 0.002); end
  def test_intermediate_output_bc240; assert_in_epsilon(4412.832844478018, worksheet.intermediate_output_bc240, 0.002); end
  def test_intermediate_output_bd240; assert_in_epsilon(3447.1008822513486, worksheet.intermediate_output_bd240, 0.002); end
  def test_intermediate_output_be240; assert_in_epsilon(2594.3999354245043, worksheet.intermediate_output_be240, 0.002); end
  def test_intermediate_output_bf240; assert_in_epsilon(2107.270213467949, worksheet.intermediate_output_bf240, 0.002); end
  def test_intermediate_output_bg240; assert_in_epsilon(1589.151699442606, worksheet.intermediate_output_bg240, 0.002); end
  def test_intermediate_output_c241; assert_equal("XI", worksheet.intermediate_output_c241.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_d241; assert_equal("Industry", worksheet.intermediate_output_d241.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_ay241; assert_in_epsilon(260.5833333333333, worksheet.intermediate_output_ay241, 0.002); end
  def test_intermediate_output_az241; assert_in_epsilon(264.8042835576082, worksheet.intermediate_output_az241, 0.002); end
  def test_intermediate_output_ba241; assert_in_epsilon(235.06882204282846, worksheet.intermediate_output_ba241, 0.002); end
  def test_intermediate_output_bb241; assert_in_epsilon(202.25128539403482, worksheet.intermediate_output_bb241, 0.002); end
  def test_intermediate_output_bc241; assert_in_epsilon(168.90456238223862, worksheet.intermediate_output_bc241, 0.002); end
  def test_intermediate_output_bd241; assert_in_epsilon(147.564606820633, worksheet.intermediate_output_bd241, 0.002); end
  def test_intermediate_output_be241; assert_in_epsilon(126.78054379523225, worksheet.intermediate_output_be241, 0.002); end
  def test_intermediate_output_bf241; assert_in_epsilon(106.80371669801795, worksheet.intermediate_output_bf241, 0.002); end
  def test_intermediate_output_bg241; assert_in_epsilon(87.83666663524845, worksheet.intermediate_output_bg241, 0.002); end
  def test_intermediate_output_c242; assert_equal("XV.a", worksheet.intermediate_output_c242.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_d242; assert_equal("Petroleum refineries", worksheet.intermediate_output_d242.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_ay242; assert_in_delta(0.0, (worksheet.intermediate_output_ay242||0), 0.002); end
  def test_intermediate_output_az242; assert_in_delta(0.0, (worksheet.intermediate_output_az242||0), 0.002); end
  def test_intermediate_output_ba242; assert_in_delta(0.0, (worksheet.intermediate_output_ba242||0), 0.002); end
  def test_intermediate_output_bb242; assert_in_delta(0.0, (worksheet.intermediate_output_bb242||0), 0.002); end
  def test_intermediate_output_bc242; assert_in_delta(0.0, (worksheet.intermediate_output_bc242||0), 0.002); end
  def test_intermediate_output_bd242; assert_in_delta(0.0, (worksheet.intermediate_output_bd242||0), 0.002); end
  def test_intermediate_output_be242; assert_in_delta(0.0, (worksheet.intermediate_output_be242||0), 0.002); end
  def test_intermediate_output_bf242; assert_in_delta(0.0, (worksheet.intermediate_output_bf242||0), 0.002); end
  def test_intermediate_output_bg242; assert_in_delta(0.0, (worksheet.intermediate_output_bg242||0), 0.002); end
  def test_intermediate_output_c244; assert_equal("Gaseous Hydrocarbon consumption", worksheet.intermediate_output_c244.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_ay244; assert_in_epsilon(1493.695048863025, worksheet.intermediate_output_ay244, 0.002); end
  def test_intermediate_output_az244; assert_in_epsilon(1522.4449178213604, worksheet.intermediate_output_az244, 0.002); end
  def test_intermediate_output_ba244; assert_in_epsilon(1530.1146397043901, worksheet.intermediate_output_ba244, 0.002); end
  def test_intermediate_output_bb244; assert_in_epsilon(1523.1296130121045, worksheet.intermediate_output_bb244, 0.002); end
  def test_intermediate_output_bc244; assert_in_epsilon(1509.6524346254748, worksheet.intermediate_output_bc244, 0.002); end
  def test_intermediate_output_bd244; assert_in_epsilon(1457.2704203565918, worksheet.intermediate_output_bd244, 0.002); end
  def test_intermediate_output_be244; assert_in_epsilon(1399.9122072340676, worksheet.intermediate_output_be244, 0.002); end
  def test_intermediate_output_bf244; assert_in_epsilon(1337.538971717155, worksheet.intermediate_output_bf244, 0.002); end
  def test_intermediate_output_bg244; assert_in_epsilon(1270.184759190436, worksheet.intermediate_output_bg244, 0.002); end
  def test_intermediate_output_c245; assert_equal("V", worksheet.intermediate_output_c245.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_d245; assert_equal("Share of Biogas to total gaseous hydrocarbon consumption", worksheet.intermediate_output_d245.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_ay245; assert_in_delta(0.0, (worksheet.intermediate_output_ay245||0), 0.002); end
  def test_intermediate_output_az245; assert_in_delta(0.0, (worksheet.intermediate_output_az245||0), 0.002); end
  def test_intermediate_output_ba245; assert_in_delta(0.0, (worksheet.intermediate_output_ba245||0), 0.002); end
  def test_intermediate_output_bb245; assert_in_delta(0.0, (worksheet.intermediate_output_bb245||0), 0.002); end
  def test_intermediate_output_bc245; assert_in_delta(0.0, (worksheet.intermediate_output_bc245||0), 0.002); end
  def test_intermediate_output_bd245; assert_in_delta(0.0, (worksheet.intermediate_output_bd245||0), 0.002); end
  def test_intermediate_output_be245; assert_in_delta(0.0, (worksheet.intermediate_output_be245||0), 0.002); end
  def test_intermediate_output_bf245; assert_in_delta(0.0, (worksheet.intermediate_output_bf245||0), 0.002); end
  def test_intermediate_output_bg245; assert_in_delta(0.0, (worksheet.intermediate_output_bg245||0), 0.002); end
  def test_intermediate_output_c246; assert_equal("IX.a", worksheet.intermediate_output_c246.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_d246; assert_equal("Domestic space heating and hot water", worksheet.intermediate_output_d246.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_ay246; assert_in_epsilon(280.1879416526582, worksheet.intermediate_output_ay246, 0.002); end
  def test_intermediate_output_az246; assert_in_epsilon(292.42335685670884, worksheet.intermediate_output_az246, 0.002); end
  def test_intermediate_output_ba246; assert_in_epsilon(310.5464906551898, worksheet.intermediate_output_ba246, 0.002); end
  def test_intermediate_output_bb246; assert_in_epsilon(324.2231703068354, worksheet.intermediate_output_bb246, 0.002); end
  def test_intermediate_output_bc246; assert_in_epsilon(335.5999598825316, worksheet.intermediate_output_bc246, 0.002); end
  def test_intermediate_output_bd246; assert_in_epsilon(345.0141765934177, worksheet.intermediate_output_bd246, 0.002); end
  def test_intermediate_output_be246; assert_in_epsilon(352.8491354521519, worksheet.intermediate_output_be246, 0.002); end
  def test_intermediate_output_bf246; assert_in_epsilon(359.02817345620247, worksheet.intermediate_output_bf246, 0.002); end
  def test_intermediate_output_bg246; assert_in_epsilon(363.55129060556965, worksheet.intermediate_output_bg246, 0.002); end
  def test_intermediate_output_c247; assert_equal("IX.c", worksheet.intermediate_output_c247.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_d247; assert_equal("Commercial heating and cooling", worksheet.intermediate_output_d247.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_ay247; assert_in_epsilon(350.8004470588236, worksheet.intermediate_output_ay247, 0.002); end
  def test_intermediate_output_az247; assert_in_epsilon(359.38566273361687, worksheet.intermediate_output_az247, 0.002); end
  def test_intermediate_output_ba247; assert_in_epsilon(377.68005576463804, worksheet.intermediate_output_ba247, 0.002); end
  def test_intermediate_output_bb247; assert_in_epsilon(389.1265278176522, worksheet.intermediate_output_bb247, 0.002); end
  def test_intermediate_output_bc247; assert_in_epsilon(398.22960485918117, worksheet.intermediate_output_bc247, 0.002); end
  def test_intermediate_output_bd247; assert_in_epsilon(405.4724312928273, worksheet.intermediate_output_bd247, 0.002); end
  def test_intermediate_output_be247; assert_in_epsilon(410.67129652201123, worksheet.intermediate_output_be247, 0.002); end
  def test_intermediate_output_bf247; assert_in_epsilon(413.82620054673305, worksheet.intermediate_output_bf247, 0.002); end
  def test_intermediate_output_bg247; assert_in_epsilon(414.93714336699276, worksheet.intermediate_output_bg247, 0.002); end
  def test_intermediate_output_c248; assert_equal("XI", worksheet.intermediate_output_c248.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_d248; assert_equal("Industry", worksheet.intermediate_output_d248.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_ay248; assert_in_epsilon(641.3611111111112, worksheet.intermediate_output_ay248, 0.002); end
  def test_intermediate_output_az248; assert_in_epsilon(641.4970734311072, worksheet.intermediate_output_az248, 0.002); end
  def test_intermediate_output_ba248; assert_in_epsilon(598.0710678143694, worksheet.intermediate_output_ba248, 0.002); end
  def test_intermediate_output_bb248; assert_in_epsilon(554.5684988718108, worksheet.intermediate_output_bb248, 0.002); end
  def test_intermediate_output_bc248; assert_in_epsilon(511.0625609584028, worksheet.intermediate_output_bc248, 0.002); end
  def test_intermediate_output_bd248; assert_in_epsilon(434.0525871389549, worksheet.intermediate_output_bd248, 0.002); end
  def test_intermediate_output_be248; assert_in_epsilon(357.20164591236585, worksheet.intermediate_output_be248, 0.002); end
  def test_intermediate_output_bf248; assert_in_epsilon(280.52853169742195, worksheet.intermediate_output_bf248, 0.002); end
  def test_intermediate_output_bg248; assert_in_epsilon(204.0478786693952, worksheet.intermediate_output_bg248, 0.002); end
  def test_intermediate_output_c249; assert_equal("I.a", worksheet.intermediate_output_c249.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_d249; assert_equal("Biogas power generation", worksheet.intermediate_output_d249.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_ay249; assert_in_epsilon(63.08038452043203, worksheet.intermediate_output_ay249, 0.002); end
  def test_intermediate_output_az249; assert_in_epsilon(66.17783877714226, worksheet.intermediate_output_az249, 0.002); end
  def test_intermediate_output_ba249; assert_in_epsilon(72.12845475498067, worksheet.intermediate_output_ba249, 0.002); end
  def test_intermediate_output_bb249; assert_in_epsilon(77.73381482316161, worksheet.intermediate_output_bb249, 0.002); end
  def test_intermediate_output_bc249; assert_in_epsilon(82.62054954121726, worksheet.intermediate_output_bc249, 0.002); end
  def test_intermediate_output_bd249; assert_in_epsilon(86.8445101137841, worksheet.intermediate_output_bd249, 0.002); end
  def test_intermediate_output_be249; assert_in_epsilon(90.47267089900645, worksheet.intermediate_output_be249, 0.002); end
  def test_intermediate_output_bf249; assert_in_epsilon(93.5347470655973, worksheet.intermediate_output_bf249, 0.002); end
  def test_intermediate_output_bg249; assert_in_epsilon(96.04914172000932, worksheet.intermediate_output_bg249, 0.002); end
  def test_intermediate_output_c250; assert_equal("I.b", worksheet.intermediate_output_c250.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_d250; assert_equal("CCS Power [UNUSED]", worksheet.intermediate_output_d250.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_ay250; assert_in_delta(0.0, (worksheet.intermediate_output_ay250||0), 0.002); end
  def test_intermediate_output_az250; assert_in_delta(0.0, (worksheet.intermediate_output_az250||0), 0.002); end
  def test_intermediate_output_ba250; assert_in_delta(0.0, (worksheet.intermediate_output_ba250||0), 0.002); end
  def test_intermediate_output_bb250; assert_in_delta(0.0, (worksheet.intermediate_output_bb250||0), 0.002); end
  def test_intermediate_output_bc250; assert_in_delta(0.0, (worksheet.intermediate_output_bc250||0), 0.002); end
  def test_intermediate_output_bd250; assert_in_delta(0.0, (worksheet.intermediate_output_bd250||0), 0.002); end
  def test_intermediate_output_be250; assert_in_delta(0.0, (worksheet.intermediate_output_be250||0), 0.002); end
  def test_intermediate_output_bf250; assert_in_delta(0.0, (worksheet.intermediate_output_bf250||0), 0.002); end
  def test_intermediate_output_bg250; assert_in_delta(0.0, (worksheet.intermediate_output_bg250||0), 0.002); end
  def test_intermediate_output_d252; assert_equal("Bio type", worksheet.intermediate_output_d252.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_e252; assert_equal("Column1", worksheet.intermediate_output_e252.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_f252; assert_equal("Column2", worksheet.intermediate_output_f252.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_g252; assert_equal("Column22", worksheet.intermediate_output_g252.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_h252; assert_equal("Column23", worksheet.intermediate_output_h252.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_i252; assert_equal("Column24", worksheet.intermediate_output_i252.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_j252; assert_equal("Column25", worksheet.intermediate_output_j252.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_k252; assert_equal("Column26", worksheet.intermediate_output_k252.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_l252; assert_equal("Column27", worksheet.intermediate_output_l252.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_m252; assert_equal("Column28", worksheet.intermediate_output_m252.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_n252; assert_equal("Column29", worksheet.intermediate_output_n252.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_o252; assert_equal("Column30", worksheet.intermediate_output_o252.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_p252; assert_equal("Column31", worksheet.intermediate_output_p252.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_q252; assert_equal("Column32", worksheet.intermediate_output_q252.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_r252; assert_equal("Column33", worksheet.intermediate_output_r252.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_s252; assert_equal("Column34", worksheet.intermediate_output_s252.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_t252; assert_equal("Column35", worksheet.intermediate_output_t252.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_u252; assert_equal("Column36", worksheet.intermediate_output_u252.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_v252; assert_equal("Column37", worksheet.intermediate_output_v252.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_w252; assert_equal("Column38", worksheet.intermediate_output_w252.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_x252; assert_equal("Column39", worksheet.intermediate_output_x252.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_y252; assert_equal("Column40", worksheet.intermediate_output_y252.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_z252; assert_equal("Column41", worksheet.intermediate_output_z252.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_aa252; assert_equal("Column42", worksheet.intermediate_output_aa252.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_ab252; assert_equal("Column43", worksheet.intermediate_output_ab252.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_ac252; assert_equal("Column44", worksheet.intermediate_output_ac252.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_ad252; assert_equal("Column45", worksheet.intermediate_output_ad252.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_ae252; assert_equal("Column46", worksheet.intermediate_output_ae252.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_af252; assert_equal("Column47", worksheet.intermediate_output_af252.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_ag252; assert_equal("Column48", worksheet.intermediate_output_ag252.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_ah252; assert_equal("Column49", worksheet.intermediate_output_ah252.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_ai252; assert_equal("Column50", worksheet.intermediate_output_ai252.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_aj252; assert_equal("Column51", worksheet.intermediate_output_aj252.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_ak252; assert_equal("Column52", worksheet.intermediate_output_ak252.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_al252; assert_equal("Column53", worksheet.intermediate_output_al252.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_am252; assert_equal("Column54", worksheet.intermediate_output_am252.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_an252; assert_equal("Column55", worksheet.intermediate_output_an252.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_ao252; assert_equal("Column56", worksheet.intermediate_output_ao252.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_ap252; assert_equal("Column57", worksheet.intermediate_output_ap252.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_aq252; assert_equal("Column58", worksheet.intermediate_output_aq252.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_ar252; assert_equal("Column59", worksheet.intermediate_output_ar252.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_as252; assert_equal("Column60", worksheet.intermediate_output_as252.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_at252; assert_equal("Column61", worksheet.intermediate_output_at252.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_au252; assert_equal("Column612", worksheet.intermediate_output_au252.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_av252; assert_equal("Column62", worksheet.intermediate_output_av252.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_aw252; assert_equal("Column63", worksheet.intermediate_output_aw252.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_ax252; assert_equal("Column3", worksheet.intermediate_output_ax252.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_ay252; assert_equal("2012", worksheet.intermediate_output_ay252.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_az252; assert_equal("2015", worksheet.intermediate_output_az252.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_ba252; assert_equal("2020", worksheet.intermediate_output_ba252.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_bb252; assert_equal("2025", worksheet.intermediate_output_bb252.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_bc252; assert_equal("2030", worksheet.intermediate_output_bc252.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_bd252; assert_equal("2035", worksheet.intermediate_output_bd252.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_be252; assert_equal("2040", worksheet.intermediate_output_be252.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_bf252; assert_equal("2045", worksheet.intermediate_output_bf252.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_bg252; assert_equal("2050", worksheet.intermediate_output_bg252.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_d253; assert_equal("Solid", worksheet.intermediate_output_d253.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_ay253; assert_in_delta(0.0, (worksheet.intermediate_output_ay253||0), 0.002); end
  def test_intermediate_output_az253; assert_in_delta(0.0, (worksheet.intermediate_output_az253||0), 0.002); end
  def test_intermediate_output_ba253; assert_in_delta(0.0, (worksheet.intermediate_output_ba253||0), 0.002); end
  def test_intermediate_output_bb253; assert_in_delta(0.0, (worksheet.intermediate_output_bb253||0), 0.002); end
  def test_intermediate_output_bc253; assert_in_delta(0.0, (worksheet.intermediate_output_bc253||0), 0.002); end
  def test_intermediate_output_bd253; assert_in_delta(0.0, (worksheet.intermediate_output_bd253||0), 0.002); end
  def test_intermediate_output_be253; assert_in_delta(0.0, (worksheet.intermediate_output_be253||0), 0.002); end
  def test_intermediate_output_bf253; assert_in_delta(0.0, (worksheet.intermediate_output_bf253||0), 0.002); end
  def test_intermediate_output_bg253; assert_in_delta(0.0, (worksheet.intermediate_output_bg253||0), 0.002); end
  def test_intermediate_output_d254; assert_equal("Liquid", worksheet.intermediate_output_d254.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_ay254; assert_in_delta(0.0, (worksheet.intermediate_output_ay254||0), 0.002); end
  def test_intermediate_output_az254; assert_in_delta(0.0, (worksheet.intermediate_output_az254||0), 0.002); end
  def test_intermediate_output_ba254; assert_in_delta(0.0, (worksheet.intermediate_output_ba254||0), 0.002); end
  def test_intermediate_output_bb254; assert_in_delta(0.0, (worksheet.intermediate_output_bb254||0), 0.002); end
  def test_intermediate_output_bc254; assert_in_delta(0.0, (worksheet.intermediate_output_bc254||0), 0.002); end
  def test_intermediate_output_bd254; assert_in_delta(0.0, (worksheet.intermediate_output_bd254||0), 0.002); end
  def test_intermediate_output_be254; assert_in_delta(0.0, (worksheet.intermediate_output_be254||0), 0.002); end
  def test_intermediate_output_bf254; assert_in_delta(0.0, (worksheet.intermediate_output_bf254||0), 0.002); end
  def test_intermediate_output_bg254; assert_in_delta(0.0, (worksheet.intermediate_output_bg254||0), 0.002); end
  def test_intermediate_output_d255; assert_equal("Gas", worksheet.intermediate_output_d255.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_ay255; assert_in_delta(0.0, (worksheet.intermediate_output_ay255||0), 0.002); end
  def test_intermediate_output_az255; assert_in_delta(0.0, (worksheet.intermediate_output_az255||0), 0.002); end
  def test_intermediate_output_ba255; assert_in_delta(0.0, (worksheet.intermediate_output_ba255||0), 0.002); end
  def test_intermediate_output_bb255; assert_in_delta(0.0, (worksheet.intermediate_output_bb255||0), 0.002); end
  def test_intermediate_output_bc255; assert_in_delta(0.0, (worksheet.intermediate_output_bc255||0), 0.002); end
  def test_intermediate_output_bd255; assert_in_delta(0.0, (worksheet.intermediate_output_bd255||0), 0.002); end
  def test_intermediate_output_be255; assert_in_delta(0.0, (worksheet.intermediate_output_be255||0), 0.002); end
  def test_intermediate_output_bf255; assert_in_delta(0.0, (worksheet.intermediate_output_bf255||0), 0.002); end
  def test_intermediate_output_bg255; assert_in_delta(0.0, (worksheet.intermediate_output_bg255||0), 0.002); end
  def test_intermediate_output_b257; assert_equal("Electricity Generation Emissions", worksheet.intermediate_output_b257.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_c260; assert_equal("Emissions from Electricity Generation, excluding CHP", worksheet.intermediate_output_c260.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_ay260; assert_in_epsilon(2012.0, worksheet.intermediate_output_ay260, 0.002); end
  def test_intermediate_output_az260; assert_equal("2015", worksheet.intermediate_output_az260.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_ba260; assert_equal("2020", worksheet.intermediate_output_ba260.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_bb260; assert_equal("2025", worksheet.intermediate_output_bb260.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_bc260; assert_equal("2030", worksheet.intermediate_output_bc260.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_bd260; assert_equal("2035", worksheet.intermediate_output_bd260.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_be260; assert_equal("2040", worksheet.intermediate_output_be260.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_bf260; assert_equal("2045", worksheet.intermediate_output_bf260.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_bg260; assert_equal("2050", worksheet.intermediate_output_bg260.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_c261; assert_equal("Power Generation", worksheet.intermediate_output_c261.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_ay261; assert_in_delta(0.011658542637987478, worksheet.intermediate_output_ay261, 0.002); end
  def test_intermediate_output_az261; assert_in_delta(0.012231015408970274, worksheet.intermediate_output_az261, 0.002); end
  def test_intermediate_output_ba261; assert_in_delta(0.01333081070393154, worksheet.intermediate_output_ba261, 0.002); end
  def test_intermediate_output_bb261; assert_in_delta(0.014366795659524076, worksheet.intermediate_output_bb261, 0.002); end
  def test_intermediate_output_bc261; assert_in_delta(0.015269963982040119, worksheet.intermediate_output_bc261, 0.002); end
  def test_intermediate_output_bd261; assert_in_delta(0.016050638114115168, worksheet.intermediate_output_bd261, 0.002); end
  def test_intermediate_output_be261; assert_in_delta(0.016721196284195564, worksheet.intermediate_output_be261, 0.002); end
  def test_intermediate_output_bf261; assert_in_delta(0.01728713046199693, worksheet.intermediate_output_bf261, 0.002); end
  def test_intermediate_output_bg261; assert_in_delta(0.017751841917230612, worksheet.intermediate_output_bg261, 0.002); end
  def test_intermediate_output_c262; assert_equal("CCS in Power", worksheet.intermediate_output_c262.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_ay262; assert_in_delta(0.0, (worksheet.intermediate_output_ay262||0), 0.002); end
  def test_intermediate_output_az262; assert_in_delta(0.0, (worksheet.intermediate_output_az262||0), 0.002); end
  def test_intermediate_output_ba262; assert_in_delta(0.0, (worksheet.intermediate_output_ba262||0), 0.002); end
  def test_intermediate_output_bb262; assert_in_delta(0.0, (worksheet.intermediate_output_bb262||0), 0.002); end
  def test_intermediate_output_bc262; assert_in_delta(0.0, (worksheet.intermediate_output_bc262||0), 0.002); end
  def test_intermediate_output_bd262; assert_in_delta(0.0, (worksheet.intermediate_output_bd262||0), 0.002); end
  def test_intermediate_output_be262; assert_in_delta(0.0, (worksheet.intermediate_output_be262||0), 0.002); end
  def test_intermediate_output_bf262; assert_in_delta(0.0, (worksheet.intermediate_output_bf262||0), 0.002); end
  def test_intermediate_output_bg262; assert_in_delta(0.0, (worksheet.intermediate_output_bg262||0), 0.002); end
  def test_intermediate_output_bh262; assert_equal("MANUALLY ZEROED", worksheet.intermediate_output_bh262.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_c263; assert_equal("Bioenergy in Gas Power", worksheet.intermediate_output_c263.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_ay263; assert_in_delta(0.0, (worksheet.intermediate_output_ay263||0), 0.002); end
  def test_intermediate_output_az263; assert_in_delta(0.0, (worksheet.intermediate_output_az263||0), 0.002); end
  def test_intermediate_output_ba263; assert_in_delta(0.0, (worksheet.intermediate_output_ba263||0), 0.002); end
  def test_intermediate_output_bb263; assert_in_delta(0.0, (worksheet.intermediate_output_bb263||0), 0.002); end
  def test_intermediate_output_bc263; assert_in_delta(0.0, (worksheet.intermediate_output_bc263||0), 0.002); end
  def test_intermediate_output_bd263; assert_in_delta(0.0, (worksheet.intermediate_output_bd263||0), 0.002); end
  def test_intermediate_output_be263; assert_in_delta(0.0, (worksheet.intermediate_output_be263||0), 0.002); end
  def test_intermediate_output_bf263; assert_in_delta(0.0, (worksheet.intermediate_output_bf263||0), 0.002); end
  def test_intermediate_output_bg263; assert_in_delta(0.0, (worksheet.intermediate_output_bg263||0), 0.002); end
  def test_intermediate_output_c264; assert_equal("Bioenergy in Solid BM Power", worksheet.intermediate_output_c264.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_ay264; assert_in_delta(0.0, (worksheet.intermediate_output_ay264||0), 0.002); end
  def test_intermediate_output_az264; assert_in_delta(0.0, (worksheet.intermediate_output_az264||0), 0.002); end
  def test_intermediate_output_ba264; assert_in_delta(0.0, (worksheet.intermediate_output_ba264||0), 0.002); end
  def test_intermediate_output_bb264; assert_in_delta(0.0, (worksheet.intermediate_output_bb264||0), 0.002); end
  def test_intermediate_output_bc264; assert_in_delta(0.0, (worksheet.intermediate_output_bc264||0), 0.002); end
  def test_intermediate_output_bd264; assert_in_delta(0.0, (worksheet.intermediate_output_bd264||0), 0.002); end
  def test_intermediate_output_be264; assert_in_delta(0.0, (worksheet.intermediate_output_be264||0), 0.002); end
  def test_intermediate_output_bf264; assert_in_delta(0.0, (worksheet.intermediate_output_bf264||0), 0.002); end
  def test_intermediate_output_bg264; assert_in_delta(0.0, (worksheet.intermediate_output_bg264||0), 0.002); end
  def test_intermediate_output_c265; assert_equal("Bioenergy in Solid HC CCS Power", worksheet.intermediate_output_c265.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_ay265; assert_in_delta(0.0, (worksheet.intermediate_output_ay265||0), 0.002); end
  def test_intermediate_output_az265; assert_in_delta(0.0, (worksheet.intermediate_output_az265||0), 0.002); end
  def test_intermediate_output_ba265; assert_in_delta(0.0, (worksheet.intermediate_output_ba265||0), 0.002); end
  def test_intermediate_output_bb265; assert_in_delta(0.0, (worksheet.intermediate_output_bb265||0), 0.002); end
  def test_intermediate_output_bc265; assert_in_delta(0.0, (worksheet.intermediate_output_bc265||0), 0.002); end
  def test_intermediate_output_bd265; assert_in_delta(0.0, (worksheet.intermediate_output_bd265||0), 0.002); end
  def test_intermediate_output_be265; assert_in_delta(0.0, (worksheet.intermediate_output_be265||0), 0.002); end
  def test_intermediate_output_bf265; assert_in_delta(0.0, (worksheet.intermediate_output_bf265||0), 0.002); end
  def test_intermediate_output_bg265; assert_in_delta(0.0, (worksheet.intermediate_output_bg265||0), 0.002); end
  def test_intermediate_output_c266; assert_equal("Bioenergy in Gas CCS Power", worksheet.intermediate_output_c266.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_ay266; assert_in_delta(0.0, (worksheet.intermediate_output_ay266||0), 0.002); end
  def test_intermediate_output_az266; assert_in_delta(0.0, (worksheet.intermediate_output_az266||0), 0.002); end
  def test_intermediate_output_ba266; assert_in_delta(0.0, (worksheet.intermediate_output_ba266||0), 0.002); end
  def test_intermediate_output_bb266; assert_in_delta(0.0, (worksheet.intermediate_output_bb266||0), 0.002); end
  def test_intermediate_output_bc266; assert_in_delta(0.0, (worksheet.intermediate_output_bc266||0), 0.002); end
  def test_intermediate_output_bd266; assert_in_delta(0.0, (worksheet.intermediate_output_bd266||0), 0.002); end
  def test_intermediate_output_be266; assert_in_delta(0.0, (worksheet.intermediate_output_be266||0), 0.002); end
  def test_intermediate_output_bf266; assert_in_delta(0.0, (worksheet.intermediate_output_bf266||0), 0.002); end
  def test_intermediate_output_bg266; assert_in_delta(0.0, (worksheet.intermediate_output_bg266||0), 0.002); end
  def test_intermediate_output_c267; assert_equal("Total Emissions from Power", worksheet.intermediate_output_c267.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_ay267; assert_in_delta(0.011658542637987478, worksheet.intermediate_output_ay267, 0.002); end
  def test_intermediate_output_az267; assert_in_delta(0.012231015408970274, worksheet.intermediate_output_az267, 0.002); end
  def test_intermediate_output_ba267; assert_in_delta(0.01333081070393154, worksheet.intermediate_output_ba267, 0.002); end
  def test_intermediate_output_bb267; assert_in_delta(0.014366795659524076, worksheet.intermediate_output_bb267, 0.002); end
  def test_intermediate_output_bc267; assert_in_delta(0.015269963982040119, worksheet.intermediate_output_bc267, 0.002); end
  def test_intermediate_output_bd267; assert_in_delta(0.016050638114115168, worksheet.intermediate_output_bd267, 0.002); end
  def test_intermediate_output_be267; assert_in_delta(0.016721196284195564, worksheet.intermediate_output_be267, 0.002); end
  def test_intermediate_output_bf267; assert_in_delta(0.01728713046199693, worksheet.intermediate_output_bf267, 0.002); end
  def test_intermediate_output_bg267; assert_in_delta(0.017751841917230612, worksheet.intermediate_output_bg267, 0.002); end
  def test_intermediate_output_c269; assert_equal("Emissions reclassified", worksheet.intermediate_output_c269.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_ay269; assert_in_epsilon(2012.0, worksheet.intermediate_output_ay269, 0.002); end
  def test_intermediate_output_az269; assert_equal("2015", worksheet.intermediate_output_az269.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_ba269; assert_equal("2020", worksheet.intermediate_output_ba269.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_bb269; assert_equal("2025", worksheet.intermediate_output_bb269.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_bc269; assert_equal("2030", worksheet.intermediate_output_bc269.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_bd269; assert_equal("2035", worksheet.intermediate_output_bd269.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_be269; assert_equal("2040", worksheet.intermediate_output_be269.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_bf269; assert_equal("2045", worksheet.intermediate_output_bf269.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_bg269; assert_equal("2050", worksheet.intermediate_output_bg269.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_c270; assert_in_delta(1.0, worksheet.intermediate_output_c270, 0.002); end
  def test_intermediate_output_d270; assert_equal("Fuel Combustion", worksheet.intermediate_output_d270.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_ay270; assert_in_delta(0.011658542637987478, worksheet.intermediate_output_ay270, 0.002); end
  def test_intermediate_output_az270; assert_in_delta(0.012231015408970274, worksheet.intermediate_output_az270, 0.002); end
  def test_intermediate_output_ba270; assert_in_delta(0.01333081070393154, worksheet.intermediate_output_ba270, 0.002); end
  def test_intermediate_output_bb270; assert_in_delta(0.014366795659524076, worksheet.intermediate_output_bb270, 0.002); end
  def test_intermediate_output_bc270; assert_in_delta(0.015269963982040119, worksheet.intermediate_output_bc270, 0.002); end
  def test_intermediate_output_bd270; assert_in_delta(0.016050638114115168, worksheet.intermediate_output_bd270, 0.002); end
  def test_intermediate_output_be270; assert_in_delta(0.016721196284195564, worksheet.intermediate_output_be270, 0.002); end
  def test_intermediate_output_bf270; assert_in_delta(0.01728713046199693, worksheet.intermediate_output_bf270, 0.002); end
  def test_intermediate_output_bg270; assert_in_delta(0.017751841917230612, worksheet.intermediate_output_bg270, 0.002); end
  def test_intermediate_output_c271; assert_equal("X2", worksheet.intermediate_output_c271.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_d271; assert_equal("Bioenergy credit", worksheet.intermediate_output_d271.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_ay271; assert_in_delta(0.0, (worksheet.intermediate_output_ay271||0), 0.002); end
  def test_intermediate_output_az271; assert_in_delta(0.0, (worksheet.intermediate_output_az271||0), 0.002); end
  def test_intermediate_output_ba271; assert_in_delta(0.0, (worksheet.intermediate_output_ba271||0), 0.002); end
  def test_intermediate_output_bb271; assert_in_delta(0.0, (worksheet.intermediate_output_bb271||0), 0.002); end
  def test_intermediate_output_bc271; assert_in_delta(0.0, (worksheet.intermediate_output_bc271||0), 0.002); end
  def test_intermediate_output_bd271; assert_in_delta(0.0, (worksheet.intermediate_output_bd271||0), 0.002); end
  def test_intermediate_output_be271; assert_in_delta(0.0, (worksheet.intermediate_output_be271||0), 0.002); end
  def test_intermediate_output_bf271; assert_in_delta(0.0, (worksheet.intermediate_output_bf271||0), 0.002); end
  def test_intermediate_output_bg271; assert_in_delta(0.0, (worksheet.intermediate_output_bg271||0), 0.002); end
  def test_intermediate_output_c272; assert_equal("X3", worksheet.intermediate_output_c272.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_d272; assert_equal("Carbon capture", worksheet.intermediate_output_d272.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_ay272; assert_in_delta(0.0, (worksheet.intermediate_output_ay272||0), 0.002); end
  def test_intermediate_output_az272; assert_in_delta(0.0, (worksheet.intermediate_output_az272||0), 0.002); end
  def test_intermediate_output_ba272; assert_in_delta(0.0, (worksheet.intermediate_output_ba272||0), 0.002); end
  def test_intermediate_output_bb272; assert_in_delta(0.0, (worksheet.intermediate_output_bb272||0), 0.002); end
  def test_intermediate_output_bc272; assert_in_delta(0.0, (worksheet.intermediate_output_bc272||0), 0.002); end
  def test_intermediate_output_bd272; assert_in_delta(0.0, (worksheet.intermediate_output_bd272||0), 0.002); end
  def test_intermediate_output_be272; assert_in_delta(0.0, (worksheet.intermediate_output_be272||0), 0.002); end
  def test_intermediate_output_bf272; assert_in_delta(0.0, (worksheet.intermediate_output_bf272||0), 0.002); end
  def test_intermediate_output_bg272; assert_in_delta(0.0, (worksheet.intermediate_output_bg272||0), 0.002); end
  def test_intermediate_output_d273; assert_equal("Total", worksheet.intermediate_output_d273.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_ay273; assert_in_delta(0.011658542637987478, worksheet.intermediate_output_ay273, 0.002); end
  def test_intermediate_output_az273; assert_in_delta(0.012231015408970274, worksheet.intermediate_output_az273, 0.002); end
  def test_intermediate_output_ba273; assert_in_delta(0.01333081070393154, worksheet.intermediate_output_ba273, 0.002); end
  def test_intermediate_output_bb273; assert_in_delta(0.014366795659524076, worksheet.intermediate_output_bb273, 0.002); end
  def test_intermediate_output_bc273; assert_in_delta(0.015269963982040119, worksheet.intermediate_output_bc273, 0.002); end
  def test_intermediate_output_bd273; assert_in_delta(0.016050638114115168, worksheet.intermediate_output_bd273, 0.002); end
  def test_intermediate_output_be273; assert_in_delta(0.016721196284195564, worksheet.intermediate_output_be273, 0.002); end
  def test_intermediate_output_bf273; assert_in_delta(0.01728713046199693, worksheet.intermediate_output_bf273, 0.002); end
  def test_intermediate_output_bg273; assert_in_delta(0.017751841917230612, worksheet.intermediate_output_bg273, 0.002); end
  def test_intermediate_output_c275; assert_equal("Emissions intensity", worksheet.intermediate_output_c275.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_e275; assert_equal("MtCO2e/GWh", worksheet.intermediate_output_e275.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_ay275; assert_in_delta(3.883857042207377e-06, worksheet.intermediate_output_ay275, 0.002); end
  def test_intermediate_output_az275; assert_in_delta(3.957364525888877e-06, worksheet.intermediate_output_az275, 0.002); end
  def test_intermediate_output_ba275; assert_in_delta(4.056862887144997e-06, worksheet.intermediate_output_ba275, 0.002); end
  def test_intermediate_output_bb275; assert_in_delta(4.095856001052587e-06, worksheet.intermediate_output_bb275, 0.002); end
  def test_intermediate_output_bc275; assert_in_delta(4.055626832873252e-06, worksheet.intermediate_output_bc275, 0.002); end
  def test_intermediate_output_bd275; assert_in_delta(4.0097861381130124e-06, worksheet.intermediate_output_bd275, 0.002); end
  def test_intermediate_output_be275; assert_in_delta(3.984189088436849e-06, worksheet.intermediate_output_be275, 0.002); end
  def test_intermediate_output_bf275; assert_in_delta(3.9680096283196005e-06, worksheet.intermediate_output_bf275, 0.002); end
  def test_intermediate_output_bg275; assert_in_delta(3.950546415223758e-06, worksheet.intermediate_output_bg275, 0.002); end
  def test_intermediate_output_e276; assert_equal("gCO2e/KWh", worksheet.intermediate_output_e276.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_ay276; assert_in_delta(0.0038838570422073775, worksheet.intermediate_output_ay276, 0.002); end
  def test_intermediate_output_az276; assert_in_delta(0.003957364525888876, worksheet.intermediate_output_az276, 0.002); end
  def test_intermediate_output_ba276; assert_in_delta(0.004056862887144997, worksheet.intermediate_output_ba276, 0.002); end
  def test_intermediate_output_bb276; assert_in_delta(0.004095856001052587, worksheet.intermediate_output_bb276, 0.002); end
  def test_intermediate_output_bc276; assert_in_delta(0.004055626832873252, worksheet.intermediate_output_bc276, 0.002); end
  def test_intermediate_output_bd276; assert_in_delta(0.004009786138113013, worksheet.intermediate_output_bd276, 0.002); end
  def test_intermediate_output_be276; assert_in_delta(0.003984189088436849, worksheet.intermediate_output_be276, 0.002); end
  def test_intermediate_output_bf276; assert_in_delta(0.0039680096283196, worksheet.intermediate_output_bf276, 0.002); end
  def test_intermediate_output_bg276; assert_in_delta(0.003950546415223758, worksheet.intermediate_output_bg276, 0.002); end
  def test_intermediate_output_c278; assert_equal("Note: Emissions from CHP are excluded, while emissions from district heating are included.", worksheet.intermediate_output_c278.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_b281; assert_equal("Primary supply, format for web-based interface", worksheet.intermediate_output_b281.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_c283; assert_equal("N.01", worksheet.intermediate_output_c283.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_d283; assert_equal("Nuclear fission", worksheet.intermediate_output_d283.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_e283; assert_in_delta(0.0, (worksheet.intermediate_output_e283||0), 0.002); end
  def test_intermediate_output_f283; assert_in_delta(0.0, (worksheet.intermediate_output_f283||0), 0.002); end
  def test_intermediate_output_ax283; assert_in_delta(0.0, (worksheet.intermediate_output_ax283||0), 0.002); end
  def test_intermediate_output_ay283; assert_in_delta(0.0, (worksheet.intermediate_output_ay283||0), 0.002); end
  def test_intermediate_output_az283; assert_in_delta(0.0, (worksheet.intermediate_output_az283||0), 0.002); end
  def test_intermediate_output_ba283; assert_in_delta(0.0, (worksheet.intermediate_output_ba283||0), 0.002); end
  def test_intermediate_output_bb283; assert_in_delta(0.0, (worksheet.intermediate_output_bb283||0), 0.002); end
  def test_intermediate_output_bc283; assert_in_delta(0.0, (worksheet.intermediate_output_bc283||0), 0.002); end
  def test_intermediate_output_bd283; assert_in_delta(0.0, (worksheet.intermediate_output_bd283||0), 0.002); end
  def test_intermediate_output_be283; assert_in_delta(0.0, (worksheet.intermediate_output_be283||0), 0.002); end
  def test_intermediate_output_bf283; assert_in_delta(0.0, (worksheet.intermediate_output_bf283||0), 0.002); end
  def test_intermediate_output_bg283; assert_in_delta(0.0, (worksheet.intermediate_output_bg283||0), 0.002); end
  def test_intermediate_output_c284; assert_equal("R.01", worksheet.intermediate_output_c284.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_d284; assert_equal("Solar", worksheet.intermediate_output_d284.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_e284; assert_in_delta(0.0, (worksheet.intermediate_output_e284||0), 0.002); end
  def test_intermediate_output_f284; assert_in_delta(0.0, (worksheet.intermediate_output_f284||0), 0.002); end
  def test_intermediate_output_ax284; assert_in_delta(0.0, (worksheet.intermediate_output_ax284||0), 0.002); end
  def test_intermediate_output_ay284; assert_in_epsilon(5.740151379966, worksheet.intermediate_output_ay284, 0.002); end
  def test_intermediate_output_az284; assert_in_epsilon(8.238484356479999, worksheet.intermediate_output_az284, 0.002); end
  def test_intermediate_output_ba284; assert_in_epsilon(14.7445550262, worksheet.intermediate_output_ba284, 0.002); end
  def test_intermediate_output_bb284; assert_in_epsilon(19.965032390700003, worksheet.intermediate_output_bb284, 0.002); end
  def test_intermediate_output_bc284; assert_in_epsilon(25.3713407328, worksheet.intermediate_output_bc284, 0.002); end
  def test_intermediate_output_bd284; assert_in_epsilon(30.9037435515, worksheet.intermediate_output_bd284, 0.002); end
  def test_intermediate_output_be284; assert_in_epsilon(36.5241093867, worksheet.intermediate_output_be284, 0.002); end
  def test_intermediate_output_bf284; assert_in_epsilon(42.163755886800004, worksheet.intermediate_output_bf284, 0.002); end
  def test_intermediate_output_bg284; assert_in_epsilon(47.7594179532, worksheet.intermediate_output_bg284, 0.002); end
  def test_intermediate_output_c285; assert_equal("R.02", worksheet.intermediate_output_c285.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_d285; assert_equal("Wind", worksheet.intermediate_output_d285.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_e285; assert_in_delta(0.0, (worksheet.intermediate_output_e285||0), 0.002); end
  def test_intermediate_output_f285; assert_in_delta(0.0, (worksheet.intermediate_output_f285||0), 0.002); end
  def test_intermediate_output_ax285; assert_in_delta(0.0, (worksheet.intermediate_output_ax285||0), 0.002); end
  def test_intermediate_output_ay285; assert_in_delta(0.0, (worksheet.intermediate_output_ay285||0), 0.002); end
  def test_intermediate_output_az285; assert_in_delta(0.0, (worksheet.intermediate_output_az285||0), 0.002); end
  def test_intermediate_output_ba285; assert_in_delta(0.0, (worksheet.intermediate_output_ba285||0), 0.002); end
  def test_intermediate_output_bb285; assert_in_delta(0.0, (worksheet.intermediate_output_bb285||0), 0.002); end
  def test_intermediate_output_bc285; assert_in_delta(0.0, (worksheet.intermediate_output_bc285||0), 0.002); end
  def test_intermediate_output_bd285; assert_in_delta(0.0, (worksheet.intermediate_output_bd285||0), 0.002); end
  def test_intermediate_output_be285; assert_in_delta(0.0, (worksheet.intermediate_output_be285||0), 0.002); end
  def test_intermediate_output_bf285; assert_in_delta(0.0, (worksheet.intermediate_output_bf285||0), 0.002); end
  def test_intermediate_output_bg285; assert_in_delta(0.0, (worksheet.intermediate_output_bg285||0), 0.002); end
  def test_intermediate_output_c286; assert_equal("R.03", worksheet.intermediate_output_c286.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_d286; assert_equal("Tidal", worksheet.intermediate_output_d286.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_e286; assert_in_delta(0.0, (worksheet.intermediate_output_e286||0), 0.002); end
  def test_intermediate_output_f286; assert_in_delta(0.0, (worksheet.intermediate_output_f286||0), 0.002); end
  def test_intermediate_output_ax286; assert_in_delta(0.0, (worksheet.intermediate_output_ax286||0), 0.002); end
  def test_intermediate_output_ay286; assert_in_delta(0.0, (worksheet.intermediate_output_ay286||0), 0.002); end
  def test_intermediate_output_az286; assert_in_delta(0.0, (worksheet.intermediate_output_az286||0), 0.002); end
  def test_intermediate_output_ba286; assert_in_delta(0.0, (worksheet.intermediate_output_ba286||0), 0.002); end
  def test_intermediate_output_bb286; assert_in_delta(0.0, (worksheet.intermediate_output_bb286||0), 0.002); end
  def test_intermediate_output_bc286; assert_in_delta(0.0, (worksheet.intermediate_output_bc286||0), 0.002); end
  def test_intermediate_output_bd286; assert_in_delta(0.0, (worksheet.intermediate_output_bd286||0), 0.002); end
  def test_intermediate_output_be286; assert_in_delta(0.0, (worksheet.intermediate_output_be286||0), 0.002); end
  def test_intermediate_output_bf286; assert_in_delta(0.0, (worksheet.intermediate_output_bf286||0), 0.002); end
  def test_intermediate_output_bg286; assert_in_delta(0.0, (worksheet.intermediate_output_bg286||0), 0.002); end
  def test_intermediate_output_c287; assert_equal("R.04", worksheet.intermediate_output_c287.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_d287; assert_equal("Wave", worksheet.intermediate_output_d287.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_e287; assert_in_delta(0.0, (worksheet.intermediate_output_e287||0), 0.002); end
  def test_intermediate_output_f287; assert_in_delta(0.0, (worksheet.intermediate_output_f287||0), 0.002); end
  def test_intermediate_output_ax287; assert_in_delta(0.0, (worksheet.intermediate_output_ax287||0), 0.002); end
  def test_intermediate_output_ay287; assert_in_delta(0.0, (worksheet.intermediate_output_ay287||0), 0.002); end
  def test_intermediate_output_az287; assert_in_delta(0.0, (worksheet.intermediate_output_az287||0), 0.002); end
  def test_intermediate_output_ba287; assert_in_delta(0.0, (worksheet.intermediate_output_ba287||0), 0.002); end
  def test_intermediate_output_bb287; assert_in_delta(0.0, (worksheet.intermediate_output_bb287||0), 0.002); end
  def test_intermediate_output_bc287; assert_in_delta(0.0, (worksheet.intermediate_output_bc287||0), 0.002); end
  def test_intermediate_output_bd287; assert_in_delta(0.0, (worksheet.intermediate_output_bd287||0), 0.002); end
  def test_intermediate_output_be287; assert_in_delta(0.0, (worksheet.intermediate_output_be287||0), 0.002); end
  def test_intermediate_output_bf287; assert_in_delta(0.0, (worksheet.intermediate_output_bf287||0), 0.002); end
  def test_intermediate_output_bg287; assert_in_delta(0.0, (worksheet.intermediate_output_bg287||0), 0.002); end
  def test_intermediate_output_c288; assert_equal("R.05", worksheet.intermediate_output_c288.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_d288; assert_equal("Geothermal", worksheet.intermediate_output_d288.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_e288; assert_in_delta(0.0, (worksheet.intermediate_output_e288||0), 0.002); end
  def test_intermediate_output_f288; assert_in_delta(0.0, (worksheet.intermediate_output_f288||0), 0.002); end
  def test_intermediate_output_ax288; assert_in_delta(0.0, (worksheet.intermediate_output_ax288||0), 0.002); end
  def test_intermediate_output_ay288; assert_in_delta(0.0, (worksheet.intermediate_output_ay288||0), 0.002); end
  def test_intermediate_output_az288; assert_in_delta(0.0, (worksheet.intermediate_output_az288||0), 0.002); end
  def test_intermediate_output_ba288; assert_in_delta(0.0, (worksheet.intermediate_output_ba288||0), 0.002); end
  def test_intermediate_output_bb288; assert_in_delta(0.0, (worksheet.intermediate_output_bb288||0), 0.002); end
  def test_intermediate_output_bc288; assert_in_delta(0.0, (worksheet.intermediate_output_bc288||0), 0.002); end
  def test_intermediate_output_bd288; assert_in_delta(0.0, (worksheet.intermediate_output_bd288||0), 0.002); end
  def test_intermediate_output_be288; assert_in_delta(0.0, (worksheet.intermediate_output_be288||0), 0.002); end
  def test_intermediate_output_bf288; assert_in_delta(0.0, (worksheet.intermediate_output_bf288||0), 0.002); end
  def test_intermediate_output_bg288; assert_in_delta(0.0, (worksheet.intermediate_output_bg288||0), 0.002); end
  def test_intermediate_output_c289; assert_equal("R.06", worksheet.intermediate_output_c289.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_d289; assert_equal("Hydro", worksheet.intermediate_output_d289.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_e289; assert_in_delta(0.0, (worksheet.intermediate_output_e289||0), 0.002); end
  def test_intermediate_output_f289; assert_in_delta(0.0, (worksheet.intermediate_output_f289||0), 0.002); end
  def test_intermediate_output_ax289; assert_in_delta(0.0, (worksheet.intermediate_output_ax289||0), 0.002); end
  def test_intermediate_output_ay289; assert_in_delta(0.0, (worksheet.intermediate_output_ay289||0), 0.002); end
  def test_intermediate_output_az289; assert_in_delta(0.0, (worksheet.intermediate_output_az289||0), 0.002); end
  def test_intermediate_output_ba289; assert_in_delta(0.0, (worksheet.intermediate_output_ba289||0), 0.002); end
  def test_intermediate_output_bb289; assert_in_delta(0.0, (worksheet.intermediate_output_bb289||0), 0.002); end
  def test_intermediate_output_bc289; assert_in_delta(0.0, (worksheet.intermediate_output_bc289||0), 0.002); end
  def test_intermediate_output_bd289; assert_in_delta(0.0, (worksheet.intermediate_output_bd289||0), 0.002); end
  def test_intermediate_output_be289; assert_in_delta(0.0, (worksheet.intermediate_output_be289||0), 0.002); end
  def test_intermediate_output_bf289; assert_in_delta(0.0, (worksheet.intermediate_output_bf289||0), 0.002); end
  def test_intermediate_output_bg289; assert_in_delta(0.0, (worksheet.intermediate_output_bg289||0), 0.002); end
  def test_intermediate_output_c290; assert_equal("Y.02", worksheet.intermediate_output_c290.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_d290; assert_equal("Electricity oversupply (imports)", worksheet.intermediate_output_d290.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_e290; assert_in_delta(0.0, (worksheet.intermediate_output_e290||0), 0.002); end
  def test_intermediate_output_f290; assert_in_epsilon(2182.16, worksheet.intermediate_output_f290, 0.002); end
  def test_intermediate_output_ax290; assert_in_delta(0.0, (worksheet.intermediate_output_ax290||0), 0.002); end
  def test_intermediate_output_ay290; assert_in_epsilon(2987.0724146840785, worksheet.intermediate_output_ay290, 0.002); end
  def test_intermediate_output_az290; assert_in_epsilon(3073.005172745109, worksheet.intermediate_output_az290, 0.002); end
  def test_intermediate_output_ba290; assert_in_epsilon(3260.7806669424544, worksheet.intermediate_output_ba290, 0.002); end
  def test_intermediate_output_bb290; assert_in_epsilon(3476.1925267936226, worksheet.intermediate_output_bb290, 0.002); end
  def test_intermediate_output_bc290; assert_in_epsilon(3727.3752893544643, worksheet.intermediate_output_bc290, 0.002); end
  def test_intermediate_output_bd290; assert_in_epsilon(3958.793001646037, worksheet.intermediate_output_bd290, 0.002); end
  def test_intermediate_output_be290; assert_in_epsilon(4146.514535709558, worksheet.intermediate_output_be290, 0.002); end
  def test_intermediate_output_bf290; assert_in_epsilon(4300.029380480905, worksheet.intermediate_output_bf290, 0.002); end
  def test_intermediate_output_bg290; assert_in_epsilon(4430.835078737898, worksheet.intermediate_output_bg290, 0.002); end
  def test_intermediate_output_c291; assert_equal("R.07", worksheet.intermediate_output_c291.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_d291; assert_equal("Environmental heat", worksheet.intermediate_output_d291.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_e291; assert_in_delta(0.0, (worksheet.intermediate_output_e291||0), 0.002); end
  def test_intermediate_output_f291; assert_in_epsilon(175.0, worksheet.intermediate_output_f291, 0.002); end
  def test_intermediate_output_ax291; assert_in_delta(0.0, (worksheet.intermediate_output_ax291||0), 0.002); end
  def test_intermediate_output_ay291; assert_in_epsilon(367.2625342694737, worksheet.intermediate_output_ay291, 0.002); end
  def test_intermediate_output_az291; assert_in_epsilon(379.46218919203193, worksheet.intermediate_output_az291, 0.002); end
  def test_intermediate_output_ba291; assert_in_epsilon(400.7117416200602, worksheet.intermediate_output_ba291, 0.002); end
  def test_intermediate_output_bb291; assert_in_epsilon(415.40291485186384, worksheet.intermediate_output_bb291, 0.002); end
  def test_intermediate_output_bc291; assert_in_epsilon(427.3850347669688, worksheet.intermediate_output_bc291, 0.002); end
  def test_intermediate_output_bd291; assert_in_epsilon(437.1349126169333, worksheet.intermediate_output_bd291, 0.002); end
  def test_intermediate_output_be291; assert_in_epsilon(444.7767240678006, worksheet.intermediate_output_be291, 0.002); end
  def test_intermediate_output_bf291; assert_in_epsilon(450.26469125641273, worksheet.intermediate_output_bf291, 0.002); end
  def test_intermediate_output_bg291; assert_in_epsilon(453.59881418276984, worksheet.intermediate_output_bg291, 0.002); end
  def test_intermediate_output_d292; assert_equal("Bioenergy", worksheet.intermediate_output_d292.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_e292; assert_in_delta(0.0, (worksheet.intermediate_output_e292||0), 0.002); end
  def test_intermediate_output_f292; assert_in_epsilon(43.82987012987012, worksheet.intermediate_output_f292, 0.002); end
  def test_intermediate_output_ax292; assert_in_delta(0.0, (worksheet.intermediate_output_ax292||0), 0.002); end
  def test_intermediate_output_ay292; assert_in_epsilon(835.6844812398483, worksheet.intermediate_output_ay292, 0.002); end
  def test_intermediate_output_az292; assert_in_epsilon(843.3336722372152, worksheet.intermediate_output_az292, 0.002); end
  def test_intermediate_output_ba292; assert_in_epsilon(901.6650725463211, worksheet.intermediate_output_ba292, 0.002); end
  def test_intermediate_output_bb292; assert_in_epsilon(1326.2386591041861, worksheet.intermediate_output_bb292, 0.002); end
  def test_intermediate_output_bc292; assert_in_epsilon(1719.0198736541263, worksheet.intermediate_output_bc292, 0.002); end
  def test_intermediate_output_bd292; assert_in_epsilon(2126.9356626369818, worksheet.intermediate_output_bd292, 0.002); end
  def test_intermediate_output_be292; assert_in_epsilon(2549.371697666084, worksheet.intermediate_output_be292, 0.002); end
  def test_intermediate_output_bf292; assert_in_epsilon(3001.374221902747, worksheet.intermediate_output_bf292, 0.002); end
  def test_intermediate_output_bg292; assert_in_epsilon(3011.3610069966385, worksheet.intermediate_output_bg292, 0.002); end
  def test_intermediate_output_d293; assert_equal("Coal", worksheet.intermediate_output_d293.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_e293; assert_in_delta(0.0, (worksheet.intermediate_output_e293||0), 0.002); end
  def test_intermediate_output_f293; assert_in_epsilon(23.666666666666668, worksheet.intermediate_output_f293, 0.002); end
  def test_intermediate_output_ax293; assert_in_delta(0.0, (worksheet.intermediate_output_ax293||0), 0.002); end
  def test_intermediate_output_ay293; assert_in_epsilon(54.67677763831769, worksheet.intermediate_output_ay293, 0.002); end
  def test_intermediate_output_az293; assert_in_epsilon(56.27203144190709, worksheet.intermediate_output_az293, 0.002); end
  def test_intermediate_output_ba293; assert_in_epsilon(59.29131976164692, worksheet.intermediate_output_ba293, 0.002); end
  def test_intermediate_output_bb293; assert_in_epsilon(61.2921832608632, worksheet.intermediate_output_bb293, 0.002); end
  def test_intermediate_output_bc293; assert_in_epsilon(62.90732634459812, worksheet.intermediate_output_bc293, 0.002); end
  def test_intermediate_output_bd293; assert_in_epsilon(64.20973092418254, worksheet.intermediate_output_bd293, 0.002); end
  def test_intermediate_output_be293; assert_in_epsilon(65.19610484818995, worksheet.intermediate_output_be293, 0.002); end
  def test_intermediate_output_bf293; assert_in_epsilon(65.86278285990707, worksheet.intermediate_output_bf293, 0.002); end
  def test_intermediate_output_bg293; assert_in_epsilon(66.20976495933392, worksheet.intermediate_output_bg293, 0.002); end
  def test_intermediate_output_d294; assert_equal("Oil", worksheet.intermediate_output_d294.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_e294; assert_in_delta(0.0, (worksheet.intermediate_output_e294||0), 0.002); end
  def test_intermediate_output_f294; assert_in_epsilon(2578.121828670083, worksheet.intermediate_output_f294, 0.002); end
  def test_intermediate_output_ax294; assert_in_delta(0.0, (worksheet.intermediate_output_ax294||0), 0.002); end
  def test_intermediate_output_ay294; assert_in_epsilon(5583.968924946566, worksheet.intermediate_output_ay294, 0.002); end
  def test_intermediate_output_az294; assert_in_epsilon(5616.186866296027, worksheet.intermediate_output_az294, 0.002); end
  def test_intermediate_output_ba294; assert_in_epsilon(5886.174177279776, worksheet.intermediate_output_ba294, 0.002); end
  def test_intermediate_output_bb294; assert_in_epsilon(5329.24656902558, worksheet.intermediate_output_bb294, 0.002); end
  def test_intermediate_output_bc294; assert_in_epsilon(4056.4442051237993, worksheet.intermediate_output_bc294, 0.002); end
  def test_intermediate_output_bd294; assert_in_epsilon(2661.7047835272333, worksheet.intermediate_output_bd294, 0.002); end
  def test_intermediate_output_be294; assert_in_epsilon(1387.481236141547, worksheet.intermediate_output_be294, 0.002); end
  def test_intermediate_output_bf294; assert_in_epsilon(517.0489044248134, worksheet.intermediate_output_bf294, 0.002); end
  def test_intermediate_output_bg294; assert_in_delta(0.0, (worksheet.intermediate_output_bg294||0), 0.002); end
  def test_intermediate_output_d295; assert_equal("Natural gas", worksheet.intermediate_output_d295.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_e295; assert_in_delta(0.0, (worksheet.intermediate_output_e295||0), 0.002); end
  def test_intermediate_output_f295; assert_in_epsilon(627.3680555555555, worksheet.intermediate_output_f295, 0.002); end
  def test_intermediate_output_ax295; assert_in_delta(0.0, (worksheet.intermediate_output_ax295||0), 0.002); end
  def test_intermediate_output_ay295; assert_in_epsilon(1430.614664342593, worksheet.intermediate_output_ay295, 0.002); end
  def test_intermediate_output_az295; assert_in_epsilon(1456.267079044218, worksheet.intermediate_output_az295, 0.002); end
  def test_intermediate_output_ba295; assert_in_epsilon(1457.9861849494096, worksheet.intermediate_output_ba295, 0.002); end
  def test_intermediate_output_bb295; assert_in_epsilon(1445.395798188943, worksheet.intermediate_output_bb295, 0.002); end
  def test_intermediate_output_bc295; assert_in_epsilon(1427.0318850842575, worksheet.intermediate_output_bc295, 0.002); end
  def test_intermediate_output_bd295; assert_in_epsilon(1370.4259102428077, worksheet.intermediate_output_bd295, 0.002); end
  def test_intermediate_output_be295; assert_in_epsilon(1309.4395363350611, worksheet.intermediate_output_be295, 0.002); end
  def test_intermediate_output_bf295; assert_in_epsilon(1244.0042246515577, worksheet.intermediate_output_bf295, 0.002); end
  def test_intermediate_output_bg295; assert_in_epsilon(1174.1356174704265, worksheet.intermediate_output_bg295, 0.002); end
  def test_intermediate_output_d296; assert_equal("Total used in Wellington", worksheet.intermediate_output_d296.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_e296; assert_in_delta(0.0, (worksheet.intermediate_output_e296||0), 0.002); end
  def test_intermediate_output_f296; assert_in_epsilon(5630.146421022175, worksheet.intermediate_output_f296, 0.002); end
  def test_intermediate_output_ax296; assert_in_delta(0.0, (worksheet.intermediate_output_ax296||0), 0.002); end
  def test_intermediate_output_ay296; assert_in_epsilon(11265.019948500843, worksheet.intermediate_output_ay296, 0.002); end
  def test_intermediate_output_az296; assert_in_epsilon(11432.76549531299, worksheet.intermediate_output_az296, 0.002); end
  def test_intermediate_output_ba296; assert_in_epsilon(11981.353718125869, worksheet.intermediate_output_ba296, 0.002); end
  def test_intermediate_output_bb296; assert_in_epsilon(12073.73368361576, worksheet.intermediate_output_bb296, 0.002); end
  def test_intermediate_output_bc296; assert_in_epsilon(11445.534955061014, worksheet.intermediate_output_bc296, 0.002); end
  def test_intermediate_output_bd296; assert_in_epsilon(10650.107745145677, worksheet.intermediate_output_bd296, 0.002); end
  def test_intermediate_output_be296; assert_in_epsilon(9939.303944154939, worksheet.intermediate_output_be296, 0.002); end
  def test_intermediate_output_bf296; assert_in_epsilon(9620.747961463145, worksheet.intermediate_output_bf296, 0.002); end
  def test_intermediate_output_bg296; assert_in_epsilon(9183.899700300268, worksheet.intermediate_output_bg296, 0.002); end
  def test_intermediate_output_d297; assert_equal("Imported energy", worksheet.intermediate_output_d297.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_f297; assert_in_epsilon(5411.316550892305, worksheet.intermediate_output_f297, 0.002); end
  def test_intermediate_output_ax297; assert_in_delta(0.0, (worksheet.intermediate_output_ax297||0), 0.002); end
  def test_intermediate_output_ay297; assert_in_epsilon(10428.823878330972, worksheet.intermediate_output_ay297, 0.002); end
  def test_intermediate_output_az297; assert_in_epsilon(10680.937482987334, worksheet.intermediate_output_az297, 0.002); end
  def test_intermediate_output_ba297; assert_in_epsilon(10909.433166724628, worksheet.intermediate_output_ba297, 0.002); end
  def test_intermediate_output_bb297; assert_in_epsilon(10343.342321550033, worksheet.intermediate_output_bb297, 0.002); end
  def test_intermediate_output_bc297; assert_in_epsilon(9974.721430020028, worksheet.intermediate_output_bc297, 0.002); end
  def test_intermediate_output_bd297; assert_in_epsilon(9592.948078863457, worksheet.intermediate_output_bd297, 0.002); end
  def test_intermediate_output_be297; assert_in_epsilon(9084.823339801433, worksheet.intermediate_output_be297, 0.002); end
  def test_intermediate_output_bf297; assert_in_epsilon(8345.328967254332, worksheet.intermediate_output_bf297, 0.002); end
  def test_intermediate_output_bg297; assert_in_epsilon(8002.156526444287, worksheet.intermediate_output_bg297, 0.002); end
  def test_intermediate_output_bf298; assert_equal("% imported", worksheet.intermediate_output_bf298.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_bg298; assert_in_delta(0.8713244686440398, worksheet.intermediate_output_bg298, 0.002); end
  def test_intermediate_output_d299; assert_equal("Primary demand", worksheet.intermediate_output_d299.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_f299; assert_in_epsilon(5630.146421022175, worksheet.intermediate_output_f299, 0.002); end
  def test_intermediate_output_ax299; assert_in_delta(0.0, (worksheet.intermediate_output_ax299||0), 0.002); end
  def test_intermediate_output_ay299; assert_in_epsilon(11265.019948500845, worksheet.intermediate_output_ay299, 0.002); end
  def test_intermediate_output_az299; assert_in_epsilon(11432.765495312986, worksheet.intermediate_output_az299, 0.002); end
  def test_intermediate_output_ba299; assert_in_epsilon(11981.353718125867, worksheet.intermediate_output_ba299, 0.002); end
  def test_intermediate_output_bb299; assert_in_epsilon(12073.733683615761, worksheet.intermediate_output_bb299, 0.002); end
  def test_intermediate_output_bc299; assert_in_epsilon(11445.534955061014, worksheet.intermediate_output_bc299, 0.002); end
  def test_intermediate_output_bd299; assert_in_epsilon(10650.107745145677, worksheet.intermediate_output_bd299, 0.002); end
  def test_intermediate_output_be299; assert_in_epsilon(9939.303944154939, worksheet.intermediate_output_be299, 0.002); end
  def test_intermediate_output_bf299; assert_in_epsilon(9620.747961463143, worksheet.intermediate_output_bf299, 0.002); end
  def test_intermediate_output_bg299; assert_in_epsilon(9183.899700300268, worksheet.intermediate_output_bg299, 0.002); end
  def test_intermediate_output_b302; assert_equal("Electricity, format for web-based interface", worksheet.intermediate_output_b302.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_c304; assert_equal("V.01", worksheet.intermediate_output_c304.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_ay304; assert_in_epsilon(2012.0, worksheet.intermediate_output_ay304, 0.002); end
  def test_intermediate_output_az304; assert_in_epsilon(2015.0, worksheet.intermediate_output_az304, 0.002); end
  def test_intermediate_output_ba304; assert_in_epsilon(2020.0, worksheet.intermediate_output_ba304, 0.002); end
  def test_intermediate_output_bb304; assert_in_epsilon(2025.0, worksheet.intermediate_output_bb304, 0.002); end
  def test_intermediate_output_bc304; assert_in_epsilon(2030.0, worksheet.intermediate_output_bc304, 0.002); end
  def test_intermediate_output_bd304; assert_in_epsilon(2035.0, worksheet.intermediate_output_bd304, 0.002); end
  def test_intermediate_output_be304; assert_in_epsilon(2040.0, worksheet.intermediate_output_be304, 0.002); end
  def test_intermediate_output_bf304; assert_in_epsilon(2045.0, worksheet.intermediate_output_bf304, 0.002); end
  def test_intermediate_output_bg304; assert_in_epsilon(2050.0, worksheet.intermediate_output_bg304, 0.002); end
  def test_intermediate_output_bh304; assert_equal("GWh", worksheet.intermediate_output_bh304.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_c306; assert_equal("VIII.a", worksheet.intermediate_output_c306.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_d306; assert_equal("H2 Production for Transport", worksheet.intermediate_output_d306.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_ay306; assert_in_delta(0.0, (worksheet.intermediate_output_ay306||0), 0.002); end
  def test_intermediate_output_az306; assert_in_delta(0.0, (worksheet.intermediate_output_az306||0), 0.002); end
  def test_intermediate_output_ba306; assert_in_delta(0.0, (worksheet.intermediate_output_ba306||0), 0.002); end
  def test_intermediate_output_bb306; assert_in_delta(0.0, (worksheet.intermediate_output_bb306||0), 0.002); end
  def test_intermediate_output_bc306; assert_in_delta(0.0, (worksheet.intermediate_output_bc306||0), 0.002); end
  def test_intermediate_output_bd306; assert_in_delta(0.0, (worksheet.intermediate_output_bd306||0), 0.002); end
  def test_intermediate_output_be306; assert_in_delta(0.0, (worksheet.intermediate_output_be306||0), 0.002); end
  def test_intermediate_output_bf306; assert_in_delta(0.0, (worksheet.intermediate_output_bf306||0), 0.002); end
  def test_intermediate_output_bg306; assert_in_delta(0.0, (worksheet.intermediate_output_bg306||0), 0.002); end
  def test_intermediate_output_c307; assert_equal("VI.a", worksheet.intermediate_output_c307.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_d307; assert_equal("Agriculture and land use", worksheet.intermediate_output_d307.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_ay307; assert_in_epsilon(48.19822, worksheet.intermediate_output_ay307, 0.002); end
  def test_intermediate_output_az307; assert_in_epsilon(47.670967379771184, worksheet.intermediate_output_az307, 0.002); end
  def test_intermediate_output_ba307; assert_in_epsilon(50.41473874043233, worksheet.intermediate_output_ba307, 0.002); end
  def test_intermediate_output_bb307; assert_in_epsilon(56.101960101093454, worksheet.intermediate_output_bb307, 0.002); end
  def test_intermediate_output_bc307; assert_in_epsilon(54.0195894617546, worksheet.intermediate_output_bc307, 0.002); end
  def test_intermediate_output_bd307; assert_in_epsilon(50.652144822415735, worksheet.intermediate_output_bd307, 0.002); end
  def test_intermediate_output_be307; assert_in_epsilon(49.098758183076875, worksheet.intermediate_output_be307, 0.002); end
  def test_intermediate_output_bf307; assert_in_epsilon(52.86478554373801, worksheet.intermediate_output_bf307, 0.002); end
  def test_intermediate_output_bg307; assert_in_epsilon(52.283434904399144, worksheet.intermediate_output_bg307, 0.002); end
  def test_intermediate_output_c308; assert_equal("IV.b", worksheet.intermediate_output_c308.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_d308; assert_equal("Solar thermal", worksheet.intermediate_output_d308.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_ay308; assert_in_delta(0.39471839999999997, worksheet.intermediate_output_ay308, 0.002); end
  def test_intermediate_output_az308; assert_in_delta(0.41195519999999997, worksheet.intermediate_output_az308, 0.002); end
  def test_intermediate_output_ba308; assert_in_delta(0.43748639999999994, worksheet.intermediate_output_ba308, 0.002); end
  def test_intermediate_output_bb308; assert_in_delta(0.4567535999999999, worksheet.intermediate_output_bb308, 0.002); end
  def test_intermediate_output_bc308; assert_in_delta(0.4727808, worksheet.intermediate_output_bc308, 0.002); end
  def test_intermediate_output_bd308; assert_in_delta(0.48604319999999995, worksheet.intermediate_output_bd308, 0.002); end
  def test_intermediate_output_be308; assert_in_delta(0.49708080000000004, worksheet.intermediate_output_be308, 0.002); end
  def test_intermediate_output_bf308; assert_in_delta(0.5057856, worksheet.intermediate_output_bf308, 0.002); end
  def test_intermediate_output_bg308; assert_in_delta(0.5121575999999999, worksheet.intermediate_output_bg308, 0.002); end
  def test_intermediate_output_c309; assert_equal("IX.a", worksheet.intermediate_output_c309.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_d309; assert_equal("Domestic space heating and hot water", worksheet.intermediate_output_d309.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_ay309; assert_in_epsilon(637.9302219518596, worksheet.intermediate_output_ay309, 0.002); end
  def test_intermediate_output_az309; assert_in_epsilon(665.7877417678596, worksheet.intermediate_output_az309, 0.002); end
  def test_intermediate_output_ba309; assert_in_epsilon(707.0503839013334, worksheet.intermediate_output_ba309, 0.002); end
  def test_intermediate_output_bb309; assert_in_epsilon(738.1893659512982, worksheet.intermediate_output_bb309, 0.002); end
  def test_intermediate_output_bc309; assert_in_epsilon(764.091972096, worksheet.intermediate_output_bc309, 0.002); end
  def test_intermediate_output_bd309; assert_in_epsilon(785.5262041348772, worksheet.intermediate_output_bd309, 0.002); end
  def test_intermediate_output_be309; assert_in_epsilon(803.3647913854736, worksheet.intermediate_output_be309, 0.002); end
  def test_intermediate_output_bf309; assert_in_epsilon(817.4331879842807, worksheet.intermediate_output_bf309, 0.002); end
  def test_intermediate_output_bg309; assert_in_epsilon(827.7313939312984, worksheet.intermediate_output_bg309, 0.002); end
  def test_intermediate_output_c310; assert_equal("IX.c", worksheet.intermediate_output_c310.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_d310; assert_equal("Commercial heating and cooling", worksheet.intermediate_output_d310.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_ay310; assert_in_epsilon(311.8038666666667, worksheet.intermediate_output_ay310, 0.002); end
  def test_intermediate_output_az310; assert_in_epsilon(319.43471054389516, worksheet.intermediate_output_az310, 0.002); end
  def test_intermediate_output_ba310; assert_in_epsilon(335.6954152642503, worksheet.intermediate_output_ba310, 0.002); end
  def test_intermediate_output_bb310; assert_in_epsilon(345.86944518851453, worksheet.intermediate_output_bb310, 0.002); end
  def test_intermediate_output_bc310; assert_in_epsilon(353.9605825970063, worksheet.intermediate_output_bc310, 0.002); end
  def test_intermediate_output_bd310; assert_in_epsilon(360.3982633540885, worksheet.intermediate_output_bd310, 0.002); end
  def test_intermediate_output_be310; assert_in_epsilon(365.0191989724135, worksheet.intermediate_output_be310, 0.002); end
  def test_intermediate_output_bf310; assert_in_epsilon(367.8233894519813, worksheet.intermediate_output_bf310, 0.002); end
  def test_intermediate_output_bg310; assert_in_epsilon(368.81083479279204, worksheet.intermediate_output_bg310, 0.002); end
  def test_intermediate_output_c311; assert_equal("X.a", worksheet.intermediate_output_c311.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_d311; assert_equal("Domestic lighting, appliances, and cooking", worksheet.intermediate_output_d311.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_ay311; assert_in_epsilon(804.14773548, worksheet.intermediate_output_ay311, 0.002); end
  def test_intermediate_output_az311; assert_in_epsilon(839.26374144, worksheet.intermediate_output_az311, 0.002); end
  def test_intermediate_output_ba311; assert_in_epsilon(891.3406939542858, worksheet.intermediate_output_ba311, 0.002); end
  def test_intermediate_output_bb311; assert_in_epsilon(930.661741457143, worksheet.intermediate_output_bb311, 0.002); end
  def test_intermediate_output_bc311; assert_in_epsilon(963.3861866057143, worksheet.intermediate_output_bc311, 0.002); end
  def test_intermediate_output_bd311; assert_in_epsilon(990.4810135028572, worksheet.intermediate_output_bd311, 0.002); end
  def test_intermediate_output_be311; assert_in_epsilon(1013.0455417885714, worksheet.intermediate_output_be311, 0.002); end
  def test_intermediate_output_bf311; assert_in_epsilon(1030.8586915885714, worksheet.intermediate_output_bf311, 0.002); end
  def test_intermediate_output_bg311; assert_in_epsilon(1043.9194548, worksheet.intermediate_output_bg311, 0.002); end
  def test_intermediate_output_c312; assert_equal("X.b", worksheet.intermediate_output_c312.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_d312; assert_equal("Commercial lighting, appliances, and catering", worksheet.intermediate_output_d312.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_ay312; assert_in_epsilon(663.287, worksheet.intermediate_output_ay312, 0.002); end
  def test_intermediate_output_az312; assert_in_epsilon(679.5197670817699, worksheet.intermediate_output_az312, 0.002); end
  def test_intermediate_output_ba312; assert_in_epsilon(714.1104672137232, worksheet.intermediate_output_ba312, 0.002); end
  def test_intermediate_output_bb312; assert_in_epsilon(735.7532449589708, worksheet.intermediate_output_bb312, 0.002); end
  def test_intermediate_output_bc312; assert_in_epsilon(752.965174739186, worksheet.intermediate_output_bc312, 0.002); end
  def test_intermediate_output_bd312; assert_in_epsilon(766.6597770607398, worksheet.intermediate_output_bd312, 0.002); end
  def test_intermediate_output_be312; assert_in_epsilon(776.4896953239042, worksheet.intermediate_output_be312, 0.002); end
  def test_intermediate_output_bf312; assert_in_epsilon(782.4549295286791, worksheet.intermediate_output_bf312, 0.002); end
  def test_intermediate_output_bg312; assert_in_epsilon(784.5554796750648, worksheet.intermediate_output_bg312, 0.002); end
  def test_intermediate_output_c313; assert_equal("XI.a", worksheet.intermediate_output_c313.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_d313; assert_equal("Industrial energy", worksheet.intermediate_output_d313.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_ay313; assert_in_epsilon(511.25, worksheet.intermediate_output_ay313, 0.002); end
  def test_intermediate_output_az313; assert_in_epsilon(513.1174424651447, worksheet.intermediate_output_az313, 0.002); end
  def test_intermediate_output_ba313; assert_in_epsilon(561.5243991954882, worksheet.intermediate_output_ba313, 0.002); end
  def test_intermediate_output_bb313; assert_in_epsilon(608.0136953567157, worksheet.intermediate_output_bb313, 0.002); end
  def test_intermediate_output_bc313; assert_in_epsilon(653.48842006115, worksheet.intermediate_output_bc313, 0.002); end
  def test_intermediate_output_bd313; assert_in_epsilon(705.9485880696577, worksheet.intermediate_output_bd313, 0.002); end
  def test_intermediate_output_be313; assert_in_epsilon(756.7543827454789, worksheet.intermediate_output_be313, 0.002); end
  def test_intermediate_output_bf313; assert_in_epsilon(805.8068282588855, worksheet.intermediate_output_bf313, 0.002); end
  def test_intermediate_output_bg313; assert_in_epsilon(853.0427098277637, worksheet.intermediate_output_bg313, 0.002); end
  def test_intermediate_output_c314; assert_equal("XII.a", worksheet.intermediate_output_c314.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_d314; assert_equal("Domestic passenger transport", worksheet.intermediate_output_d314.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_ay314; assert_in_epsilon(24.783234405217023, worksheet.intermediate_output_ay314, 0.002); end
  def test_intermediate_output_az314; assert_in_epsilon(25.490861341891197, worksheet.intermediate_output_az314, 0.002); end
  def test_intermediate_output_ba314; assert_in_epsilon(25.416372292786665, worksheet.intermediate_output_ba314, 0.002); end
  def test_intermediate_output_bb314; assert_in_epsilon(77.29399590644479, worksheet.intermediate_output_bb314, 0.002); end
  def test_intermediate_output_bc314; assert_in_epsilon(202.85968320664682, worksheet.intermediate_output_bc314, 0.002); end
  def test_intermediate_output_bd314; assert_in_epsilon(314.6177231709075, worksheet.intermediate_output_bd314, 0.002); end
  def test_intermediate_output_be314; assert_in_epsilon(394.4037230857439, worksheet.intermediate_output_be314, 0.002); end
  def test_intermediate_output_bf314; assert_in_epsilon(450.3499628570655, worksheet.intermediate_output_bf314, 0.002); end
  def test_intermediate_output_bg314; assert_in_epsilon(506.0451273553823, worksheet.intermediate_output_bg314, 0.002); end
  def test_intermediate_output_c315; assert_equal("XII.b", worksheet.intermediate_output_c315.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_d315; assert_equal("Domestic freight", worksheet.intermediate_output_d315.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_ay315; assert_in_delta(0.0, (worksheet.intermediate_output_ay315||0), 0.002); end
  def test_intermediate_output_az315; assert_in_delta(0.0, (worksheet.intermediate_output_az315||0), 0.002); end
  def test_intermediate_output_ba315; assert_in_delta(0.0, (worksheet.intermediate_output_ba315||0), 0.002); end
  def test_intermediate_output_bb315; assert_in_epsilon(15.301583673469391, worksheet.intermediate_output_bb315, 0.002); end
  def test_intermediate_output_bc315; assert_in_epsilon(19.886035714285722, worksheet.intermediate_output_bc315, 0.002); end
  def test_intermediate_output_bd315; assert_in_epsilon(28.09662040816328, worksheet.intermediate_output_bd315, 0.002); end
  def test_intermediate_output_be315; assert_in_epsilon(38.21505591836737, worksheet.intermediate_output_be315, 0.002); end
  def test_intermediate_output_bf315; assert_in_epsilon(48.52756897959188, worksheet.intermediate_output_bf315, 0.002); end
  def test_intermediate_output_bg315; assert_in_epsilon(56.615, worksheet.intermediate_output_bg315, 0.002); end
  def test_intermediate_output_c316; assert_equal("XIV.a", worksheet.intermediate_output_c316.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_d316; assert_equal("Geosequestration", worksheet.intermediate_output_d316.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_ay316; assert_in_delta(0.0, (worksheet.intermediate_output_ay316||0), 0.002); end
  def test_intermediate_output_az316; assert_in_delta(0.0, (worksheet.intermediate_output_az316||0), 0.002); end
  def test_intermediate_output_ba316; assert_in_delta(0.0, (worksheet.intermediate_output_ba316||0), 0.002); end
  def test_intermediate_output_bb316; assert_in_delta(0.0, (worksheet.intermediate_output_bb316||0), 0.002); end
  def test_intermediate_output_bc316; assert_in_delta(0.0, (worksheet.intermediate_output_bc316||0), 0.002); end
  def test_intermediate_output_bd316; assert_in_delta(0.0, (worksheet.intermediate_output_bd316||0), 0.002); end
  def test_intermediate_output_be316; assert_in_delta(0.0, (worksheet.intermediate_output_be316||0), 0.002); end
  def test_intermediate_output_bf316; assert_in_delta(0.0, (worksheet.intermediate_output_bf316||0), 0.002); end
  def test_intermediate_output_bg316; assert_in_delta(0.0, (worksheet.intermediate_output_bg316||0), 0.002); end
  def test_intermediate_output_c317; assert_equal("XV.a", worksheet.intermediate_output_c317.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_d317; assert_equal("Petroleum refineries", worksheet.intermediate_output_d317.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_ay317; assert_in_delta(0.0, (worksheet.intermediate_output_ay317||0), 0.002); end
  def test_intermediate_output_az317; assert_in_delta(0.0, (worksheet.intermediate_output_az317||0), 0.002); end
  def test_intermediate_output_ba317; assert_in_delta(0.0, (worksheet.intermediate_output_ba317||0), 0.002); end
  def test_intermediate_output_bb317; assert_in_delta(0.0, (worksheet.intermediate_output_bb317||0), 0.002); end
  def test_intermediate_output_bc317; assert_in_delta(0.0, (worksheet.intermediate_output_bc317||0), 0.002); end
  def test_intermediate_output_bd317; assert_in_delta(0.0, (worksheet.intermediate_output_bd317||0), 0.002); end
  def test_intermediate_output_be317; assert_in_delta(0.0, (worksheet.intermediate_output_be317||0), 0.002); end
  def test_intermediate_output_bf317; assert_in_delta(0.0, (worksheet.intermediate_output_bf317||0), 0.002); end
  def test_intermediate_output_bg317; assert_in_delta(0.0, (worksheet.intermediate_output_bg317||0), 0.002); end
  def test_intermediate_output_c318; assert_equal("XV.b", worksheet.intermediate_output_c318.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_d318; assert_equal("Indigenous fossil-fuel production", worksheet.intermediate_output_d318.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_ay318; assert_in_delta(0.0, (worksheet.intermediate_output_ay318||0), 0.002); end
  def test_intermediate_output_az318; assert_in_delta(0.0, (worksheet.intermediate_output_az318||0), 0.002); end
  def test_intermediate_output_ba318; assert_in_delta(0.0, (worksheet.intermediate_output_ba318||0), 0.002); end
  def test_intermediate_output_bb318; assert_in_delta(0.0, (worksheet.intermediate_output_bb318||0), 0.002); end
  def test_intermediate_output_bc318; assert_in_delta(0.0, (worksheet.intermediate_output_bc318||0), 0.002); end
  def test_intermediate_output_bd318; assert_in_delta(0.0, (worksheet.intermediate_output_bd318||0), 0.002); end
  def test_intermediate_output_be318; assert_in_delta(0.0, (worksheet.intermediate_output_be318||0), 0.002); end
  def test_intermediate_output_bf318; assert_in_delta(0.0, (worksheet.intermediate_output_bf318||0), 0.002); end
  def test_intermediate_output_bg318; assert_in_delta(0.0, (worksheet.intermediate_output_bg318||0), 0.002); end
  def test_intermediate_output_c319; assert_equal("XVII.a", worksheet.intermediate_output_c319.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_d319; assert_equal("District heating effective demand", worksheet.intermediate_output_d319.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_ay319; assert_in_delta(0.0, (worksheet.intermediate_output_ay319||0), 0.002); end
  def test_intermediate_output_az319; assert_in_delta(0.0, (worksheet.intermediate_output_az319||0), 0.002); end
  def test_intermediate_output_ba319; assert_in_delta(0.0, (worksheet.intermediate_output_ba319||0), 0.002); end
  def test_intermediate_output_bb319; assert_in_delta(0.0, (worksheet.intermediate_output_bb319||0), 0.002); end
  def test_intermediate_output_bc319; assert_in_delta(0.0, (worksheet.intermediate_output_bc319||0), 0.002); end
  def test_intermediate_output_bd319; assert_in_delta(0.0, (worksheet.intermediate_output_bd319||0), 0.002); end
  def test_intermediate_output_be319; assert_in_delta(0.0, (worksheet.intermediate_output_be319||0), 0.002); end
  def test_intermediate_output_bf319; assert_in_delta(0.0, (worksheet.intermediate_output_bf319||0), 0.002); end
  def test_intermediate_output_bg319; assert_in_delta(0.0, (worksheet.intermediate_output_bg319||0), 0.002); end
  def test_intermediate_output_d320; assert_equal("Total", worksheet.intermediate_output_d320.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_ay320; assert_in_epsilon(3001.794996903743, worksheet.intermediate_output_ay320, 0.002); end
  def test_intermediate_output_az320; assert_in_epsilon(3090.697187220331, worksheet.intermediate_output_az320, 0.002); end
  def test_intermediate_output_ba320; assert_in_epsilon(3285.9899569622994, worksheet.intermediate_output_ba320, 0.002); end
  def test_intermediate_output_bb320; assert_in_epsilon(3507.6417861936498, worksheet.intermediate_output_bb320, 0.002); end
  def test_intermediate_output_bc320; assert_in_epsilon(3765.1304252817436, worksheet.intermediate_output_bc320, 0.002); end
  def test_intermediate_output_bd320; assert_in_epsilon(4002.8663777237066, worksheet.intermediate_output_bd320, 0.002); end
  def test_intermediate_output_be320; assert_in_epsilon(4196.888228203029, worksheet.intermediate_output_be320, 0.002); end
  def test_intermediate_output_bf320; assert_in_epsilon(4356.625129792794, worksheet.intermediate_output_bf320, 0.002); end
  def test_intermediate_output_bg320; assert_in_epsilon(4493.5155928867, worksheet.intermediate_output_bg320, 0.002); end
  def test_intermediate_output_d322; assert_equal("Transport", worksheet.intermediate_output_d322.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_ay322; assert_in_epsilon(24.783234405217023, worksheet.intermediate_output_ay322, 0.002); end
  def test_intermediate_output_az322; assert_in_epsilon(25.490861341891197, worksheet.intermediate_output_az322, 0.002); end
  def test_intermediate_output_ba322; assert_in_epsilon(25.416372292786665, worksheet.intermediate_output_ba322, 0.002); end
  def test_intermediate_output_bb322; assert_in_epsilon(92.59557957991419, worksheet.intermediate_output_bb322, 0.002); end
  def test_intermediate_output_bc322; assert_in_epsilon(222.74571892093255, worksheet.intermediate_output_bc322, 0.002); end
  def test_intermediate_output_bd322; assert_in_epsilon(342.71434357907077, worksheet.intermediate_output_bd322, 0.002); end
  def test_intermediate_output_be322; assert_in_epsilon(432.6187790041113, worksheet.intermediate_output_be322, 0.002); end
  def test_intermediate_output_bf322; assert_in_epsilon(498.8775318366574, worksheet.intermediate_output_bf322, 0.002); end
  def test_intermediate_output_bg322; assert_in_epsilon(562.6601273553823, worksheet.intermediate_output_bg322, 0.002); end
  def test_intermediate_output_d323; assert_equal("Industry", worksheet.intermediate_output_d323.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_ay323; assert_in_epsilon(559.44822, worksheet.intermediate_output_ay323, 0.002); end
  def test_intermediate_output_az323; assert_in_epsilon(560.7884098449158, worksheet.intermediate_output_az323, 0.002); end
  def test_intermediate_output_ba323; assert_in_epsilon(611.9391379359205, worksheet.intermediate_output_ba323, 0.002); end
  def test_intermediate_output_bb323; assert_in_epsilon(664.1156554578092, worksheet.intermediate_output_bb323, 0.002); end
  def test_intermediate_output_bc323; assert_in_epsilon(707.5080095229046, worksheet.intermediate_output_bc323, 0.002); end
  def test_intermediate_output_bd323; assert_in_epsilon(756.6007328920734, worksheet.intermediate_output_bd323, 0.002); end
  def test_intermediate_output_be323; assert_in_epsilon(805.8531409285557, worksheet.intermediate_output_be323, 0.002); end
  def test_intermediate_output_bf323; assert_in_epsilon(858.6716138026235, worksheet.intermediate_output_bf323, 0.002); end
  def test_intermediate_output_bg323; assert_in_epsilon(905.3261447321629, worksheet.intermediate_output_bg323, 0.002); end
  def test_intermediate_output_d324; assert_equal("Heating and cooling", worksheet.intermediate_output_d324.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_ay324; assert_in_epsilon(950.1288070185262, worksheet.intermediate_output_ay324, 0.002); end
  def test_intermediate_output_az324; assert_in_epsilon(985.6344075117547, worksheet.intermediate_output_az324, 0.002); end
  def test_intermediate_output_ba324; assert_in_epsilon(1043.1832855655837, worksheet.intermediate_output_ba324, 0.002); end
  def test_intermediate_output_bb324; assert_in_epsilon(1084.5155647398128, worksheet.intermediate_output_bb324, 0.002); end
  def test_intermediate_output_bc324; assert_in_epsilon(1118.5253354930062, worksheet.intermediate_output_bc324, 0.002); end
  def test_intermediate_output_bd324; assert_in_epsilon(1146.4105106889656, worksheet.intermediate_output_bd324, 0.002); end
  def test_intermediate_output_be324; assert_in_epsilon(1168.8810711578872, worksheet.intermediate_output_be324, 0.002); end
  def test_intermediate_output_bf324; assert_in_epsilon(1185.762363036262, worksheet.intermediate_output_bf324, 0.002); end
  def test_intermediate_output_bg324; assert_in_epsilon(1197.0543863240905, worksheet.intermediate_output_bg324, 0.002); end
  def test_intermediate_output_d325; assert_equal("Lighting & appliances", worksheet.intermediate_output_d325.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_ay325; assert_in_epsilon(1467.4347354800002, worksheet.intermediate_output_ay325, 0.002); end
  def test_intermediate_output_az325; assert_in_epsilon(1518.7835085217698, worksheet.intermediate_output_az325, 0.002); end
  def test_intermediate_output_ba325; assert_in_epsilon(1605.451161168009, worksheet.intermediate_output_ba325, 0.002); end
  def test_intermediate_output_bb325; assert_in_epsilon(1666.4149864161136, worksheet.intermediate_output_bb325, 0.002); end
  def test_intermediate_output_bc325; assert_in_epsilon(1716.3513613449004, worksheet.intermediate_output_bc325, 0.002); end
  def test_intermediate_output_bd325; assert_in_epsilon(1757.140790563597, worksheet.intermediate_output_bd325, 0.002); end
  def test_intermediate_output_be325; assert_in_epsilon(1789.5352371124757, worksheet.intermediate_output_be325, 0.002); end
  def test_intermediate_output_bf325; assert_in_epsilon(1813.3136211172505, worksheet.intermediate_output_bf325, 0.002); end
  def test_intermediate_output_bg325; assert_in_epsilon(1828.4749344750649, worksheet.intermediate_output_bg325, 0.002); end
  def test_intermediate_output_d326; assert_equal("Total", worksheet.intermediate_output_d326.to_s.gsub(/[\n\r]+/,'')); end
  def test_intermediate_output_ay326; assert_in_epsilon(3001.7949969037436, worksheet.intermediate_output_ay326, 0.002); end
  def test_intermediate_output_az326; assert_in_epsilon(3090.6971872203317, worksheet.intermediate_output_az326, 0.002); end
  def test_intermediate_output_ba326; assert_in_epsilon(3285.9899569623, worksheet.intermediate_output_ba326, 0.002); end
  def test_intermediate_output_bb326; assert_in_epsilon(3507.6417861936498, worksheet.intermediate_output_bb326, 0.002); end
  def test_intermediate_output_bc326; assert_in_epsilon(3765.1304252817436, worksheet.intermediate_output_bc326, 0.002); end
  def test_intermediate_output_bd326; assert_in_epsilon(4002.866377723707, worksheet.intermediate_output_bd326, 0.002); end
  def test_intermediate_output_be326; assert_in_epsilon(4196.88822820303, worksheet.intermediate_output_be326, 0.002); end
  def test_intermediate_output_bf326; assert_in_epsilon(4356.625129792794, worksheet.intermediate_output_bf326, 0.002); end
  def test_intermediate_output_bg326; assert_in_epsilon(4493.515592886701, worksheet.intermediate_output_bg326, 0.002); end
end
