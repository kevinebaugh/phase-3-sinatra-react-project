class NoNulls < ActiveRecord::Migration[6.1]
  def change
    change_column_null :dogs, :name, false

    change_column_null :waterbowls, :label, false
    change_column_null :waterbowls, :latitude, false
    change_column_null :waterbowls, :longitude, false

    change_column_null :waterbowl_visits, :dog_id, false
    change_column_null :waterbowl_visits, :waterbowl_id, false
    change_column_null :waterbowl_visits, :comment, false
  end
end
