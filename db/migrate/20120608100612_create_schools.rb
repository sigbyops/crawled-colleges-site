class CreateSchools < ActiveRecord::Migration
  def change
    create_table :schools do |t|
      t.string :name
      t.decimal :avg
      t.integer :total

      t.timestamps
    end
  end
end
