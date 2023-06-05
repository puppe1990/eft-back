class CustomPhrasesController < ApplicationController
  def index
    @custom_phrases = CustomPhrase.all 
  end
  
  def show
    @custom_phrase = CustomPhrase.find(params[:id])
  end
  
  def new
    @custom_phrase = CustomPhrase.new 
  end
  
  def create
    @custom_phrase = CustomPhrase.new(custom_phrase_params)
    @custom_phrase.save
    redirect_to @custom_phrase
  end
  
  def edit
    @custom_phrase = CustomPhrase.find(params[:id])
  end
  
  def update
    @custom_phrase = CustomPhrase.find(params[:id])
    @custom_phrase.active = params[:custom_phrase][:active]
    @custom_phrase.phrase_ids = params[:custom_phrase][:phrase_ids] 
    @custom_phrase.save
    redirect_to @custom_phrase 
  end 

  def destroy
    @custom_phrase = CustomPhrase.find(params[:id])
    @custom_phrase.destroy
    redirect_to custom_phrases_path  
  end
  
  private 
  
  def custom_phrase_params
    params.require(:custom_phrase).permit(:name, :active, :phrase_ids => []) 
  end 
end