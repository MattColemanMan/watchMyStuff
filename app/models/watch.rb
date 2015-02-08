class Watch < ActiveRecord::Base
	belongs_to :user
	after_save { if !self.watcher_id 
					self.update_column(:status, "Unfulfilled Watch")
				 elsif self.watcher_id and !self.start_time
				 	self.update_column(:status, "Accepted Watch")
				 elsif self.start_time and !self.end_time
				 	self.update_column(:status, "In-progress Watch")
				 else
				 	self.update_column(:status, "Finished Watch")
				 end
			   }
end
