require 'bookmarks.rb'

describe Bookmarks do
	describe '.all' do
		it 'returns all bookmarks' do
			bookmarks = Bookmarks.all

			expect(bookmarks).to include("http://www.makersacademy.com")
		end
	end
end
