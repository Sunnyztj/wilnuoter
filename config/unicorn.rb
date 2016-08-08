rails_env = ENV['RACK_ENV'] || 'production'
worker_processes 2
working_directory '/home/deploy/wilnuoter_wine_rails/current'

listen '/tmp/wilnuoter_wine_rails.sock', :backlog => 2048

timeout 60
pid "/home/deploy/wilnuoter_wine_rails/shared/pids/wilnuoter_wine_rails.pid"
preload_app  true
GC.respond_to?(:copy_on_write_friendly=) and
  GC.copy_on_write_friendly = true

stderr_path '/home/deploy/wilnuoter_wine_rails/shared/log/wilnuoter_wine_rails.log'

before_fork do |server, worker|
  ActiveRecord::Base.connection.disconnect!
  old_pid = "#{server.config[:pid]}.oldbin"
  if old_pid != server.pid
    begin
     Process.kill('QUIT', File.read(old_pid).to_i)
    rescue Errno::ENOENT, Errno::ESRCH
    end
  end
end

after_fork do |server, worker|
  ActiveRecord::Base.establish_connection
end