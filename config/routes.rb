Rails.application.routes.draw do
  devise_for :users
  get 'comments/create'
  get 'comments/destroy'

    root 'posts#index'
    # onlyを削除
    resources :posts
    resources :comments, only: %i[create destroy]

  if Rails.env.development?
    mount LetterOpenerWeb::Engine, at: '/letter_opener'
  end
end
