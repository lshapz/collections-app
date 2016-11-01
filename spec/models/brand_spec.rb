require 'byebug'
require 'rails_helper'

RSpec.describe Brand, :type => :model do


  describe "#decks" do
    it "can identify the decks associated with itself" do
      do_things
      expect(@marc_poke.decks).to include(@deck)
    end
  end

  # describe "#uniquer_category?" do
  #   it "will not accept an existing name for a new brand" do
  #     do_things
  #     current_user = @marc
  #     current_owner = @marc_coll
  #     brand = Brand.new(category: "Pokemon", owner_id: @marc_coll.id, api_name: "Pokemon")
  #     byebug
  #     expect(current_user.owner.brands.pluck(:category).include?(brand.category)).to be true
  #   end
  # end


  # describe "#unique_category?" do
  #   it "will not accept an existing name for a brand upon updating brand name" do
  #     do_things
  #     current_user = @marc
  #     current_owner = @marc_coll
  #     brand = Brand.create(category: "Pokemon 2", owner_id: @marc_coll.id, api_name: "Pokemon")
  #     byebug
  #     expect(current_user.owner.brands.pluck(:category).include?(brand.category)).to be true
  #   end
  # end

  

  describe "#most_used_card" do
    it "can return the card that appears in the most decks of the brand" do
      do_things
      expect(@marc_poke.most_used_card.name).to eq("Charmander")
    end
  end
end
