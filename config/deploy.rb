require 'bundler/capistrano'
set :rvm_ruby_string, '2.0.0'
require "rvm/capistrano"

load "config/recipes/base"
load "config/recipes/unicorn"
load "config/recipes/delayed_job"

default_run_options[:pty] = true
set :application, 'wilnuoter_wine_rails'
set :repository,  'git@git.pixelforcesystems.com.au:wilnuoter_wine_rails.git'
set :scm, :git

set :deploy_to,   '/home/deploy/wilnuoter_wine_rails'
set :user,        'deploy'

set :use_sudo, false
set :deploy_via, :remote_cache
set :db_local_clean, true
set :locals_rails_env, "development"

# if you want to clean up old releases on each deploy uncomment this:
after "deploy:restart", "deploy:cleanup"
after 'deploy:restart', 'unicorn:restart'