desc "Refreshing the database"
task :update_streams => :environment do
  puts "Updating Streams..."
  Stream.populate
  puts "done."
end

task :update_games => :environment do 
  puts "Updating Games..."
  Game.populate
  puts "done."
end