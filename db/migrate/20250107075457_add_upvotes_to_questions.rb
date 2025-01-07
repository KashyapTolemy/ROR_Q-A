class AddUpvotesToQuestions < ActiveRecord::Migration[8.0]
  def change
    add_column :questions, :upvotes, :integer
  end
end
