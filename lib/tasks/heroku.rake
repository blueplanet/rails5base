namespace :heroku do
  desc 'init heroku config'
  task :init do
    system 'heroku config:add TZ=Asia/Tokyo'
  end
end
