class CityUpdate < ActiveRecord::Migration[5.2]
  def change
    remove_index :cities, name: "index_cities_on_user_id"
  end
end
