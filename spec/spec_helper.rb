require 'rubygems'
require 'guard/consistency_fail'
require 'rspec'

ENV["GUARD_ENV"] = 'test'

RSpec.configure do |config|
  config.color = true
  config.run_all_when_everything_filtered = true

  config.before(:each) do
    allow(Guard::UI).to receive(:notify).and_return(true)
  end

end
