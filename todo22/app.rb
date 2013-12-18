require 'bundler'
Bundler.require

Dir.glob('./lib/*.rb') do |model|
  require model
end

module Name
  class App < Sinatra::Application

    get '/' do
      erb :form
    end

    post '/birthday' do

      @birth_date = params["birth_date"]

      @name = params["name"]

      params.inspect

      erb :birthday
    end

  end
end
