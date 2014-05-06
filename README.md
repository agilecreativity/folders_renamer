## FoldersRenamer

[![Gem Version](https://badge.fury.io/rb/folders_renamer.svg)](http://badge.fury.io/rb/folders_renamer)
[![Dependency Status](https://gemnasium.com/agilecreativity/folders_renamer.png)](https://gemnasium.com/agilecreativity/folders_renamer)
[![Code Climate](https://codeclimate.com/github/agilecreativity/folders_renamer.png)](https://codeclimate.com/github/agilecreativity/folders_renamer)

Quickly generate the starting template for creating CLI ruby gem.
Generated template contain the simplest possible structure so that we don't have
to start from scratch.

Features:

- Test with [minitest][]
- Build with the power of [Thor][]
- Debug with pry[pry][]
- Documentation with [yard][]
- Style check with [rubocop][]
- Initial git manipulation using [grit][]

### Installation

Add this line to your application's Gemfile:

    gem 'folders_renamer'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install folders_renamer

### Usage

Use as library try

```ruby
require 'folders_renamer'
include FoldersRenamer
# then call the appropriate functions
```

### Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

[thor]: https://github.com/erikhuda/thor
[minitest]: https://github.com/seattlerb/minitest
[yard]: https://github.com/lsegal/yard
[pry]: https://github.com/pry/pry
[rubocop]: https://github.com/bbatsov/rubocop
[grit]: https://github.com/mojombo/grit
