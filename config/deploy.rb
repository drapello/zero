set :application, "devfromgithub"
set :repository,  "git@github.com:drapello/gamble.git"

set :scm, :git
set :user, "ubuntu"
set :use_sudo, false

set :copy_exclude, [".git", "data",]
set :normalize_asset_timestamps, false


#role :web, "your web-server here"                          # Your HTTP server, Apache/etc
#role :app, "your app-server here"                          # This may be the same as your `Web` server
#role :db,  "your primary db-server here", :primary => true # This is where Rails migrations will run

server "23.23.230.249", :app, :web, :db, :primary => true
set :deploy_to, "/var/wwww/"

set :deploy_via, :copy


# if you want to clean up old releases on each deploy uncomment this:
# after "deploy:restart", "deploy:cleanup"

# this tells capistrano what to do when you deploy
# namespace :deploy do
#   task :default do
#     puts "por favor use a task nochecks"
#   end
# end
