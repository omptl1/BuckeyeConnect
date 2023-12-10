# README

Initial setup:
- Rails version 7.0.8 needs to be installed.
- Ruby version 3.2.2 needs to be installed.


* Database initialization

- To initialize the database please enter "rails db:migrate" into the command line.
- Then enter "rails db:seed" in order to seed the database with the admin login.

# NOTICE!
# if a user doesn't enter the correct field on the sign up page then they db rollback and prevent them from creating account
# same as sign in if user doesn't enter correct field in the sign in they can't sign in.
# make sure use admin@example.com for email and password to log in as admin

Steps to start the website are below. Please execute them in order:
1. run "bundle install" to install all dependencies. 
2. run "rails db:migrate" to initialize the database. 
3. run "rails db:seed" to seed the admin login for the website. 
4. to open the webpage enter "rails s" into the command line. This will display the port to open. please right click the port listed after "Listening on" and open in a web browser of your choosing.

Website navigation:
1. use the navbar at the top of the page to navigate the website. Additionally, some webpages will have links to additional pages that are directly displayed on the navbar.
    For example, showing a presentation from the presentations page.
2. Admin login:
    1. The initial page is just a blank page. From there the admin can navigate the site.
    2. Logout: will log the admin out.
    3. Edit Admin Profile: will allow the admin to edit the admin profile.
    4. Schedule a Presentation: This will allow the admin to schedule a presentation. All fields need to be entered.
        a. When creating a presentation enter a valid date and time. Some browsers like Edge and Chrome will auto-fill the date and time when selecting a day from the calendar. If this does not occur, please enter the time manually.
        b. The admin also has the ability to delete or edit a presentation if desired.
    5. Student Statistics: This page will display stats for each student that had been assigned a presentation.
    6. All Presentations: This will show all of the presentations created.
        a. We have added Javascript functionality to filter the presentations based upon date. Please enter a date in the YYYY-MM-DD format.
3. Non-Admin login:
    1. Logout: will log the user out.
    2. Edit Profile: allows the user to edit their profile.
    3. Upcoming Presentations: Shows the user what presentations are coming up.
        a. From here, a user can submit an evaluation. Please note, all field need to be used. The score must be a number between 1 and 10, inclusive.
        b. The user also has the ability to edit the evaluation if desired.
    4. Submitted Evaluations: Shows the user evaluations they have submitted.
    5. My Presentations: Shows the user the presentations they have given.







