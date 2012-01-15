namespace :db do
  desc "Fill database with sample data"
  task :populate => :environment do
    Rake::Task['db:reset'].invoke
    admin = User.create!(:name => "Laide Olanlokun",
                         :email => "lo00051@surrey.ac.uk",
                         :password => "medlyd",
                         :password_confirmation => "medlyd")
    admin.toggle!(:admin)
    
    50.times do
      User.all(:limit => 6).each do |user|
        user.microposts.create!(:content => Faker::Lorem.sentence(5))
      end
    end
  end
end
