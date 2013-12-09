require 'bundler'
Bundler.require

# Why is it a good idea to wrap our App class in a module?
module StudentSite
  class App < Sinatra::Base
    get '/' do
      "hello world!"
    end

    get '/hello-world' do
      @random_numbers = Array.new(20) {|i| 1 + i}
      erb :hello
    end

    get '/artists' do
      @artists = ["Neko Case", "Lissie", "Ed Sheeran", "Taylor Hanson"]
      erb :artists
    end
  end
end