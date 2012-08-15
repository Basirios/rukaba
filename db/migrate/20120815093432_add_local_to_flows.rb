class AddLocalToFlows < ActiveRecord::Migration
  def change
	add_column :flows, :local, :string
  end
end
