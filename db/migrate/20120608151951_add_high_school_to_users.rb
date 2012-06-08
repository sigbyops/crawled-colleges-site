class AddHighSchoolToUsers < ActiveRecord::Migration
  def change
    add_column :users, :high_school, :string
  end
end
