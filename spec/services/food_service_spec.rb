require 'rails_helper'

describe FoodService do
  describe 'instance methods' do
    describe '#food_search(food)' do
      it 'returns list of foods based on search query' do
        food = "sweet potatoes"
        foods = FoodService.new.food_search(food)

        require 'pry'; binding.pry
      end
    end
  end
end