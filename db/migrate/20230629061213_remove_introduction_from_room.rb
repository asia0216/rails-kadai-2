class RemoveIntroductionFromRoom < ActiveRecord::Migration[6.1]
  def change
    remove_column :rooms, :introduction, :text
  end
end
