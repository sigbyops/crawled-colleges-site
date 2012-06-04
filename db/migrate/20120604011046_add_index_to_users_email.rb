class AddIndexToUsersEmail < ActiveRecord::Migration
  def change
	# add index to email column of users table
	add_index :users,:email,unique:true
  end
end
