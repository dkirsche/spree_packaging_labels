Spree::Core::Engine.routes.draw do
	namespace :admin do
  		get "/labels" => "labels#index"
  	end
end
