class CreateWatches < ActiveRecord::Migration
  def change
    create_table :watches do |t|
      t.integer :user_id
      t.integer :watcher_id
      t.decimal :lat
      t.decimal :lng
      t.string :location_description
      t.string :location_picture
      t.integer :requested_minutes
      t.datetime :start_time
      t.datetime :end_time
      t.boolean :watcher_ready
      t.string :status

      t.timestamps
    end
  end
end
