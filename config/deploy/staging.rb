set :branch,      'develop'
set :rails_env,   'staging'
set :migrate_env, 'staging'

set :server_address, "wilnuoter_wine_rails.pixelforcesystems.com.au"

server "wilnuoter_wine_rails.pixelforcesystems.com.au", :app, :web, :db, :primary => true

# If you are using Passenger mod_rails uncomment this:
namespace :deploy do
  task :start do ; end  
  task :stop do ; end  
  task :restart, :roles => :app, :except => { :no_release => true } do
    run "cd '/home/deploy/wilnuoter_wine_rails/current' ; bundle exec rake db:migrate RAILS_ENV=staging"
  end
end