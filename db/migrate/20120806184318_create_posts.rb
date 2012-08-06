class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.integer :id
      t.integer :flow_id
      t.integer :local
      t.string :subj
      t.string :name
      t.string :tripcode
      t.text :body
      t.boolean :deleted
      t.string :replyed

      t.timestamps
    end
  end
end
