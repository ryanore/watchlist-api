FactoryGirl.define do
  factory :user do
    first_name "Homer"
		last_name "Simpson"
		email "homer@simpson.com"
		password "12345"
		role "admin"
  end
end
