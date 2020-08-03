require 'rails'
module Mongoid::FullTextSearch
  class Railtie < Rails::Railtie
    railtie_name :mongoid_fulltext

    rake_tasks do
      load "tasks/mongoid_fulltext.rake"
    end
  end
end
