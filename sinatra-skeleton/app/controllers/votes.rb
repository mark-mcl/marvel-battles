post '/votes' do
  @character = Character.find_by(char_id: params[:winner_id])
  @vote = Vote.create(winner_id: params[:winner_id])
  redirect back
end

get '/votes/index' do

  client = Marvelite::API::Client.new( :public_key => ENV["MARVEL_PUBLIC_KEY"], :private_key => ENV["MARVEL_PRIVATE_KEY"] )

  db_ranked_characters = Character.rank_characters
  @ranked_characters = []
  db_ranked_characters.each do |char|
    @ranked_characters << client.character(char.char_id)[:data][:results][0][:name]
  end

  # for each ranked_character
  # hit the api
  # get the data for one character
  # slap into some array

  erb :'/votes/index'
end






# memcached - idea
# dalli - gem
