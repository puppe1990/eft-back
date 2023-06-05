class AddActiveToCustomPhrases < ActiveRecord::Migration[7.0]
  def change
    add_column :custom_phrases, :active, :boolean, default: false
  end
end
