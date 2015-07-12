class AddContentToCalyns < ActiveRecord::Migration
  def change
    add_column :calyns, :content, :string
  end
end
