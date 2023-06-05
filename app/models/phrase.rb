class Phrase < ApplicationRecord
  belongs_to :category
  has_and_belongs_to_many :custom_phrases
end
