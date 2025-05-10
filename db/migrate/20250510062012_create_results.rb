class CreateResults < ActiveRecord::Migration[7.2]
  def change
    create_table :results do |t|
      t.integer :food_id
      t.string :slug, null: false

      t.timestamps
    end
  end
end
