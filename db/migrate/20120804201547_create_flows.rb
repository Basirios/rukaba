class CreateFlows < ActiveRecord::Migration
  def change
    create_table :flows do |t|
      t.integer :id
      t.integer :board_id
      t.time :last_updated
      t.boolean :archived
      t.boolean :pinned

      t.timestamps
    end
  end
end
