class Route < ApplicationRecord
  belongs_to :area, counter_cache: true
end
