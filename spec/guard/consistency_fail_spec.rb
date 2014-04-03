require 'spec_helper'

describe Guard::ConsistencyFail do
  describe "when passing an environment option" do
    it "calls system with 'export RAILS_ENV=test;' call first" do
      @delayed = Guard::ConsistencyFail.new([], {:environment => 'test'})
      @delayed.should_receive(:system).with("export RAILS_ENV=test; consistency_fail").and_return(true)
      @delayed.start
    end
  end
end
