require 'spec_helper'
require 'guard/compat/test/helper'

describe Guard::ConsistencyFail do
  describe '#options' do
    context 'when unspecified' do
      it 'rails_app_dir is set to current directory' do
        expect(subject.options.fetch(:rails_app_dir)).to eq('.')
      end

      it 'all_on_start is true' do
        expect(subject.options.fetch(:all_on_start)).to be_truthy
      end
    end
  end

  context 'running with various options' do
    before do
      allow(Guard::Compat::UI).to receive(:notify)
      allow(Guard::Compat::UI).to receive(:info)
      allow(Guard::Compat::UI).to receive(:error)
    end

    context 'whith all_on_start set to true' do
      let(:consistency_fail) {Guard::ConsistencyFail.new({watchers:[], all_on_start: true})}

      it 'do run on start' do
        expect(consistency_fail).to receive(:run_all)
        consistency_fail.start
      end
    end

    context 'whith all_on_start set to false' do
      let(:consistency_fail) {Guard::ConsistencyFail.new({watchers:[], all_on_start: false})}

      it 'does nothing' do
        expect(consistency_fail).to_not receive(:run_all)
        consistency_fail.start
      end

    end

    describe 'whith rails_app_dir other than .' do
      let(:consistency_fail) {Guard::ConsistencyFail.new({watchers:[], rails_app_dir: 'azerty'})}

      it "calls system with 'azerty' as rails_app_dir" do
        expect(consistency_fail).to receive(:system).with("consistency_fail azerty").and_return(true)
        consistency_fail.start
      end
    end

    describe "when passing an environment option" do

      let(:consistency_fail) {Guard::ConsistencyFail.new({watchers:[], environment: 'test'})}

      it "calls system with 'export RAILS_ENV=test;' call first" do

        expect(consistency_fail).to receive(:system).with("export RAILS_ENV=test; consistency_fail").and_return(true)
        consistency_fail.start
      end
    end
  end
end
