# About

This combines [Forum Monster](https://github.com/clalansingh/forum) with [parse_resource](http://github.com/adelevie/parse_resource) for model persistence and includes a simple auth system that's based on this [Railscast](http://asciicasts.com/episodes/250-authentication-from-scratch)

## Installation

* Change `config/parse_resource.yml` to reflect your parse app keys
* `bundle install`
* Create a `config/database.yml` that points to your mysql db
* Create your db
* `rake db:migrate`
* `rails s`
