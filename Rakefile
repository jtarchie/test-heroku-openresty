
namespace :spec do
  task :up do
    puts "Starting Vagrant"
    sh %Q{vagrant up}
    sh %Q{vagrant ssh -c 'cd /app; sudo foreman start'}
  end

  task :down do
    puts "Stopping Vagrant"
    sh %Q{vagrant ssh -c 'sudo pkill foreman'}
    sh %Q{vagrant suspend}
  end

  task :pristine do
    sh(%Q{vagrant ssh -c 'sudo pkill foreman'}) {}
    sh %Q{vagrant provision}
    sh %Q{vagrant ssh -c 'cd /app; sudo foreman start'}
  end
end