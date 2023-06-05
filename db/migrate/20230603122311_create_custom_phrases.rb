class CreateCustomPhrases < ActiveRecord::Migration[7.0]
  def change
    create_table :custom_phrases do |t|
      t.string :name  # Name of the custom phrase set
      t.timestamps
    end
  end
end
