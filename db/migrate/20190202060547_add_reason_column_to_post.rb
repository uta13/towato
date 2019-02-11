class AddReasonColumnToPost < ActiveRecord::Migration[5.2]
  def change
    add_column :posts, :reason, :text
  end
end
