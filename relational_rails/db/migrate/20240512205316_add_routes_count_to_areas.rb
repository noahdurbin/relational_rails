class AddRoutesCountToAreas < ActiveRecord::Migration[7.1]
  def change
    add_column :areas, :routes_count, :integer, default: 0
  end
end
