class Character < ActiveRecord::Base
  has_many :votes, foreign_key: :winner_id

  def self.rank_characters
    Character.all.sort {|x,y| y.votes.count <=> x.votes.count }
  end

  def votes
    return 0 unless !votes.empty?
    return votes.length
  end
end
