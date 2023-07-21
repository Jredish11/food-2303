class FoodFacade
  def food_search(food)
    food_data = FoodService.new.food_search(food)
    food_data[:foods].map { |f| Food.new(f)}
  end

  def fetch_food(id)
  end
end