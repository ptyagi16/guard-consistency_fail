require 'guard'

module Guard
  class ConsistencyFail < Plugin

    # Allowable options are:
    # :environment        defaults to 'development'

    def initialize(options = {})
      super
      @options = {
        all_on_start: true,
        rails_app_dir: '.'
      }.merge(options)
      @watchers = options[:watchers]
    end

    def start
      run_all if @options[:all_on_start]
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
      system(cmd)
    end

    # Called on file(s) modifications
    def run_on_change(paths)
      start
    end

    private

    def cmd
      command = 'consistency_fail'
      command += " #{@options[:rails_app_dir]}" if '.' != @options[:rails_app_dir]
      command = "export RAILS_ENV=#{@options[:environment]}; #{command}" if @options[:environment]
      Compat::UI.info "Running consistency_fail: #{command}"
      command
    end
  end
end
