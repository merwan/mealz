class CreateIngredients < ActiveRecord::Migration
  def change
    create_table :ingredients do |t|
      t.belongs_to :recipe
      t.belongs_to :unit
      t.belongs_to :product
      t.float :quantity

      t.timestamps
    end
  end
end
