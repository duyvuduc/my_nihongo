class AddBookIdToLessons < ActiveRecord::Migration[6.1]
  def change
    add_reference :lessons, :book
  end
end
