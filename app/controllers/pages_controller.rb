class PagesController < ApplicationController
  def index
  end

  def page_01_08_2022
    photos_json = File.read("data/01_08_2021.json")
    @photos = JSON.parse(photos_json)['photos']
  end

  def page_02_08_2022
    photos_json = File.read("data/02_08_2021.json")
    @photos = JSON.parse(photos_json)['photos']
    render "pages/photos_page"
  end

  def page_05_08_2022
    photos_json = File.read("data/05_08_2021.json")
    @photos = JSON.parse(photos_json)['photos']
    render "pages/photos_page"
  end
end
