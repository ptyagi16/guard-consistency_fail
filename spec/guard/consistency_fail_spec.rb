require 'spec_helper'

describe Guard::ConsistencyFail do
  describe "when passing an environment option" do
    it "calls system with 'export RAILS_ENV=test;' call first" do
      @consistency_fail = Guard::ConsistencyFail.new({watchers:[], environment: 'test'})
      @consistency_fail.should_receive(:system).with("export RAILS_ENV=test; consistency_fail").and_return(true)
      @consistency_fail.start
    end
  end
end
