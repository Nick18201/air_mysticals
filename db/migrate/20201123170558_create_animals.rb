class CreateAnimals < ActiveRecord::Migration[6.0]
  def change
    create_table :animals do |t|
      t.string :name
      t.text :description
      t.integer :price_per_day
      t.integer :age
      t.string :location
      t.references :owner, foreign_key: { to_table: :users }

      t.timestamps
    end
  end
end
