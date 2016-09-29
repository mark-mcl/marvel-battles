client = Marvelite::API::Client.new( :public_key => ENV["MARVEL_PUBLIC_KEY"], :private_key => ENV["MARVEL_PRIVATE_KEY"] )

get '/' do
@character_list = client.characters(:limit => 100, :offset => 700)
@character_list_2 = client.characters(:limit => 100, :offset => 800)
@character_list_3 = client.characters(:limit => 100, :offset => 900)
@character_list_4 = client.characters(:limit => 100, :offset => 1000)
@character_list_5 = client.characters(:limit => 100, :offset => 1100)
@character_list_6 = client.characters(:limit => 100, :offset => 1200)
@character_list_7 = client.characters(:limit => 100, :offset => 1300)
@character_list_8 = client.characters(:limit => 100, :offset => 1400)
@character_list_9 = client.characters(:limit => 100, :offset => 1500)
erb :'/index'
end
