# Guard::ConsistencyFail

Guard::ConsistencyFail automates running of checks from [consistency_fail](https://github.com/trptcolin/consistency_fail) in guard when model or schema.rb changes.

[![Gem Version](https://badge.fury.io/rb/guard-consistency_fail.svg)](http://badge.fury.io/rb/guard-consistency_fail) [![Code Climate](https://codeclimate.com/github/ptyagi16/guard-consistency_fail.png)](https://codeclimate.com/github/ptyagi16/guard-consistency_fail) [![Build Status](https://travis-ci.org/ptyagi16/guard-consistency_fail.svg?branch=master)](https://travis-ci.org/ptyagi16/guard-consistency_fail)

## Install

Please be sure to have [Guard](http://github.com/guard/guard) installed before continue.

Install the gem:

    gem install guard-delayed

Add it to your Gemfile (inside development group):

    gem 'guard-consistency_fail'

Add guard definition to your Guardfile by running this command:

    guard init consistency_fail

## Usage

Please read [Guard usage doc](http://github.com/guard/guard#readme).  Also please refer to [consistency_fail](https://github.com/trptcolin/consistency_fail) for details on how the consistency_fail gem works.

## Guardfile

    guard 'consistency_fail', :environment => 'development' do
      watch(%r{^app/model/(.+)\.rb})
      watch(%r{^db/schema.rb})
    end

## Development

 * Source hosted at [GitHub](https://github.com/ptyagi16/guard-consistency_fail)
 * Report issues/Questions/Feature requests on [GitHub Issues](https://github.com/ptyagi16/guard-consistency_fail/issues)

Pull requests are very welcome! Make sure your patches are well tested. Please create a topic branch for every separate change
you make.

## Building and deploying gem

* Update the version number in `lib/guard/consistency_fail/version.rb`
* Update `CHANGELOG.md`
* Build the gem

    `gem build guard-consistency_fail.gemspec`
    
* Push to rubygems.org

    `gem push guard-consistency_fail-0.0.9.gem`
    
## Testing the gem locally

    gem install guard-consistency_fail-0.0.9.gem


## Authors

[Pankaj Tyagi](https://github.com/ptyagi16)

Ideas for this gem came from  [consistency_fail](https://github.com/trptcolin/consistency_fail) and [Guard::Delayed](https://github.com/guard/guard-delayed).

## License

MIT License.  See License file.
