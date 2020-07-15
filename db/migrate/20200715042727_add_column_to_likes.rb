class AddColumnToLikes < ActiveRecord::Migration[5.2]
  def change
    add_column :likes, :note_id, :integer
  end
end
