gem "haml", "~> 3.1.7"
gem "bootstrap-sass", "~> 2.1.0"
gem "jquery-rails"
gem "simple_form"
gem 'client_side_validations'
gem 'client_side_validations-simple_form'

group :assets do
  gem "haml-rails", "~> 0.3.4"
  gem "sass-rails", "~> 3.2.5"
  gem "coffee-rails", "~> 3.2.2"
  gem "uglifier", "~> 1.2.7"

  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  gem 'therubyracer', :platforms => :ruby

end

