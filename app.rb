require "sinatra"
require "sinatra/reloader" if development?
require "pry-byebug"
require "better_errors"
configure :development do
  use BetterErrors::Middleware
  BetterErrors.application_root = File.expand_path('..', __FILE__)
end

get '/' do
  'Hello world!'
end

# == Sinatra (v1.4.7) has taken the stage on 4567 for development with backup from Puma
# Puma starting in single mode...
# * Version 3.3.0 (ruby 2.3.0-p0), codename: Jovial Platypus
# * Min threads: 0, max threads: 16
# * Environment: development
# * Listening on tcp://localhost:4567
# Use Ctrl-C to stop
get '/' do  # <- Router part

  # [...]   #
  # [...]   # <- Controller part
  # [...]   #

end
