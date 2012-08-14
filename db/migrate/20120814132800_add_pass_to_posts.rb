class AddPassToPosts < ActiveRecord::Migration
  def change
	add_column :posts, :pass, :string
  end
end
