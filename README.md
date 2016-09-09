# README

PaSy (physical addressing system) has been designed and developed for the main purpose of creating a web based physical addressing system.
It is intended to spearhead the open research and development of open source Physical addressing system with the hope for creating a community of contributors to the code base, everyone deserves to own an address hence the motivation for developing the system. Some of the motivations included R 

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

*  Ruby version
ruby 2.3.0p0 

* System dependencies

'source 'https://rubygems.org'


'gem 'rails', '>= 5.0.0.rc1', '< 5.1'

gem 'bcrypt'

gem 'pry'

gem 'faker'

gem 'pry-rails'

gem 'polylines'

gem 'geocoder'

gem 'gmaps4rails'

gem "font-awesome-rails"

gem 'puma', '~> 3.0'

gem 'will_paginate'

gem 'bootstrap-will_paginate'

gem 'sass-rails', '~> 5.0'

gem 'uglifier', '>= 1.3.0'

gem 'coffee-rails', '~> 4.1.0'

gem 'bootstrap-sass'

gem 'jquery-rails'

gem 'gon'

gem 'turbolinks', '~> 5.x'

gem 'jbuilder', '~> 2.0'

group :development, :test do

gem 'byebug', platform: :mri

gem 'sqlite3'

gem 'guard'

end

group :development do

gem 'web-console'

gem 'listen', '~> 3.0.5'

gem 'spring'

gem 'spring-watcher-listen', '~> 2.0.0'

gem'guard-bundler'

gem'guard-rails'

end

group:test do

gem'minitest-reporters'

gem'mini_backtrace'

gem'guard-minitest'

gem 'rails-controller-testing'

end

group :production do

gem 'pg'

end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
'

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
