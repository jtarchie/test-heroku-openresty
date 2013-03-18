Vagrant::Config.run do |config|
  OPENRESTY_STABLE_VERSION = "1.2.6.6"
  config.vm.box = "heroku"
  config.vm.provision :shell, :inline => <<-SH
    cd /tmp
    if [ -d "heroku-buildpack-lua/" ]
    then
      cd /tmp/heroku-buildpack-lua
      git pull
    else
      git clone http://github.com/leafo/heroku-buildpack-lua.git
    fi
    rm -Rf /app
    cp -r /tmp/app /app
    cd /tmp/heroku-buildpack-lua
    ./bin/detect /app
    ./bin/compile /app /tmp/app_cache
    ./bin/release /app
  SH
  config.vm.box_url = "http://dl.dropbox.com/u/1906634/heroku.box"
  config.vm.forward_port 80, 4567
  config.vm.share_folder "app", "/tmp/app", "./"
end