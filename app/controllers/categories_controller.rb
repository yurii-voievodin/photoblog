class CategoriesController < ApplicationController
  def show
  end

  def family
    load_json_with_name('family')
    @collection_name = 'family'
    @title = "Сімейні фотосесії"
    render "collections/show"
  end

  def individual
    load_json_with_name('individual')
    @collection_name = 'individual'
    @title = "Індивідуальні фотосесіЇ"
    render "collections/show"
  end

  def wedding
    load_json_with_name('wedding')
    @collection_name = 'wedding'
    @title = "Весільні"
    render "collections/show"
  end

  def love_story
    load_json_with_name('love_story')
    @collection_name = 'love_story'
    @title = "Історії кохання"
    render "collections/show"
  end


  def load_json_with_name(json_name)
    photos_json = File.read("data/#{json_name}.json")
    @photos = JSON.parse(photos_json)['photos']
  end

end
