require 'rails_helper'
describe Movie do
	it "has a valid factory" do
	 expect(FactoryGirl.create(:movie)).to be_valid
	end

	it "is invalid without a user_id" do
	 expect(FactoryGirl.build(:movie, user_id: nil)).not_to be_valid
	end

  it "is invalid without data" do
		expect(FactoryGirl.build(:movie, data: nil )).not_to be_valid
  end
end
