require 'rails_helper'

describe Movie do
	it "has a valid factory" do
	 expect(FactoryGirl.create(:user)).to be_valid
	end

	describe "first_name" do
		it "is invalid when empty" do
		 expect(FactoryGirl.build(:user, first_name: nil)).not_to be_valid
		end

		it "is invalid with less than 2 characters" do
		 expect(FactoryGirl.build(:user, first_name: 'f')).not_to be_valid
		end
	end

	describe "last_name" do
		it "is invalid when empty" do
		 expect(FactoryGirl.build(:user, last_name: nil)).not_to be_valid
		end

		it "is invalid with less than 2 characters" do
		 expect(FactoryGirl.build(:user, last_name: 'f')).not_to be_valid
		end
	end

	describe "email" do
		it "is invalid when empty" do
		 expect(FactoryGirl.build(:user, email: nil)).not_to be_valid
		end

		it "is invalid with an invalid email" do
		 expect(FactoryGirl.build(:user, email: 'f')).not_to be_valid
		end

		it "is valid with a valid email" do
		 expect(FactoryGirl.build(:user, email: 'foo@foo.com')).to be_valid
		end
	end

end
