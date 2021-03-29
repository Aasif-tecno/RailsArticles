class RemoveColumnFromCategory < ActiveRecord::Migration[6.1]
  def change
    remove_reference :categories, :articles, null: false, foreign_key: true
  end
end
