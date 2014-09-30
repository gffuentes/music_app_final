class Song < ActiveRecord::Base
	belongs_to :user
	belongs_to :room
	
	def soundcloud_con
		SoundCloud.new(:client_id => 'f2cb220830abaabfbef34f5d2b0f252d')
	end
	def tg_save
		tracks = self.soundcloud_con.get('/tracks', :q => self.URL).first
		if tracks.nil?
			puts "id #{self.id} not available"
			self.save
		else
			self.title = tracks.title
			self.genre = tracks.genre
			self.username = tracks.user.username
			self.save
			puts "id #{self.id} success!"
		end
	end
end
