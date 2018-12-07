class Rating < ApplicationRecord
  belongs_to :user
  belongs_to :beer

  # validates :number, presence: true, numericality: { only_integer: true } 
end
