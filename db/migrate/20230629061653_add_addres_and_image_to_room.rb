class AddAddresAndImageToRoom < ActiveRecord::Migration[6.1]
  def change
    add_column :rooms, :addres, :text
    add_column :rooms, :image, :text
  end
end
