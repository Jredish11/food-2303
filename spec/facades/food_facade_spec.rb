require 'rails_helper'

RSpec.describe FoodFacade do
  describe 'instance methods' do
    it "returns Food based on search query" do
      food = "sweet potatoes"
      FoodFacade.new.food_search(food)
      
    end
  end
end