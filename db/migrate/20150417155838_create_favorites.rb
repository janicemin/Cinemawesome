class CreateFavorites < ActiveRecord::Migration
  def change
    create_table :favorites do |t|
      t.string :imdbid
      t.belongs_to :user

      t.timestamps null: false
    end
  end
end
