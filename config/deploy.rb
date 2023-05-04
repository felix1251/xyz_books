set :application, "myapp"
set :repo_url, "https://github.com/felix1251/xyz_books.git"

# Deploy to the user's home directory
set :deploy_to, "/home/deploy/#{fetch :application}"

append :linked_dirs, 'log', 'tmp/pids', 'tmp/cache', 'tmp/sockets', 'vendor/bundle', '.bundle', 'public/system', 'public/uploads', 'storage'

# Only keep the last 5 releases to save disk space
set :keep_releases, 5

# set :initial, true
# # run only if app is being deployed for the very first time, should update "set :initial, true" above to run this
# before 'deploy:migrate', 'database:create' if fetch(:initial)