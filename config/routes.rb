Rails.application.routes.draw do
  root 'bookers#top'

  get 'bookers/index'
  get 'bookers/:id' => 'bookers#show' , as:"show"
  get 'bookers/edit'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  post "bookers" => "bookers#create"
end
