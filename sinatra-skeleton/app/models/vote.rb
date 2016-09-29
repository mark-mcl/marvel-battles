class Vote < ActiveRecord::Base
  belongs_to :winner, class_name: :Character
end
