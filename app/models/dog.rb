class Dog < ActiveRecord::Base
  has_many :waterbowl_visits
  has_many :waterbowls, through: :waterbowl_visits

  def self.with_most_visits
    self
      .joins(:waterbowl_visits)
      .group(:id)
      .order('COUNT(waterbowl_visits.id) DESC')
      .limit(1)[0]
  end

  def self.with_least_visits
    self
      .joins(:waterbowl_visits)
      .group(:id)
      .order('COUNT(waterbowl_visits.id) ASC')
      .limit(1)[0]
  end

end
