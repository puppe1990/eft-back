class CreateJoinTableCustomPhrasePhrase < ActiveRecord::Migration[7.0]
  def change
    create_join_table :custom_phrases, :phrases do |t|
      t.index [:custom_phrase_id, :phrase_id]
      t.index [:phrase_id, :custom_phrase_id]
    end
  end
end
