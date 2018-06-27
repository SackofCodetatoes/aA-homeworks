require 'rspec'
require 'dessert'

=begin
Instructions: implement all of the pending specs (the `it` statements without blocks)! Be sure to look over the solutions when you're done.
=end
describe Dessert do
  let(:chef) { double("chef", name: "boyRdee") }
  let(:brownie) { Dessert.new("brownie", 300, chef) }


  describe "#initialize" do
    it "sets a type" do
      expect(brownie.type).to eq("brownie")
    end
    it "sets a quantity" do
      expect(brownie.quantity).to eq(300)
    end

    it "starts ingredients as an empty array" do
      expect(brownie.ingredients).to eq([])
    end

    it "raises an argument error when given a non-integer quantity" do
      expect{Dessert.new("brownie", "300", chef)}.to raise_error(ArgumentError)
    end
  end

  describe "#add_ingredient" do
    it "adds an ingredient to the ingredients array" do
      expect(brownie.add_ingredient("1 Bag of Sugar")).to eq(["1 Bag of Sugar"])
    end


  end

  describe "#mix!" do
    it "shuffles the ingredient array" do
      special_ingredients = ["1 Canister of Flour","Heaping Helpin Hecka Eggs","Keg of Stout","Technically Love"]
      brownie.add_ingredient("1 Canister of Flour")
      brownie.add_ingredient("Heaping Helpin Hecka Eggs")
      brownie.add_ingredient("Keg of Stout")
      brownie.add_ingredient("Technically Love")
      expect(brownie.mix!).not_to eq(special_ingredients)
    end
  end

  describe "#eat" do
    it "subtracts an amount from the quantity" do
      expect(brownie.eat(15)).to eq(285)
    end

    it "raises an error if the amount is greater than the quantity" do
      expect{brownie.eat(9001)}.to raise_error("not enough left!")
    end
  end

  describe "#serve" do
    it "contains the titleized version of the chef's name" do
      # allow(chef).to receive(:titleize).and_return("boyRdee the Great Baker")
      expect(brownie.serve).to eq("boyRdee the Great Baker has made 300 brownies!")
    end
  end

  describe "#make_more" do
    it "calls bake on the dessert's chef with the dessert passed in"

  end
end
