class CreatePhrases < ActiveRecord::Migration[7.0]
  def change
    create_table :phrases do |t|
      t.text :description
      t.integer :category_id



      t.timestamps
    end
  end
end
