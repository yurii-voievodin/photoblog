class CollectionsController < ApplicationController
  def show
    id = params[:id]
    load_json_with_name(id)
    @collection_name = id
  end

  private 

  def load_json_with_name(json_name)
    photos_json = File.read("data/#{json_name}.json")
    @photos = JSON.parse(photos_json)['photos']
  end

end
