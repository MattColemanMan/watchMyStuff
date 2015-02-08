class AddWatcherNameToWatches < ActiveRecord::Migration
  def change
    add_column :watches, :watcher_name, :string
    add_column :watches, :user_name, :string
  end
end
