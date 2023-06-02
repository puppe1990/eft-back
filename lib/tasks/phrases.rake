require 'rake'
require 'active_record'

namespace :phrases do 
  desc 'Add sample phrases'
  task add_sample_phrases: :environment do
    phrases = [
      { description: "s ", category_id: 2 }
    
    ]

    phrases.each do |phrase|
      Phrase.create(phrase)
    end
  end
end