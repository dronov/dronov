Dronov::Application.routes.draw do
  scope module: 'web' do
    root to: "welcome#index"

    namespace :admin do
      resources :posts
      root to: "welcome#index"
    end
    resource :session, only: [:new, :destroy, :create]
    resource :welcome, only: [:index]
  end
end
