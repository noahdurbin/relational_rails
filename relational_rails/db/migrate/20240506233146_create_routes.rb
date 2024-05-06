class CreateRoutes < ActiveRecord::Migration[7.1]
  def change
    create_table :routes do |t|
      t.string :name
      t.integer :difficulty
      t.boolean :sport
      t.boolean :trad
      t.integer :length
      t.integer :pitches
      t.integer :rating
      t.references :area, null: false, foreign_key: true

      t.timestamps
    end
  end
end
