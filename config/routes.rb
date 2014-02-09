CchanningallenDotCom::Application.routes.draw do

  get "mymusiclive" => "my_music_live#index"
  root 'welcome#index'

  scope "api" do
    scope "v1" do
      resources :artists
    end
  end

  get 'crossfit' => 'crossfit_master#index'

end
