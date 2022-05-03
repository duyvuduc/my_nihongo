class RemoveLessons < ActiveRecord::Migration[6.1]
  def change
    remove_column :lessons, :content, :text
    remove_column :lessons, :category, :string
  end
end
