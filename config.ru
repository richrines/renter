# This file is used by Rack-based servers to start the application.

use Rack::ReverseProxy do
  reverse_proxy(/^\/blog(\/.*)$/,
  'http://lit-ocean-2449.herokuapp.com$1',
  opts = {:preserve_host => true})
end

require ::File.expand_path('../config/environment',  __FILE__)
run Rails.application
