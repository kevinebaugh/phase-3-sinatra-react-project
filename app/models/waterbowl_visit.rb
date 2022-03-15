class WaterbowlVisit < ActiveRecord::Base
  belongs_to :waterbowl
  belongs_to :dog

  def self.most_popular_comment
    comment = self.all.pluck(:comment).tally.first[0]
    count = self.all.pluck(:comment).tally.first[1]

    "The comment '#{comment}' is most popular, with #{count} occurences."
  end

end
