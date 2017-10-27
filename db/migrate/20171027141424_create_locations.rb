class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.string :city, null: false
      t.string :state, null: false
      t.references :user, null: false, foreign_key: true
    end
  end
end
