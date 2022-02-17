Rails.application.routes.draw do
  get 'bookmarks/new'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :lists do
    resources :bookmarks, only: [:new, :create]
  end

  resources :bookmarks, only: [:destroy]
end

# Prefix Verb   URI Pattern                                                                      Controller#Action
# lists GET    /lists(.:format)                                                           lists#index
#       POST   /lists(.:format)                                                              lists#create
# new_list GET    /lists/new(.:format)                                                            lists#new
# edit_list GET    /lists/:id/edit(.:format)                                                  lists#edit
#  list GET    /lists/:id(.:format)                                                                 lists#show
#       PATCH  /lists/:id(.:format)                                                            lists#update
#       PUT    /lists/:id(.:format)                                                               lists#update
#       DELETE /lists/:id(.:format)                                                      lists#destroy


# list_bookmarks POST   /lists/:list_id/bookmarks(.:format)                                                               bookmarks#create
# new_list_bookmark GET    /lists/:list_id/bookmarks/new(.:format)                                                              bookmarks#show
