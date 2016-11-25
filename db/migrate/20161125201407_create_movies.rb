class CreateMovies < ActiveRecord::Migration[5.0]
  def change
    create_table :movies do |t|
			t.jsonb :data
			t.references :list, foreign_key: true
			t.references :user, foreign_key: true
      t.timestamps
    end
  end
end
