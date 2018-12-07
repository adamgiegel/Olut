class Beer < ApplicationRecord
  has_many :beer_locations
  has_many :locations, through: :beer_locations
  has_many :ratings
  has_many :users, through: :ratings

  validates :name, presence: true
  validates :category, presence: true
  validates :abv, presence: true

  def blank_stars
 5 - ratings.to_i
end

  def self.search(search, id)
  if search
    where (['name like ?', "%#{search}%"])
  # if beer
  #     self.where(beer_id: beer)
    else
      Beer.all
  end
    else
      Beer.all
    end

    def average_rating
        ratings = self.ratings.map {|rating| rating.ratings}
        number_ratings= ratings.select {|rating| rating != nil}
        numbers = number_ratings.map do |number|
          number.to_i
        end
        sum = numbers.inject(:+)
        sum/numbers.length
      end

  end
# end
