require 'rspec'
require 'dessert'

=begin
Instructions: implement all of the pending specs (the `it` statements without blocks)! Be sure to look over the solutions when you're done.
=end

describe Dessert do
  let(:cake) {Dessert.new('cake', 100, chef)}
  let(:chef) { double("chef") }
  

  describe "#initialize" do
    it "sets a type" do 
      expect(cake.type).to eq('cake')
    end

    it "sets a quantity" do 
      expect(cake.quantity).to eq(100)
    end

    it "starts ingredients as an empty array" do 
      expect(cake.ingredients).to be_empty
    end

    it "raises an argument error when given a non-integer quantity" do 
      expect{Dessert.new("pudding", "tons", chef)}.to raise_error(ArgumentError)
    end

  end

  describe "#add_ingredient" do
    it "adds an ingredient to the ingredients array" do
      cake.add_ingredient("eggs")
      expect(cake.ingredients).to include("eggs")

    end
  end

  describe "#mix!" do
    it "shuffles the ingredient array" do 
      ingredients = ["chocolate", "flour", "egg", "sugar", "butter"]

      ingredients.each do |ingredient|
        cake.add_ingredient(ingredient)
      end

      expect(cake.ingredients).to eq(ingredients)
      cake.mix!
      expect(cake.ingredients).not_to eq(ingredients)
      expect(cake.ingredients.sort).to eq(ingredients.sort)
    end 
  end

  describe "#eat" do
    it "subtracts an amount from the quantity"

    it "raises an error if the amount is greater than the quantity"
  end

  describe "#serve" do
    it "contains the titleized version of the chef's name"
  end

  describe "#make_more" do
    it "calls bake on the dessert's chef with the dessert passed in"
  end
end
