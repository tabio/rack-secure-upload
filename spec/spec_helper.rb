require 'rubygems'
require 'coveralls'
Coveralls.wear!

require 'rack'
require 'rack-secure-upload'

Dir[File.join(File.dirname(__FILE__), "support/**/*.rb")].each {|f| require f }

ENV['RACK_ENV'] = 'test'
RSpec.configure do |config|
  config.before do
    ::FileUtils.mkdir_p 'tmp'
  end
  config.after do
    ::FileUtils.remove_dir 'tmp'
  end
end

