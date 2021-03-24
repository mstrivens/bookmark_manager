require 'pg'

class Bookmarks

# begin
#
# 	con = PG.connect :dbname => 'bookmark_manager', :user => 'maxstrivens'
# 	rs = con.exec "SELECT * FROM bookmarks"

	def self.all
		if ENV['ENVIRONMENT'] == 'test'
			connect = PG.connect :dbname => 'bookmark_manager_test'
		else
			connect = PG.connect :dbname => 'bookmark_manager'
		end

		result = connect.exec "SELECT * FROM bookmarks"
		result.map {|bookmark| "#{bookmark['url']}"}
		
	end

	def self.add(url, title)
		if ENV['ENVIRONMENT'] == 'test'
			connection = PG.connect(dbname: 'bookmark_manager_test')
		else
			connection = PG.connect :dbname => 'bookmark_manager'
		end

		connection.exec("INSERT INTO bookmarks (url, title) VALUES('#{url}', '#{title}');")

	end
end
