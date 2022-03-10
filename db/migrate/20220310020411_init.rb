class Init < ActiveRecord::Migration[6.1]
  def change
    create_table :dogs do |t|
      t.string :name

      t.timestamps
    end

    create_table :waterbowls do |t|
      t.string :label
      t.string :latitude
      t.string :longitude

      t.timestamps
    end

    create_table :waterbowl_visits do |t|
      t.integer :dog_id
      t.integer :waterbowl_id
      t.text :comment

      t.timestamps
    end
  end
end
