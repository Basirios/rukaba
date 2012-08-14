class AddBoardIdToPosts < ActiveRecord::Migration
  def change
	add_column :posts, :board_id, :string
  end
end
