Rails.application.routes.draw do
  root 'site#index'
  # You may wish to organize groups of controllers under a namespace. Most commonly, you might
  # group a number of administrative controllers under an Admin:: namespace. You would place these
  # controllers under the app/controllers/admin directory, and you can group them together
  # in your router:
  namespace :api do
    resources :events, only: %i[index show create destroy update]
  end
end
