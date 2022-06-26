class ArticlesController < ApplicationController
  def index
    json = File.read("data/collections.json")
    @pages = JSON.parse(json)['collections']

    p @pages
  end

  def prices
  end

  def reviews
  end

  def contacts
  end
end
