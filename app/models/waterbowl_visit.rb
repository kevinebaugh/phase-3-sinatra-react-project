class WaterbowlVisit < ActiveRecord::Base
  belongs_to :waterbowl
  belongs_to :dog

end
