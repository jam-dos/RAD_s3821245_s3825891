# Load the Rails application.
require_relative 'application'

# Initialize the Rails application.
Rails.application.initialize!


ActionMailer::Base.smtp_settings = {
  :user_name => 'apikey', # This is the string literal 'apikey', NOT the ID of your API key
  :password => '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', # This is the secret sendgrid API key which was issued during API key creation
  :domain => 'student.rmit.edu.au',
  :address => 'smtp.sendgrid.net',
  :port => 587,
  :authentication => :plain,
  :enable_starttls_auto => true
}
