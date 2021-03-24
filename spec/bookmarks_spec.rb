require 'bookmarks.rb'

describe Bookmarks do
	describe '.all' do
		it 'returns all bookmarks' do
			connection = PG.connect(dbname: 'bookmark_manager_test')

			Bookmarks.add('http://www.makersacademy.com')
    	    Bookmarks.add('http://www.destroyallsoftware.com')
    	    Bookmarks.add('http://www.google.com')

			bookmarks = Bookmarks.all

			expect(bookmarks).to include("http://www.makersacademy.com")
			expect(bookmarks).to include("http://www.destroyallsoftware.com")
			expect(bookmarks).to include("http://www.google.com")
		end
	end

	describe '#add' do
		it 'add new bookmark to database'  do
			connection = PG.connect(dbname: 'bookmark_manager_test')		
			Bookmarks.add("http://www.makersacademy.com")
			bookmarks = Bookmarks.all
			expect(bookmarks).to include("http://www.makersacademy.com")		
		end
	end
end
