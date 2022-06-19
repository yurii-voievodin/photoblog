class PagesController < ApplicationController

  def index
  end

  def page_01_08_2021
    load_and_render("01_08_2021")
  end

  def page_02_08_2021
    load_and_render("02_08_2021")
  end

  def page_05_08_2021
    load_and_render("05_08_2021")
  end

  def page_10_10_2021
    load_and_render("10_10_2021")
  end

  private 

  def load_json_with_name(json_name)
    photos_json = File.read("data/#{json_name}.json")
    @photos = JSON.parse(photos_json)['photos']
  end

  def load_and_render(json_name)
    load_json_with_name(json_name)
    render "pages/photos_page"
  end
  
end
