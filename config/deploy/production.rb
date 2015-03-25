set :stage,     :production
set :rails_env, 'production'
set :deploy_to, '/var/www/instalments_com'

server 'REPLACE_ME',
       user: 'instalments',
       roles: %w(web app db)
