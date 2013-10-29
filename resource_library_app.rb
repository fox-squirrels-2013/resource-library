require 'sinatra'
require 'sinatra/activerecord'


# use the dotenv gem and .env file to store sensitive and changing data
# This could go in an initialzer 
begin
  require 'dotenv'
  Dotenv.load(".env.#{ENV['RACK_ENV']}", ".env")
rescue LoadError
end

set :database, ENV['DATABASE_URL']


class Topic < ActiveRecord::Base

  def tag_with!(tag)
    # IMPLEMENT ME
  end

  def add_resource!(resource)
    # IMPLEMENT ME
  end
end

class Resource < ActiveRecord::Base

end

class TopicTag < ActiveRecord::Base

end

class Tag < ActiveRecord::Base

end
