class CreateChats < ActiveRecord::Migration[5.2]
  def change
    create_table :chats do |t|
      t.string :user_id
      t.string :chat_id
      t.text :content

      t.timestamps
    end
  end
end
