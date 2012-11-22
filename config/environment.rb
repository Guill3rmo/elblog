# Load the rails application
require File.expand_path('../application', __FILE__)
#let Paperclip know to look there by adding that directory to its path.
Paperclip.options[:command_path] = "/usr/local/bin/"
# Initialize the rails application
Elblog::Application.initialize!
