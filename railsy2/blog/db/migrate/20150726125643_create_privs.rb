class CreatePrivs < ActiveRecord::Migration
  def change
    create_table :privs do |t|
      t.text :subject
      t.text :content
      t.integer :sender_id
      t.integer :recipent_id
      t.boolean :read
      t.timestamps null: false
    end
  end
end
