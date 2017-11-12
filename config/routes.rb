BabyShower::Application.routes.draw do
  resources :attendees do
    get :notify, on: :member
    get :attending, on: :member
    get :attending_doubt, on: :member
    get :not_attending, on: :member
  end

  get :error, to: 'application#error'

  root to: 'application#index'
end
