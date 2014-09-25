#NOTE: config valid only for Capistrano 3.1
lock '3.2.1'

set :application, 'the_ginger_armadillo'
set :repo_url, 'https://github.com/justindoran/the_ginger_armadillo.git'

set :deploy_via, :remote_cache
# Default branch is :master
# ask :branch, proc { `git rev-parse --abbrev-ref HEAD`.chomp }.call
# Default deploy_to directory is /var/www/my_app
# set :deploy_to, '/var/www/my_app'
# Default value for :scm is :git
# set :scm, :git
# Default value for :format is :pretty
# set :format, :pretty
# Default value for :log_level is :debug
# set :log_level, :debug
# Default value for :pty is false
# set :pty, true
# Default value for :linked_files is []
# Default value for linked_dirs is []
# Default value for default_env is {}
# set :default_env, { path: "/opt/ruby/bin:$PATH" }
# Default value for keep_releases is 5
# set :keep_releases, 5
# --

set :linked_files, %w{config/database.yml config/unicorn.rb}
set :linked_dirs, %w{log tmp/pids}
namespace :deploy do

  desc 'Restart application'
  task :reload do
   on roles(:app), in: :sequence, wait: 5 do
     execute "sudo service unicorn reload the_ginger_armadillo"
   end
  end

  after :publishing, :reload
# 
#   after :restart, :clear_cache do
#     on roles(:web), in: :groups, limit: 3, wait: 10 do
#     end
#   end
# 
end
