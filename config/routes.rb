Rails.application.routes.draw do

  root 'words#index'

  get 'study', :controller => :words, :action => :study

  get 'revise', :controller => :words, :action => :revise

end
