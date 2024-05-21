class CreateCharacters < ActiveRecord::Migration[7.1]
  def change
    create_table :characters do |t|
      t.string :name
      t.decimal :x
      t.decimal :y

      t.timestamps
    end
  end
end
