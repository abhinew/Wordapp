class WordsController < ApplicationController
  before_action :set_word, only: [:show, :edit, :update, :destroy]

  protect_from_forgery except: :set_category

  def index

  end

  def study

  end

  def revise_unknown

  end

  def revise_known

  end

  def get_word
    category = params[:category]
    @word = Word.where(:category => category).order('RANDOM()').limit(1)
    render json: @word[0]
  end

  def set_category


    category = params[:category]
    id = params[:id]
    @word = Word.find(id)
    @word.category = category
    @word.save
    render json: {
        success: true
    }
  end

  def new
    @random_word = Word.where(:category => nil).order('RANDOM()').limit(1)
    render json: @random_word[0]
  end

end
