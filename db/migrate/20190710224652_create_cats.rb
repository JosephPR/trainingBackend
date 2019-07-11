class CreateCats < ActiveRecord::Migration[5.2]
  def change
    create_table :cats do |t|
      t.string :name
      t.string :image_url
      t.string :content


      t.timestamps
    end
  end
end
