class Score
  attr_accessor :scoring_dice

  def initialize(scoring_dice)
    @scoring_dice = scoring_dice
  end

  def straight?
    @scoring_dice == ['1', '2', '3', '4', '5', '6']
  end
end