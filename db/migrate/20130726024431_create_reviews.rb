class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.integer :reviewer_id
      t.integer :reviewed_user_id
      t.text :review_text

      t.timestamps
    end
  end
end
