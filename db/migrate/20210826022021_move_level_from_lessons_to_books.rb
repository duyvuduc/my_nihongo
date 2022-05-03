class MoveLevelFromLessonsToBooks < ActiveRecord::Migration[6.1]
  def change
    remove_column :lessons, :level
    add_column :books, :level, :integer
  end
end
