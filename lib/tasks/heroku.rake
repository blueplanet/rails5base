namespace :heroku do
  desc 'init heroku config'
  task :init do
    system 'heroku config:add TZ=Asia/Tokyo'
    system 'heroku addons:add sendgrid:starter'
    system 'heroku addons:create papertrail:choklad'
    system 'heroku addons:create newrelic:wayne'
  end
end
