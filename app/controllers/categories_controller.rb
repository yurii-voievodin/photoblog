class CategoriesController < ApplicationController
  def show
  end

  def family
    @albums = [
      { name: "01_08_2021", first_photo: "01_08_2021/1.jpg" },
      { name: "02_08_2021", first_photo: "02_08_2021/4.jpg" },
      { name: "13_07_2021", first_photo: "13_07_2021/1.jpg" },
      { name: "18_06_2021", first_photo: "18_06_2021/1.jpg" }
    ]
    @title = "Сімейні фотосесії"
    render "layouts/albums"
  end

  def individual
    @albums = [
      { name: "10_03_2021", first_photo: "10_03_2021/15.jpg" }
    ]
    @title = "Індивідуальні фотосесіЇ"
    render "layouts/albums"
  end

  def wedding
    @albums = [
      { name: "05_08_2021", first_photo: "05_08_2021/1.jpg" },
      { name: "10_10_2021", first_photo: "10_10_2021/4.jpg" },
      { name: "28_11_2021", first_photo: "28_11_2021/1.jpg" }
    ]
    @title = "Весільні"
    render "layouts/albums"
  end

  def love_story
    @albums = [
      { name: "22_04_2021", first_photo: "22_04_2021/1.jpg" },
      { name: "15_05_2021", first_photo: "15_05_2021/6.jpg" }
    ]
    @title = "Історії кохання"
    render "layouts/albums"
  end

end
