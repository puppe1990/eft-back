class CustomPhrase < ApplicationRecord
  has_and_belongs_to_many :phrases
end