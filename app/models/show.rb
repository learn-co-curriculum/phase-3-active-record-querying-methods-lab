class Show < ActiveRecord::Base 
  def self.highest_rating 
    Show.maximum(:rating)
  end

  def self.most_popular_show 
    Show.where("rating = ?", self.highest_rating)[0]
  end

  def self.lowest_rating 
    Show.minimum(:rating)
  end

  def self.least_popular_show 
    Show.where("rating = ?", self.lowest_rating)[0]
  end

  def self.ratings_sum 
    Show.sum(:rating)
  end

  def self.popular_shows
   Show.where("rating > 5") 
  end
end
