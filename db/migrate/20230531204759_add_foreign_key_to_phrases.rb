class AddForeignKeyToPhrases < ActiveRecord::Migration[7.0]
  def change
    add_foreign_key :phrases, :categories, column: :category_id
  end
end
