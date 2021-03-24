# bookmark_manager

As a user
So that I can choose a website
I would like to see a list of bookmarks

| class     | instances | methods  |
|-----------|-----------|----------|
| user      | @username |          |
| bookmarks | @website  | list     |
|           |           |          |

As a user
So that I can add a new website
I would like to add a bookmark

| class     | responsibilities | colabs   |
|-----------|------------------|----------|
|           |                  |          |
| bookmarks | add-bookmark     |          |
|           |                  |          |

- post request to app
- app adds new bookmark to database
- database return updated table
- app reuqests feedback from views
- views send updated list/message

### To set up the database
Connect to psql
Create the database using the psql command CREATE DATABASE bookmark_manager;
Connect to the database using the pqsl command \c bookmark_manager;
Run the query we have saved in the file 01_create_bookmarks_table.sql

# Setting up test database

Connect to psql
Create the database using the psql command
CREATE DATABASE bookmark_manager_test;
Connect to the database using the pqsl command
\c bookmark_manager_test;
Run the query we have saved in the file 01_create_bookmarks_table.sql

**Using TablePlus as GUI to manage databases**

## Current project status

- RSpec tests all passing
- Using test database to clear and populate bookmarks test table
- Database showing as an array on /bookmarks page
- Took out user for database so it works across different computers
- Shout out to Joe Pasquale

- Next challenge is number 10 - Creating bookmarks
