class CreateEpisodes < ActiveRecord::Migration[5.1]
  def change
    create_table :episodes do |t|
      t.string :title
      t.string :poster
      t.string :hero_image
      t.text :description

      t.timestamps
    end
  end
end
