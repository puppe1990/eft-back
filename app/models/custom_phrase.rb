class CustomPhrase < ApplicationRecord
  has_and_belongs_to_many :phrases
  scope :active, -> { where(active: true) }

  def as_json(options={})
    phrases = self.phrases.map(&:description)
    {
      phrases: phrases.join(", ")
    }
  end 
end