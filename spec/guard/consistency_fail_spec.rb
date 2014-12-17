require 'spec_helper'
require 'guard/compat/test/helper'

describe Guard::ConsistencyFail do
  describe "when passing an environment option" do

    let(:consistency_fail) {Guard::ConsistencyFail.new({watchers:[], environment: 'test'})}

    before do
      allow(Guard::Compat::UI).to receive(:notify)
      allow(Guard::Compat::UI).to receive(:info)
      allow(Guard::Compat::UI).to receive(:error)
    end

    it "calls system with 'export RAILS_ENV=test;' call first" do

      expect(consistency_fail).to receive(:system).with("export RAILS_ENV=test; consistency_fail").and_return(true)
      consistency_fail.start
    end
  end
end
