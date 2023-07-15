class CreateTasks < ActiveRecord::Migration[7.0]
  def change
    create_table :tasks do |t|
      t.string :name
      t.text :description
      t.datetime :start_time
      t.datetime :stop_time
      t.integer :status, default: 0
      
      t.references :project, null: false, foreign_key: true

      t.timestamps
    end
  end
end
