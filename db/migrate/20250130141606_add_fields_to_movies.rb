class AddFieldsToMovies < ActiveRecord::Migration[8.0]
  def change
    add_column :movies, :description, :text
    add_column :movies, :released_on, :date
  end
end
