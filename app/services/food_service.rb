class FoodService
  def conn
    Faraday.new(url: "https://api.nal.usda.gov/fdc/v1") do |faraday|
      faraday.params["api_key"] = ENV["food_key"]
    end
  end

  def get_url(url)
    response = conn.get(url)
    JSON.parse(response.body, symbolize_names: true)
  end

  def food_search(food)
    get_url("foods/search?query=#{food}&dataType=&pageSize=10&pageNumber=2&sortBy=dataType.keyword&sortOrder=asc")
  end
end