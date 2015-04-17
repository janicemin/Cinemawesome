class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.integer :rating
      t.string :content
      t.belongs_to :favorite
      t.belongs_to :user

      t.timestamps null: false
    end
  end
end
