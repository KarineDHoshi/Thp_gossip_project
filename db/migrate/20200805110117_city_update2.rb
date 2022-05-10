class CityUpdate2 < ActiveRecord::Migration[5.2]
  def change
    remove_column :cities, :user_id
  end
end
