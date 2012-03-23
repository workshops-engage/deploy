Ruby19OO::Application.routes.draw do
  root to: "slides#index"
  match ':controller(/:action(/:id))'
end