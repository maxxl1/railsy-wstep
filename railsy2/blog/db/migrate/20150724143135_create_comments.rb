class CreateComments < ActiveRecord::Migration
  def self.up
    create_table :comments do |t|
      t.text :comment
      t.references :message
      t.references :user
      t.timestamps
    end
    add_index :comments, :message_id
    add_index :comments, :user_id
  end

  def self.down
    drop_table :comments
  end
end
