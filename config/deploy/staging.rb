set :stage,     :staging
set :deploy_to, '/var/www/instalments_webapps_cz'
set :rails_env, 'staging'

server 'REPLACE_ME',
        user: 'instalments_webapps_cz',
        roles: %w(web app db)

