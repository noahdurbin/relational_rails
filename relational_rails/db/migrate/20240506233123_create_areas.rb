class CreateAreas < ActiveRecord::Migration[7.1]
  def change
    create_table :areas do |t|
      t.string :name
      t.string :rock_type
      t.string :state
      t.string :county
      t.integer :approach_distance
      t.boolean :roadside_access

      t.timestamps
    end
  end
end
