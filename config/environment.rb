# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
Resume::Application.initialize!

ActionMailer::Base.smtp_settings = {
:address => 'smtp.gmail.com',
:port => 587,
:domain => 'colediamond.com',
:authentication => :plain,
:user_name => 'cdiamond111@gmail.com',
:password => 'busboots'
}