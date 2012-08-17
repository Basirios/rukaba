class AddDefaultNameToBoards < ActiveRecord::Migration
  def change
  	add_column :boards, :default_name, :string
  end
end
