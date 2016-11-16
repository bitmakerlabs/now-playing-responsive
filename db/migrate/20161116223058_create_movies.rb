class CreateMovies < ActiveRecord::Migration[5.0]
  def change
    create_table :movies do |t|
      t.string :title
      t.text :overview
      t.date :release_date
      t.integer :tmdb_id
      t.string :backdrop_path
      t.string :poster_path

      t.timestamps
    end
  end
end
