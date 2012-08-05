class CreateBoards < ActiveRecord::Migration
  def change
    create_table :boards do |t|
      t.integer :id
      t.string :url
      t.string :desc
      t.string :rules
      t.integer :type
      t.boolean :hidden

      t.timestamps
    end
  end
end
