class CreateCharacters < ActiveRecord::Migration[5.1]
  def change
    create_table :characters do |t|
      t.string :name
      t.references :episode, foreign_key: true

      t.timestamps
    end
  end
end
