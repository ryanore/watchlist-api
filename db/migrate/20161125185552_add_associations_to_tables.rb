class AddAssociationsToTables < ActiveRecord::Migration[5.0]
	def change
		add_column :lists, :user_id, :integer
		add_column :movies, :user_id, :integer
		add_column :movies, :list_id, :integer

		add_index :lists, :user_id
		add_index :movies, :list_id
		add_index :movies, :user_id
	end
end
