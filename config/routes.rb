RailsBootstrap::Application.routes.draw do
  root :to => 'home#new'

  resources :home do
    collection do
      get :new
      get :about
      get :work
      get :contact
      post :mail
    end
  end

end
