Rails.application.routes.draw do
  crud = %i(index show create update destroy)

  namespace :v1, defaults: { format: :json }  do
    resources :projects, only: crud
    resources :tasks, only: [:show]

    namespace :projects do
      resources :tasks, only: [:index, :create]
    end
  end
end
