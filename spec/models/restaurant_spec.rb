require 'rails_helper'

describe Restaurant do
  let(:restaurant) { Restaurant.new(name: "Momofuku") }

  subject { restaurant }

  it { should respond_to :name }
  it { should be_valid }

  describe "when name is not present" do
    before { restaurant.name = '' }

    it "should not be valid" do
      expect(subject).not_to be_valid
    end
  end

  describe "when name is already taken" do
    before do
      restaurant.save
      @other_restaurant = restaurant.dup
      @other_restaurant.name.upcase!
    end

    it "should not be valid" do
      expect(@other_restaurant).not_to be_valid
    end
  end
end
