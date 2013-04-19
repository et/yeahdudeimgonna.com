YeahdudeimgonnaCom::Application.routes.draw do

  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'

  resources :sessions

  mount PlanB::Engine, at: '/plan_b'
  get 'about'      => 'high_voltage/pages#show', id: 'about'
  get 'home'       => 'high_voltage/pages#show', id: 'home'
  get 'statistics' => 'high_voltage/pages#show', id: 'statistics'

  get ':slug' => 'published_itineraries#show', as: :published_itinerary
  root to: 'high_voltage/pages#show', id: 'home'
end
