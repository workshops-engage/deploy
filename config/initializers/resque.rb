Dir[File.join(Rails.root, 'app', 'jobs', '*.rb')].each { |file| require file }
Resque.redis = Redis.new(:host => 'localhost', :port => '6379')