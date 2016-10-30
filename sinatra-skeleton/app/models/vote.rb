class Vote < ActiveRecord::Base
  belongs_to :winner, class_name: :Character

  validate :winner_not_loser

  def winner_not_loser
  	if winner_id == loser_id
  		self.errors.add(:winner_id, 'cannot be same as loser_id')
  	end
  end
end
