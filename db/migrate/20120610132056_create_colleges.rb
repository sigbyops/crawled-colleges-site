class CreateColleges < ActiveRecord::Migration
  def change
    create_table :colleges do |t|
      t.string :name
      t.string :state
      t.string :city
      t.string :image
      t.string :img_link

      t.timestamps
    end
  end
end
