gem "haml"
gem "bootstrap-sass", "~> 2.1.0"
gem "jquery-rails"

# use unreleased form stuff that works with rails 4
gem "client_side_validations", github: "bcardarella/client_side_validations", branch: "4-0-beta"
gem "simple_form", github: "plataformatec/simple_form"
gem "client_side_validations-simple_form", github: "thunderboltlabs/client_side_validations-simple_form", branch: "rails4"

#gem "simple_form"
#gem 'client_side_validations'
#gem 'client_side_validations-simple_form'

gem "bootswatch-rails", "~> 0.5.0"

gem 'kaminari', "0.13.0" # for pagination. trying 0.13.0 as there seem to be
                         # issues with 0.14.0 when using couchrest

gem 'rails-i18n'  # locale files for built-in validation messages and times
                  # https://github.com/svenfuchs/rails-i18n
                  # for a list of keys:
                  # https://github.com/svenfuchs/rails-i18n/blob/master/rails/locale/en.yml

gem "haml-rails"
gem "sass-rails"
gem "coffee-rails"
gem "uglifier"

# See https://github.com/sstephenson/execjs#readme for more supported runtimes
gem 'therubyracer', "~> 0.10.2", :platforms => :ruby


