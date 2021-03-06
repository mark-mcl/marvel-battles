id_list = [1009378, 1009191, 1010925, 1009318, 1017329, 1010338, 1010802, 1010801, 1009175, 1009508, 1009351, 1017333, 1009156, 1009187, 1009189, 1009220, 1017295, 1009257, 1009262, 1009268, 1017316, 1009281, 1009276, 1009288, 1009229, 1009313, 1014985, 1010743, 1009356, 1009362, 1009366, 1009368, 1009382, 1009389, 1009391, 1009407, 1009417, 1009448, 1017577, 1009459, 1009465, 1009471, 1009466, 1009472, 1009479, 1011321, 1009494, 1011388, 1010779, 1009504, 1009515, 1010334, 1009537, 1009546, 1010744, 1009554, 1017111, 1009586, 1009592, 1009610, 1011347, 1010733, 1009629, 1009652, 1010359, 1009662, 1009664, 1009673, 1009685, 1009663, 1009718, 1017297]


Dotenv.load
client = Marvelite::API::Client.new( :public_key => ENV["MARVEL_PUBLIC_KEY"], :private_key => ENV["MARVEL_PRIVATE_KEY"] )

id_list.each do |char_id|
  Character.create(name: client.character(char_id)[:data][:results][0][:name], image_url: client.character(char_id)[:data][:results][0][:thumbnail][:path] +"."+ client.character(char_id)[:data][:results][0][:thumbnail][:extension],description: client.character(char_id)[:data][:results][0][:description])
end

1000.times{Vote.create(winner_id: rand(1..72), loser_id: rand(1..72))}
