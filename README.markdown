# Guard::ConsistencyFail

Guard::ConsistencyFail automatically runs consistency fail when model or schema.rb changes

## Install

Please be sure to have [Guard](http://github.com/guard/guard) installed before continue.

Install the gem:

    gem install guard-delayed

Add it to your Gemfile (inside test group):

    gem 'guard-consistency_fail'

Add guard definition to your Guardfile by running this command:

    guard init consistency_fail

## Usage

Please read [Guard usage doc](http://github.com/guard/guard#readme).

## Guardfile

    guard 'consistency_fail', :environment => 'development' do
      watch(%r{^app/model/(.+)\.rb})
      watch(%r{^db/schema.rb})
    end

## Development

 * Source hosted at [GitHub](http://github.com/suranyami/guard-consistency_fail)
 * Report issues/Questions/Feature requests on [GitHub Issues](http://github.com/ptyagi/guard-consistency_fail/issues)

Pull requests are very welcome! Make sure your patches are well tested. Please create a topic branch for every separate change
you make.

## Building and deploying gem

 * Update the version number in `lib/guard/consistency_fail/version.rb`
 * Update `CHANGELOG.md`
 * Build the gem:
 
    gem build guard-consistency_fail.gemspec
    
 * Push to rubygems.org:
 
    gem push guard-consistency_fail-0.0.4.gem
    
## Testing the gem locally

    gem install guard-consistency_fail-0.0.4.gem


## Authors

[Pankaj Tyagi](https://github.com/ptyagi16)

Ideas for this gem came from [Guard::Delayed](https://github.com/guard/guard-delayed).

## Note

I originally called this `guard-consistency_fail` and I thought it would not work but it did!
Anybody else encountered this? Let me know if you have. Thanks in advance.
