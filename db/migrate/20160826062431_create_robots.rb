class CreateRobots < ActiveRecord::Migration[5.0]
  def change
    create_table :robots do |t|
      t.integer :x_coordinate
      t.integer :y_coordinate
      t.string :orientation

      t.timestamps
    end
  end
end
