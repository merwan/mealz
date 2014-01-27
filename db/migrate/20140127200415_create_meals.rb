class CreateMeals < ActiveRecord::Migration
  def change
    create_table :meals do |t|
      t.references :recipe, index: true
      t.references :planning, index: true
      t.date :happens_at

      t.timestamps
    end
  end
end
