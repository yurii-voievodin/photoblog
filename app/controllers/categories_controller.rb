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
    @albums = [
      { name: "10_03_2021", first_photo: "15.jpg" },
      { name: "07_11_2021", first_photo: "1.jpg" },
      { name: "16_05_2021", first_photo: "1.jpg" },
      { name: "26_02_2021", first_photo: "3.jpg" },
      { name: "31_10_2021", first_photo: "15.jpg" },
      { name: "23_01_2021", first_photo: "12.jpg" },
      { name: "11_08_2021", first_photo: "16.jpg" },
      { name: "11_07_2021", first_photo: "14.jpg" }
    ]
    @title = "Індивідуальні фотосесіЇ"
    render "layouts/albums"
  end

  def wedding
    @albums = [
      { name: "05_08_2021", first_photo: "1.jpg" },
      { name: "10_10_2021", first_photo: "4.jpg" },
      { name: "28_11_2021", first_photo: "1.jpg" }
    ]
    @title = "Весільні"
    render "layouts/albums"
  end

  def love_story
    @albums = [
      { name: "22_04_2021", first_photo: "1.jpg" },
      { name: "09_08_2021", first_photo: "3.jpg" }
    ]
    @title = "Історії кохання"
    render "layouts/albums"
  end


  def load_json_with_name(json_name)
    photos_json = File.read("data/#{json_name}.json")
    @photos = JSON.parse(photos_json)['photos']
  end

end
