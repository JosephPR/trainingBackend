class CreateDogs < ActiveRecord::Migration[5.2]
  def change
    create_table :dogs do |t|
      t.string :name
      t.string :image_url
      t.string :content
      t.references :pet, foreign_key: true

      t.timestamps
    end
  end
end
