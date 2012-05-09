#############################################################
#       Application
#############################################################

set :application, "annacoim.com"
set :user, "internetchris"
set :use_sudo, true
set :deploy_to, "/home/internetchris/public_html/#{application}"
set :keep_releases, 3

#############################################################
#       Git
#############################################################

default_run_options[:pty] = true
set :repository, "git@github.com:preferredIT/annaco.git"
set :scm, "git"

#############################################################
#       Servers
#############################################################

role :app, "50.57.52.57"
role :web, "50.57.52.57"
role :db,  "50.57.52.57", :primary => true

#############################################################
#       Passenger
#############################################################

namespace :deploy do
  desc "Restart Application"
  task :restart, :roles => :app do
    run "ln -s /home/internetchris/public_html/annacoim.com//shared/fulfillment #{current_path}/fulfillment"
    run "ln -nfs #{shared_path}/config/database.yml #{latest_release}/config/database.yml"
    run "touch #{current_path}/tmp/restart.txt"
  end
 
end


