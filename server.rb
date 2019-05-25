# encoding: utf-8
require 'sinatra'
require 'erb'
require 'json'

require_relative './model/data_from_model'

# This deals with urls that relate to previous versions of the 2050 calculator.
# If you are developing your own calculator, delete from here to the line marked STOP DELETING HERE
class TwentyFiftyServer < Sinatra::Base
  # set :public_folder, File.join(File.dirname(__FILE__), 'build')

  enable :lock # The C 2050 model is not thread safe

  # This allows users to download the excel spreadsheet version of the model
  get '/model.xlsx' do
    send_file 'model/model.xlsx'
  end

  get '/calculator-bot-check/:region/:id' do |region, id|
    botAgentStrings = ['facebookexternalhit', 'Twitterbot', 'LinkedInBot']
    if botAgentStrings.any?{|bot| request.user_agent.include?(bot)}
      puts "bot request, user agent #{request.user_agent}"
      # need to use the id and do
      result = DataFromModel.new.calculate_pathway(region, id)
      # then use that return emissions change value as part of the basis of the link to our og image service
      percentage = result['output_emissions_percentage_reduction']
      "<!DOCTYPE html><html><head><meta property=\"og:title\" content=\"2050 Climate Calculator\"><meta property=\"og:image\" content=\"http://og-image-iainkirkpatrick.root-systems.now.sh/#{(percentage.abs * 100).floor}?increase=#{percentage < 0}
\"><meta property=\"og:image:width\" content=\"2048\"><meta property=\"og:image:height\" content=\"1170\"></head><body></body></html>"
    else
      redirect "https://2050calculator.nz/share/#{region}/#{id}?bot=false"
    end
  end

  if development?
    # This is the main method for getting data
    get '/pathways/:region/:id/data' do |region, id|
      DataFromModel.new.calculate_pathway(region, id).to_json
    end
  else
    # This is the main method for getting data
    get '/pathways/:region/:id/data' do |region, id|
      last_modified Model.last_modified_date # Don't bother recalculating unless the model has changed
      expires (24*60*60), :public # cache for 1 day
      content_type :json # We return json
      DataFromModel.new.calculate_pathway(region, id).to_json
    end
  end

  # get '/pathways/11111111111111111111111111111111111111111111111111111/primary_energy_chart' do
  #   redirect to('/')
  # end
  #
  # get '/pathways/:id/:action' do |id, action|
  #   redirect "http://old-interface.2050.org.uk/pathways/#{id}/#{action}"
  # end
  #
  # get '/pathways/:id' do |id|
  #   redirect "http://old-interface.2050.org.uk/pathways/#{id}"
  # end

  # get '*' do
  #   send_file 'build/index.html'
  # end

  get '*' do
    status 400
  end

end
