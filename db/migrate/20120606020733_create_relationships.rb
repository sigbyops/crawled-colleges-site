class CreateRelationships < ActiveRecord::Migration
  def change
    create_table :relationships do |t|
      t.integer :follower_id
      t.integer :followed_id

      t.timestamps
    end
    
    # add index on each column for efficiency to find relationships by follower_id
    # and by followed_id.
    add_index :relationships, :follower_id
    add_index :relationships, :followed_id
    # uniqueness of pairs
    add_index :relationships, [:follower_id, :followed_id], unique: true
  end
end
