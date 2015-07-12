class CreateCalyns < ActiveRecord::Migration
  def change
    create_table :calyns do |t|
      t.text :content
      t.timestamps null: false
    end
  end
end
