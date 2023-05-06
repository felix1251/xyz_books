set :application, "myapp"
set :repo_url, "https://github.com/felix1251/xyz_books.git"

# Deploy to the user's home directory
set :deploy_to, "/home/deploy/#{fetch :application}"

append :linked_dirs, 'log', 'tmp/pids', 'tmp/cache', 'tmp/sockets', 'vendor/bundle', '.bundle', 'public/system', 'public/uploads', 'storage'

# Only keep the last 5 releases to save disk space
set :keep_releases, 5

namespace :custom_task do
    task :create_db do
        on roles(:db) do
            exec("rake db:create")
        end  
    end

    task :seed_db do
        on roles(:db) do
            exec("rake db:seed")
        end
    end
end

# # run only if app is being deployed for the very first time, should update "set :initial, true" above to run this

set :initial, false

if fetch(:initial)
    before 'deploy:migrate', 'custom_task:create_db'
    after 'deploy:migrate', 'custom_task:seed_db'
end




