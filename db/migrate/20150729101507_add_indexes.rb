class AddIndexes < ActiveRecord::Migration
  def change
    add_index :articles, :author_id
    add_index :comments, :article_id

  end
end
