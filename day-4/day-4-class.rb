# --------------------------------------------------------------------------------------
# Day 4 - Diving into Ruby on Rails
# --------------------------------------------------------------------------------------

# A long explaination of all the files in the app folder of our new rails app.

# --------------------------------------------------------------------------------------
# Made new app
# --------------------------------------------------------------------------------------

# command line: rails new app_name # creates a new rails app with a given name.
# command line: cd app_name # changes directory to the app that was just reacted
# command line: rails server # starts the rails app in a local server

# --------------------------------------------------------------------------------------
# in the app made a new controller
# --------------------------------------------------------------------------------------

# rails generate controller name_of_controller
# rails g controller name_of_controller - will also work
# adding index to the end of the controller name will add a method to the controller file.

# To point your app to a new index instead of the default rails welcome page
# find the "routes.rb" file in the "config" folder, uncomment the "root" command and replace it with your own controller.

# --------------------------------------------------------------------------------------
# Making a Model
# --------------------------------------------------------------------------------------

# Methods allow your controller to communicate with the database.

# command: rails g model Name_of_model title:string description:text
# title and description are properties associated with our new model
# string and text define what type of information properties will hold.

# To "commit" the model
# command: db:migrate
# this commits any articles and creates a database.

# --------------------------------------------------------------------------------------
# rails c or rails console
# --------------------------------------------------------------------------------------

# irb:(main) allows you to interact with your database.


# --------------------------------------------------------------------------------------
# Home Work
# --------------------------------------------------------------------------------------

# Make an application, new controller, model, and post to a db, then post to the application.