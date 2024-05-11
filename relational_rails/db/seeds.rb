# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
area1 = Area.create(name: "Animal World", rock_type: "Granite", state: "Colorado", county: "Boulder", approach_distance: 30, roadside_access: false)
area2 = Area.create(name: "Wall Street", rock_type: "Sandstone", state: "Utah", county: "Grand", approach_distance: 0, roadside_access: true)
@animation = Route.create!(name: "Animation", difficulty: 58, sport: true, trad: false, length: 100, pitches: 1, rating: 3, area_id: @area1.id)
@free_willie = Route.create!(name: "Free Willie", difficulty: 511, sport: true, trad: false, length: 80, pitches: 1, rating: 3, area_id: @area1.id)
