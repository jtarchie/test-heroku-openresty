
namespace :spec do
  task :up do
    puts "Starting Vagrant"
    sh %Q{cd spec/; vagrant up}
    sh %Q{cd spec/; vagrant ssh -c 'cd /app; sudo nohup foreman start > /dev/null 2>&1 &'}
  end

  task :down do
    puts "Stopping Vagrant"
    sh %Q{cd spec/; vagrant ssh -c 'sudo pkill foreman'}
    sh %Q{cd spec/; vagrant suspend}
  end

  task :pristine do
    sh %Q{cd spec/; vagrant ssh -c 'sudo pkill foreman'}
    sh %Q{cd spec/; vagrant provision}
    sh %Q{cd spec/; vagrant ssh -c 'cd /app; sudo nohup foreman start > /dev/null 2>&1 &'}
  end
end