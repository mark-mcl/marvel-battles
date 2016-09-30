post '/votes' do
  @vote = Vote.create(winner_id: params[:winner_id], loser_id: params[:loser_id])
  if request.xhr?
  	character_1 = Character.find(rand(1..72))
  	character_2 = character_1
    until character_2 != character_1
      character_2 = Character.find(rand(1..72))
    end
  	content_type :json
  	{character_1: (erb :'/characters/_show', layout: false, locals: {character: character_1, other_character: character_2}),
  		character_2: (erb :'/characters/_show', layout: false, locals: {character: character_2, other_character: character_1})}.to_json
  else
  	redirect '/'
  end
end

get '/votes/index' do
  client = Marvelite::API::Client.new( :public_key => ENV["MARVEL_PUBLIC_KEY"], :private_key => ENV["MARVEL_PRIVATE_KEY"] )
  @all_chars = Character.rank_characters
  erb :'/votes/index'
end
