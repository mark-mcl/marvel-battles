helpers do
  def image_path(hero)
    hero[:data][:results][0][:thumbnail][:path] +"."+ hero[:data][:results][0][:thumbnail][:extension]
  end
end
