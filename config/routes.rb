ListaCompras::Application.routes.draw do |map|
  resources :lists

  map.root :controller=>'lista', :action=>'index'
  match ':controller(/:action(/:id))'
end
