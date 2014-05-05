desc "Get the application set up for development"

task :bootstrap => :environment do
  Rake::Task["db:create"].invoke unless Rails.env.production?
  Rake::Task["db:migrate"].invoke
end
