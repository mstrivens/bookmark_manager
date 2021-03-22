# bookmark_manager

As a user
So that I can choose a website
I would like to see a list of bookmarks

| class     | instances | methods  |
|-----------|-----------|----------|
| user      | @username |          |
| bookmarks | @website  | list     |
|           |           |          |


Bookmark.rb
	class Bookmarks
		def initalize
			@bookmarks = []
		end
	end
end


app.rb 
	@bookmarks.all? { |bookmark| bookmark == link }