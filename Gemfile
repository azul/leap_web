source 'https://rubygems.org'

eval(File.read(File.dirname(__FILE__) + '/common_dependencies.rb'))
eval(File.read(File.dirname(__FILE__) + '/ui_dependencies.rb'))

# EITHER fetch all of the leap_web gems in one go
# gem 'leap_web' 
# OR use the local versions for development instead:
gem "leap_web_core", :path => 'core'
gem 'leap_web_users', :path => 'users'
gem 'leap_web_certs', :path => 'certs'
gem 'leap_web_help', :path => 'help'

# To use debugger
gem 'debugger', :platforms => :mri_19
# ruby 1.8 is not supported anymore
# gem 'ruby-debug', :platforms => :mri_18

# unreleased so far ... but leap_web_certs need it
gem 'certificate_authority', github: 'cchandler/certificate_authority'

# unreleased so far ... but leap_web_core need it for rails 4
gem "couchrest_model", github: "couchrest/couchrest_model"

