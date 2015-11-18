class Show < ActiveRecord::Base

  def self.most_popular
    self.maximum(:rating)
  end

  def self.least_popular
    self.minimum(:rating)
  end

  def self.ratings_sum
    self.sum(:rating)
  end
  
  def shows_by_rating
    self.group(:rating).count
  end

  def popular_shows
    self.where("rating >= ?", 60)
  end

  def shows_by_alphabetical_order
    self.order(:name)
  end
end