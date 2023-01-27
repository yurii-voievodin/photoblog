class CategoriesController < ApplicationController
  def show
  end

  def family
    @albums = [
      { name: "01_08_2021", first_photo: "1.jpg" },
      { name: "02_08_2021", first_photo: "4.jpg" },
      { name: "13_07_2021", first_photo: "1.jpg" },
      { name: "18_06_2021", first_photo: "1.jpg" },
      { name: "21_10_2021", first_photo: "2.jpg" },
      { name: "30_01_2021", first_photo: "2.jpg" }
    ]
    @title = "Сімейні фотосесії"
    render "layouts/albums"
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

end
