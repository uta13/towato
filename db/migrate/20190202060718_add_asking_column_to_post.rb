class AddAskingColumnToPost < ActiveRecord::Migration[5.2]
  def change
    add_column :posts, :asking, :text
  end
end
