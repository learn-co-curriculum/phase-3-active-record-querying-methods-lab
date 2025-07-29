class Show < ActiveRecord::Base
  
  def self.highest_rating
  Show.maximum(:rating)
  end

  def self.most_popular_show
    Show.find_by(rating: self.highest_rating)
  end

  def self.lowest_rating
    Show.minimum(:rating)
  end

  def self.least_popular_show
    Show.find_by(rating: self.lowest_rating)
  end

  def self.ratings_sum
    Show.sum(:rating)
  end

  def self.popular_shows
    Show.where("rating > 5")
  end

  def self.shows_by_alphabetical_order
    Show.order("name ASC")
  end
end
