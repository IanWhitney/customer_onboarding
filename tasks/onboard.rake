namespace :onboard do
  task :customers do
    require 'sqlite3'
    db = SQLite3::Database.new "/Users/Ian/Documents/workspace/daemon_presentation/customer_signup/db/development.sqlite3"
    db.execute("select * from users") do |user|
      sleep(4)
      puts user.inspect
    end
  end
end
