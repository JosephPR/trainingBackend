class CreateExotics < ActiveRecord::Migration[5.2]
  def change
    create_table :exotics do |t|
      t.string :name
      t.string :image_url
      t.string :content

      t.timestamps
    end
  end
end
