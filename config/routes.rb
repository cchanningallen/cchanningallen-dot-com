CchanningallenDotCom::Application.routes.draw do

  get "mymusiclive" => "my_music_live#index"
  root 'welcome#index'

  get 'crossfit' => 'crossfit_master#index'

end
