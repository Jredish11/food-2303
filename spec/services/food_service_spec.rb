require 'rails_helper'

describe FoodService do
  describe 'instance methods' do
    describe '#food_search(food)' do
      it 'returns list of foods based on search query' do
        food = "sweet potatoes"
        foods = FoodService.new.food_search(food)
        
        foods[:foods].each do |food|
          expect(food).to have_key(:gtinUpc)
          expect(food[:gtinUpc]).to be_a(String)
          
          expect(food).to have_key(:description)
          expect(food[:description]).to be_a(String)
          
          expect(food).to have_key(:brandOwner)
          expect(food[:brandOwner]).to be_a(String)
          
          expect(food).to have_key(:ingredients)
          expect(food[:ingredients]).to be_a(String)
        end
      end
    end
  end
end