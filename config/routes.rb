Rails.application.routes.draw do
    root 'posts#index'
    # onlyを削除
    resources :posts
end
