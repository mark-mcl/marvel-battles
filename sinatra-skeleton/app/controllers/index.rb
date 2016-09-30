get '/' do
      
    @char1 = Character.find(rand(1..72))

    @char2 = @char1
    until @char2 != @char1 do
      @char2 = Character.find(rand(1..72))
    end
  erb :'/index'
end

