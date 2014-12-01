class ApplicationController < Sinatra::Base
  helpers ApplicationHelper
  enable :logging

  configure :test do
    ActiveRecord::Base.logger = nil
  end
  
  configure :production do
    Airbrake.configure do |config|
      config.api_key = "c6b1addaa8d0cea0da8b61cfdb27f76e6cb855af"
    end
    use Airbrake::Sinatra
  end
  

  before do
    content_type :json
  end

  get '/' do
    raise 'Sinatra has left the room'
  end
end
