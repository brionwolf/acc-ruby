# ---------------------------------------------------------------------------
# Day 5 - RESET! lets start over making rails apps
# ---------------------------------------------------------------------------

# ---------------------------------------------------------------------------
# Alan - TA - Giving a quick overview of making a rails app.
# ---------------------------------------------------------------------------

# ---------------------------------------------------------------------------
# rails is known as an MVC coding language
# ---------------------------------------------------------------------------
# M - Models		- Receives directions from the controller to send information (if available) to the view.
# C - Controller	- Controls what you want to see, it's were you ask what you want to see.
# V - View 			- What you actually see.

# 				 Model (if needed)
# 						^
# Route --> Controller -⊥-> View --> Browser

# Opinion of the TA (Alan), routes file is the most important file in the app.

# ---------------------------------------------------------------------------
# Basic Commands for a rails application
# ---------------------------------------------------------------------------
# Create a new App - $ rails new app_name
# Create a new controller - $ rails g controller staticPages
# Create a new controller with methods - rails g controller controllerName methodName secondMethodName
# Start the rails server in and app - $ rails s


# ---------------------------------------------------------------------------
# When looking at your new rails app
# ---------------------------------------------------------------------------
# app (folder) - Everything related to the MVC frame work
# app/assets/ - images js, and css
# app_name/config - routes, initializers
# db - database
# Gemfile - all your gems

# ---------------------------------------------------------------------------
# Setting up a private 
# ---------------------------------------------------------------------------

# get 'what you will see in the url' => 'the actual path to the method'
# Example: 
# get 'about' => 'static_pages#about'