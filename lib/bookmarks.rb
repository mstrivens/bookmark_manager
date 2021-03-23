require 'pg'

class Bookmarks

# begin
#
# 	con = PG.connect :dbname => 'bookmark_manager', :user => 'maxstrivens'
# 	rs = con.exec "SELECT * FROM bookmarks"

	def self.all

		if ENV['CONNECT'] == 'test'
			PG.connect :dbname => 'bookmark_manager_test', :user => 'loureade'

		else

		connect = PG.connect :dbname => 'bookmark_manager', :user => 'loureade'
	end
		result = connect.exec "SELECT * FROM bookmarks"

		result.map {|bookmark| "#{bookmark['url']}"}

	end
end
