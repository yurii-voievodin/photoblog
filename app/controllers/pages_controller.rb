class PagesController < ApplicationController
  def index
  end

  def page_01_08_2022
    photos_json = File.read("data/01_08_2021.json")
    @photos = JSON.parse(photos_json)['photos']
  end
end
