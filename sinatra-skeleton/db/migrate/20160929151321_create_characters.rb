class CreateCharacters < ActiveRecord::Migration
  def change
    create_table :characters do |t|
      t.string		:name
      t.string		:image_url
      t.string		:description

      t.timestamps(null: false)
    end
  end
end
