FactoryGirl.define do
  factory :movie do
		user_id 1
		tags [1]
		data {{
			id:"12345", title: 'Foobar'
		}}
  end
end
