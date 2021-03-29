class AddArticlesIdToCategory < ActiveRecord::Migration[6.1]
  def change
    add_column :categories, :article_id, :integer
  end
end
