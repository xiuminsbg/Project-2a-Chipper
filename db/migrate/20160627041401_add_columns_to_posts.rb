class AddColumnsToPosts < ActiveRecord::Migration[5.0]
  def change
    add_column :posts, :title, :string
    add_reference :posts, :user, foreign_key: true
    rename_column :posts, :comment, :body
  end
end
