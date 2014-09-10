class Score
  attr_accessor :scoring_dice

  def initialize(scoring_dice)
    @scoring_dice = scoring_dice
  end

  def straight?
    @scoring_dice == ['1', '2', '3', '4', '5', '6']
  end
  
  def two_three_of_a_kind?
    (@scoring_dice[0..2] && @scoring_dice[0..2].length == 3 && @scoring_dice[1..2].all? { |scoring_die| scoring_die == @scoring_dice[0] }) &&
      (@scoring_dice[3..5] && @scoring_dice[3..5].length == 3 && @scoring_dice[4..5].all? { |scoring_die| scoring_die == @scoring_dice[3] })
  end
  def three_pairs?
    @scoring_dice[0] == @scoring_dice[1] &&
      @scoring_dice[2] == @scoring_dice[3] &&
      @scoring_dice[4] == @scoring_dice[5] &&
      @scoring_dice.length == 6 &&
      !@scoring_dice.all? { |scoring_die| @scoring_dice[0] == scoring_die }
  end

end