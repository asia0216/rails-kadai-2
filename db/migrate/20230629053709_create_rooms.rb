class CreateRooms < ActiveRecord::Migration[6.1]
  def change
    create_table :rooms do |t|
      t.string :name
      t.text :detail
      t.text :introduction
      t.integer :money

      t.timestamps
    end
  end
end
