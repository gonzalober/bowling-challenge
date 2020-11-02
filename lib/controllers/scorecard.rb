require_relative "./../models/framesscore.rb"

class ScoreCard < Sinatra::Base
  set :root, File.dirname(File.expand_path("..", __FILE__))
  enable :sessions

  get '/' do
    erb :index
  end

  post '/players'do
    p '-----------'
    p params["score"]
    @scores = []
    @scores = FrameScoreModel.new.frame(params["score"])
    p @scores
    erb :scorecard
  end

  get '/players/new' do
    @player_1_name = params[:player_1_name]
    erb :'players/new'
  end


end