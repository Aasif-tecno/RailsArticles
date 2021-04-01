class RemoveColumnFromCategory < ActiveRecord::Migration[6.1]
  def change
    remove_reference :categories, :articles
  end
end
