CchanningallenDotCom::Application.routes.draw do

  devise_for :users
  get "mymusiclive" => "my_music_live#index"
  root 'welcome#index'

  scope "api" do
    scope "v1" do
      resources :artists do
        
      end
    end
  end

  get 'crossfit' => 'crossfit_master#index'

end
