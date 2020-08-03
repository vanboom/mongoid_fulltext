namespace :mongoid_fulltext do
  desc "Tasks to support proper full text searching using mongoid_fulltext gem."

  task :update_indexes=>:environment do
    puts "Updating Mongoid Full Text ngram search indexes"
    Rails.application.eager_load!
    Mongoid::FullTextSearch::Children.included_in.each do |m|
      puts "Updating %s..." % m
      m.update_ngram_index
    end
  end

end
