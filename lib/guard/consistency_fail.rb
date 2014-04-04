require 'guard'
require 'guard/guard'

module Guard
  class ConsistencyFail < Guard

    # Allowable options are:
    # :environment        defaults to 'development'

    def initialize(watchers = [], options = {})
      @options = options
      super(watchers, options)
    end

    def start
      system(cmd)
    end

    # Called on Ctrl-C signal (when Guard quits)
    def stop
    end

    # Called on Ctrl-Z signal
    # This method should be mainly used for "reload" (really!) actions like reloading passenger/spork/bundler/...
    def reload
      start
    end

    # Called on Ctrl-/ signal
    # This method should be principally used for long action like running all specs/tests/...
    def run_all
      start
    end

    # Called on file(s) modifications
    def run_on_change(paths)
      start
    end

    private

    def cmd
      command = 'consistency_fail'
      command = "export RAILS_ENV=#{@options[:environment]}; #{command}" if @options[:environment]
      UI.info "Running consistency_fail: #{command}"
      command
    end
  end
end
