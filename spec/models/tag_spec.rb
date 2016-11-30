require 'rails_helper'

describe Movie do
	it "has a valid factory" do
	 expect(FactoryGirl.create(:tag)).to be_valid
	end

	describe "user_id" do
		it "is invalid without a user_id" do
		 expect(FactoryGirl.build(:tag, user_id: nil)).not_to be_valid
		end
		it "is invalid when user_id is not an integer" do
		 expect(FactoryGirl.build(:tag, user_id: "foo")).not_to be_valid
		end
	end

	describe "label" do
		it "is invalid when empty" do
			expect(FactoryGirl.build(:tag, label: nil )).not_to be_valid
	  end
		it "is invalid when less than 2 characers" do
			expect(FactoryGirl.build(:tag, label: "f" )).not_to be_valid
	  end
	end
end
