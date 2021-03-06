# config valid only for Capistrano 3.1
lock '3.10.2'

set :application, 'careerlife'
set :repo_url, 'git://github.com/ichylinux/careerlife.git'
set :user, ENV['USER']

# Default branch is :master
# ask :branch, proc { `git rev-parse --abbrev-ref HEAD`.chomp }.call

# Default deploy_to directory is /var/www/my_app
# set :deploy_to, '/var/www/my_app'
set :deploy_to, "/home/#{fetch(:user)}/apps/#{fetch(:application)}"

# Default value for :scm is :git
# set :scm, :git

# Default value for :format is :pretty
# set :format, :pretty

# Default value for :log_level is :debug
set :log_level, ENV['LOG_LEVEL'] || :info

# Default value for :pty is false
# set :pty, true

# Default value for :linked_files is []
# set :linked_files, %w{config/database.yml}

# Default value for linked_dirs is []
set :linked_dirs, %w{bin log tmp/pids tmp/cache tmp/sockets vendor/bundle public/system}

# Default value for default_env is {}
# set :default_env, { path: "/opt/ruby/bin:$PATH" }

# Default value for keep_releases is 5
# set :keep_releases, 5

namespace :deploy do

  task :start do
    on roles(:app), in: :sequence, wait: 5 do
	    execute "sudo service unicorn_careerlife_pro start"
    end
  end
  task :stop do
    on roles(:app), in: :sequence, wait: 5 do
	    execute "sudo service unicorn_careerlife_pro stop"
    end
  end
  task :restart do
    on roles(:app), in: :sequence, wait: 5 do
	    execute "sudo service unicorn_careerlife_pro restart"
    end
  end

  after :publishing, :restart

  after :restart, :clear_cache do
    on roles(:web), in: :groups, limit: 3, wait: 10 do
      within release_path do
        execute :rake, 'tmp:cache:clear'
      end
    end
  end

end
