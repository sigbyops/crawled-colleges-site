class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      
      t.timestamps # creates two magic columns: created_at, updated_at
    end
  end
end
