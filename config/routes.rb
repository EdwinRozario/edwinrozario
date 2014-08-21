RailsBootstrap::Application.routes.draw do
  root :to => 'home#new'

  resources :home do
    collection do
      get :new
      get :about
      get :work
      get :contact
      get :status
      post :mail
    end
  end

  resources :blog

end
