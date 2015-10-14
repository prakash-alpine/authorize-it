namespace :db do
  task :seed_data => :environment do
    load Rails.root.join('db', 'seed_data.rb')
  end

  task :clear_seed_data => :environment do
    load Rails.root.join('db', 'clear_seed_data.rb')
  end

end