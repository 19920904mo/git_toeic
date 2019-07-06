Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'tops#index'
  get   'tops'  =>  'tops#index' 
  get   'questions/index'  =>  'questions#index'   #質問一覧画面
  get   'questions/new'  =>  'questions#new'       #質問投稿画面
  post  'questions'      =>  'questions#create'    #質問投稿機能
  get   'users/:id'   =>  'users#show'    #Mypageへのルーティング
  get   'users/:question_id/show'   =>  'answers#show'    #Mypageへのルーティング
  get 'introductions' => 'introductions#index'
  get 'inquiries' => 'inquiries#index'
  get 'part1s'  =>  'part1s#index'
  get 'part2s'  =>  'part2s#index'
  get 'part3and4s'  =>  'part3and4s#index'
  get 'grammars' => 'grammars#index'
  get   'answers/index'  =>  'answers#index'
  get 'answers' => 'answers#new'
  get   'answers/:question_id/new' => 'answers#new' #解説投稿画面
  get 'answers/:question_id/show' => 'answers#show'
  post  'answers'      =>  'answers#create'    #解説投稿機能
  
end
