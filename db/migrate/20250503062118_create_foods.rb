class CreateFoods < ActiveRecord::Migration[7.2]
  def change
    create_table :foods do |t|
      t.string :name, null: false
      t.string :comment
      t.string :food_image

      t.timestamps
    end
  end
end
