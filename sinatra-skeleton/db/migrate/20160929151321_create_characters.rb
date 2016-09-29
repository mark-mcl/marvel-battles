class CreateCharacters < ActiveRecord::Migration
  def change
    create_table :characters do |t|
      t.integer :char_id, null: false

      t.timestamps(null: false)
    end
  end
end
