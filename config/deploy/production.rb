set :branch,      'master'
set :rails_env,   'production'
set :migrate_env, 'production'

set :server_address, "43.229.63.71"

server "43.229.63.71", :app, :web, :db, :primary => true

# If you are using Passenger mod_rails uncomment this:
namespace :deploy do
  task :start do ; end  
  task :stop do ; end  
  task :restart, :roles => :app, :except => { :no_release => true } do
    run "cd '/home/deploy/wilnuoter/current' ; bundle exec rake db:migrate RAILS_ENV=production"
  end
end