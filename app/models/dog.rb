class Dog < ActiveRecord::Base
  has_many :waterbowl_visits
  has_many :waterbowls, through: :waterbowl_visits

end
