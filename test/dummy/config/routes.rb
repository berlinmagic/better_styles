Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  
  root 'pages#start'
  
  get 'stylez' => 'pages#start'
  
  PagesController::TEMPLATES.each do |tmpl|
    get "#{tmpl}" => 'pages#templates', template: tmpl
  end
  # get 'templates/:template' => 'front#templates'
  # get 'templates' => 'front#templates'
  
  get "cache_pages" => 'pages#cache'
  
  
end
