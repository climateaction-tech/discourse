# config valid for current version and patch releases of Capistrano
lock "~> 3.11.2"

# staging
set :stages, ["staging", "production"]
set :default_stage, "staging"

set :application, 'discourse'
set :repo_url, 'git@github.com:climateaction-tech/discourse.git'

# ask :branch, proc { `git rev-parse --abbrev-ref HEAD`.chomp }.call

# Default value for :format is :pretty
set :format, :pretty

# Default value for :log_level is :debug
# set :log_level, :debug

# Default value for :pty is false
set :pty, true

# Default value for linked_dirs is []
set :linked_dirs, %w{uploads log tmp/pids tmp/cache tmp/sockets vendor/bundle public/assets public/system}
append :linked_files, ".env"
# Default value for default_env is {}
# set :default_env, { path: "/opt/ruby/bin:$PATH" }

# Default value for keep_releases is 5
set :keep_releases, 5
