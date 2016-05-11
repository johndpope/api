rails_root = ENV['RAILS_ROOT'] || File.dirname(__FILE__) + '/../..'
rails_env = ENV['RAILS_ENV'] || 'development'

redis_config = YAML.load_file(rails_root + '/config/redis.yml')
host, port = redis_config[rails_env].split(':')
$redis = Redis.new(host: host, port: port)
