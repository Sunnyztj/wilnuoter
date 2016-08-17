require 'bundler/capistrano'
set :rvm_ruby_string, '2.3.1'
require "rvm/capistrano"

load "config/recipes/base"
load "config/recipes/unicorn"
load "config/recipes/delayed_job"

default_run_options[:pty] = true
set :application, 'wilnuoter'
set :repository,  'git@bitbucket.org:tmatttechnologyptyltd/wilnuoterwine-v1.git'
set :scm, :git

set :deploy_to,   '/home/deploy/wilnuoter'
set :user,        'deploy'
set :branch,      'master'
set :rails_env,   'production'
set :migrate_env, 'production'
set :use_sudo, false
set :deploy_via, :remote_cache
set :db_local_clean, true
set :locals_rails_env, "development"

set :server_address, "wilnuoterwine.tmatt.com.au"

server "43.229.63.71", :app, :web, :db, :primary => true

# if you want to clean up old releases on each deploy uncomment this:
after "deploy:restart", "deploy:cleanup"
after 'deploy:restart', 'unicorn:restart'

after "bundle:install", :roles => :web do
  run "ln -s #{shared_path}/config/database.yml #{release_path}/config/database.yml"
  run "ln -s #{shared_path}/config/secrets.yml #{release_path}/config/secrets.yml"
end

# If you are using Passenger mod_rails uncomment this:
namespace :deploy do
  task :start do ; end
  task :stop do ; end
  task :restart, :roles => :app, :except => { :no_release => true } do
    run "cd '/home/deploy/wilnuoter/current' ; bundle exec rake db:migrate RAILS_ENV=production"
  end
end
