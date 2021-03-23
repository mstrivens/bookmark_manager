def clear_and_pop_db
  connection = PG.connect(dbname: 'bookmark_manager_test')

 connection.exec("INSERT INTO bookmarks (url) VALUES ('http://www.makersacademy.com');")
 connection.exec("INSERT INTO bookmarks (url) VALUES('http://www.destroyallsoftware.com');")
 connection.exec("INSERT INTO bookmarks (url) VALUES('http://www.google.com');")

 visit '/bookmarks'

 expect(page).to have_content("http://www.makersacademy.com")
 expect(page).to have_content("http://www.destroyallsoftware.com")
 expect(page).to have_content("http://www.google.com")
end

# Used this to kee feature test DRY. Maybe bteer way to do
# it keeping expect in features
