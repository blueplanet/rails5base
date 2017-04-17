namespace :heroku do
  desc 'init heroku config'
  task :init do
    system 'heroku config:add TZ=Asia/Tokyo'
    system 'heroku addons:add sendgrid:starter'
    system 'heroku addons:create papertrail:choklad'
    system 'heroku addons:create newrelic:wayne'

    # Add build pack to hook db:migrate
    system 'heroku buildpacks:set https://github.com/heroku/heroku-buildpack-ruby'
    system 'heroku buildpacks:add https://github.com/gunpowderlabs/buildpack-ruby-rake-deploy-tasks'
    system "heroku config:set DEPLOY_TASKS='db:migrate'"
  end
end
