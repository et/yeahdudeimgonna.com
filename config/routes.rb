YeahdudeimgonnaCom::Application.routes.draw do

  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'

  resources :sessions

  mount PlanB::Engine, at: '/plan_b'
  get 'about'      => 'high_voltage/pages#show', id: 'about'
  get 'home'       => 'high_voltage/pages#show', id: 'home'
  get 'statistics' => 'high_voltage/pages#show', id: 'statistics'
  get 'See the seahorses at the Monterey Bay Aquarium and Backpack to the Big Sur hot springs and Run the beaches of Santa Barbara and Get a photo with Mickey at Disneyland'.parameterize => 'high_voltage/pages#show', id: 'update1'

  get ':slug' => 'published_itineraries#show', as: :published_itinerary
  root to: 'high_voltage/pages#show', id: 'home'
end
