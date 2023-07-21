require 'rails_helper'

RSpec.describe FoodFacade do
  describe 'instance methods' do
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
end