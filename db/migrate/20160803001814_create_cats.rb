class CreateCats < ActiveRecord::Migration
  def change
    create_table :cats do |t|
      t.string :name
      t.string :breed
      t.string :color
      t.string :age_category

      t.timestamps null: false
    end
  end
end
