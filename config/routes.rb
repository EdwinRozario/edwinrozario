Edwinrozario::Application.routes.draw do
  root :to => 'home#cover'

  resources :home do
    collection do
      get :cover
      get :likes
      get :contact
    end
  end

  resources :work do
    collection do
      get :employment
      get :others
    end
  end

end
