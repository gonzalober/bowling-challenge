class FrameScoreModel
  attr_accessor :frames

  def initialize(*frames)
    @frames = frames
  end

  def turn_score
    if not_strike_spare?
      shots
    elsif spare?
      10 + next_frame[0]
    else strike?
      strike_scorer
    end
  end

  def scorer
    score = 0
    while frames.length > 1
      score = score + turn_score
      turns.shift
    end
  end

  def frame(current_score)
    aaa=[]
    aaa << current_score
  end

  def next_frame
    frames[1]
  end
  
  def not_strike_spare?
    shots < 10 && shots >= 0
  end

  def shots
    frame[0] + frame[1]
  end

  def gutter

  end

  def spare?

  end

  def strike?
    frame[0] == 10
  end

  def perfect_game
    #scores strikes in each of the 10 frames and in the last 2 shots for the bonus)
  end

end


