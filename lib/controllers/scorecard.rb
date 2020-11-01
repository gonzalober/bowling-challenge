require_relative "./../models/framesscore.rb"

class ScoreCard < Sinatra::Base
  set :root, File.dirname(File.expand_path("..", __FILE__))
  session :enable
  
  get '/' do
    erb :index
  end

  post '/players'do
    p '-----------'
    p params["score"]
    @scores = FrameScoreModel.new(params["score"])
    p @scores
    erb :scorecard
  end

  get '/players/new' do

    erb :'players/new'
  end


end