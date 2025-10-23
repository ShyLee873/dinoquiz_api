Rails.application.routes.draw do
  # Health check (200 when the app boots without exceptions)
  get "up" => "rails/health#show", as: :rails_health_check

  # JSON API for BrainBash
  namespace :api do
    namespace :v1 do
      resources :questions, only: [:index, :create] do
        collection { get :random }   # /api/v1/questions/random
      end
    end
  end

  # Optional: make / redirect to the health check (handy for local dev)
  # root to: redirect("/up")
end