post '/votes' do
  @vote = Vote.create(winner_id: params[:winner_id], loser_id: params[:loser_id])
  redirect '/'
end

get '/votes/index' do
  client = Marvelite::API::Client.new( :public_key => ENV["MARVEL_PUBLIC_KEY"], :private_key => ENV["MARVEL_PRIVATE_KEY"] )
  @all_chars = Character.rank_characters
  erb :'/votes/index'
end
