class AddDifferenceSecondsToTasks < ActiveRecord::Migration[7.0]
  def change
    add_column :tasks, :difference_seconds, :integer, default: 0
  end
end
