require 'rails_helper'

RSpec.describe FoodFacade do
  describe 'instance methods' do
    describe '#food_search(food)' do
      it "returns Food based on search query" do
        food = "sweet potatoes"
        foods = FoodFacade.new.food_search(food)
        
        fud = foods.first

        expect(fud.brand).to eq("N&W Farm Produce Inc.")
        expect(fud.code).to eq("882495000013")
        expect(fud.description).to eq("SWEET POTATOES")
        expect(fud.ingredients).to eq("")
      end
    end

    it "fetches food based on foods fdcID" do
      id = "1662504"
      list = FoodFacade.new.fetch_food(id)
    end
  end
end