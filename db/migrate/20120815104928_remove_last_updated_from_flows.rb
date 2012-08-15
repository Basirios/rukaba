class RemoveLastUpdatedFromFlows < ActiveRecord::Migration
  def up
	remove_column :flows, :last_updated
  end
end
