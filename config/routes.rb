Rails.application.routes.draw do

  root 'words#index'

  get 'study', :controller => :words, :action => :study

  get 'new', :controller => :words, :action => :new

  get 'revise', :controller => :words, :action => :revise

  post 'category', :controller => :words, :action => :set_category

  get 'word', :controller => :words, :action => :get_word

end
