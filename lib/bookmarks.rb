require 'pg'
require 'multiple_rows'

class Bookmarks

# begin
#
# 	con = PG.connect :dbname => 'bookmark_manager', :user => 'maxstrivens'
# 	rs = con.exec "SELECT * FROM bookmarks"

	def self.all
		connect = PG.connect :dbname => 'bookmark_manager', :user => 'loureade'

		result = connect.exec "SELECT * FROM bookmarks"

		result.map { |bookmark| bookmark['url'] }
	end
end
