class SlotMachine
  attr_reader :reels

  def initialize(reels)
    @reels = reels
    @emojis = ['🍒', '7️⃣', '🛎️', '⭐️', '🤩']
  end

  def score
    # TODO: based on the combination, we have to give scores
    # TODO: check if the reels are all the same, and based on the same emoji, give scores accordingly
    if @reels.uniq.length == 1
      # How can i get the index + 1 of the @reels[0] emoji??
      (@emojis.index(@reels[0]) + 1) * 10
    elsif @reels.uniq.length == 2 && @reels.include?('🤩')
      # ⬇️ THIS IS BIT OF A HACK ⬇️
      # When there's only two emojis, and if we sort them and take the middle one, that emoji
      # is guaranteed to be the one that is repeated
      (@emojis.index(@reels.sort[1]) + 1) * 5
    else
      0
    end
  end

  def play
    @reels = [@emojis.sample, @emojis.sample, @emojis.sample]
  end
end
