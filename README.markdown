# John Hancock: Sign your hashes using md5

## Why

  * Traditional usage: You need to sign reqests to an api
  * Personal usage:  At AcademicWorks we allow bulk imports of data from external services via csv files.  Processing this data is expensive and often these imports include rows of data that we have seen before.  A row can be tranformaed into a hash by mapping headers to cells.   By saving the signature of these hashes we save ourselves a lot of unneeded computational cycles.

## Usage

  basic
  	hash = {"foo" => "bar", "test" => "toon"}
  	hash.sign
  	=> "2a9807b64b8068a8a2a665521ad9aeae"

  signing with shared secret
  	hash = {"foo" => "bar", "test" => "toon"}
  	hash.sign("ipsec")
  	=> "d7321e9c8f961deb9e114dd476e420a0"

  sign ignoring certain fields
  	hash = {"foo" => "bar", "test" => "toon"}
  	hash.sign("ipsec", ["test"])
  	=> "b2d1e2808552c9d421b2b6f617c71012"


## Contributing to john-hancock
 
  * Check out the latest master to make sure the feature hasn't been implemented or the bug hasn't been fixed yet
  * Check out the issue tracker to make sure someone already hasn't requested it and/or contributed it
  * Fork the project
  * Start a feature/bugfix branch
  * Commit and push until you are happy with your contribution
  * Make sure to add tests for it. This is important so I don't break it in a future version unintentionally.
  * Please try not to mess with the Rakefile, version, or history. If you want to have your own version, or is otherwise necessary, that is fine, but please isolate to its own commit so I can cherry-pick around it.

## Copyright

  Copyright (c) 2011 AcademicWorks, inc. See LICENSE.txt for
  further details.

