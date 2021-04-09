require_relative 'config/environment'

class App < Sinatra::Base

    get '/' do
        erb :user_input
    end

    post '/piglatinize' do
        display = PigLatinizer.new
        @piglatin = display.piglatinize(params[:user_text])
        erb :display_piglatinizer
    end

end