class Api::V1::CustomPhrasesController < ApplicationController
  def index
    custom_phrases = CustomPhrase.active.all
    render json: custom_phrases
  end
end
