## folders_renamer

[![Gem Version](https://badge.fury.io/rb/folders_renamer.svg)][gem]
[![Dependency Status](https://gemnasium.com/agilecreativity/folders_renamer.png)][gemnasium]
[![Code Climate](https://codeclimate.com/github/agilecreativity/folders_renamer.png)][codeclimate]
[![Build Status](https://travis-ci.org/agilecreativity/folders_renamer.svg)][travis-ci]

[gem]: http://badge.fury.io/rb/folders_renamer
[gemnasium]: https://gemnasium.com/agilecreativity/folders_renamer
[codeclimate]: https://codeclimate.com/github/agilecreativity/folders_renamer
[travis-ci]: https://travis-ci.org/agilecreativity/folders_renamer

Rename/cleanup folder names using the simple rules. For optimal result you may like
also like to try my [filename_cleaner][] gem which clean/rename the bad file names.

Features
========

- Rename directory recursively from any starting location
- Replace unwanted characters with value of your choice using `--sep-string` option (default to . (dot))
- Following the [Semantic Versioning][] for release schedule
- Quickly rename bad folder names to good folder names with one command.

e.g. turn these directories (if your OS allow you to have these names)

```
some_folder/
├── aa!@#$!01
│   └── bb#@#$@#$@01
├── aa**#$@#$#@$aa
    └── bb$@#$#@$@#bb
        └── cc#$!#$@#cc!!!
```

into these directories

```
some_folder/
├── aa_01
│   └── bb_01
├── aa_aa
    └── bb_bb
        └── cc_cc
```

### Installation

```sh
gem install folders_renamer
```

### Usage/Synopsis

Type the `folders_rename` without any options to get the help which should be something like:

```
Usage:
  folders_renamer rename -b, --base-dir=BASE_DIR -s, --sep-string=SEP_STRING

Options:
  -b, --base-dir=BASE_DIR      # Starting directory
                               # Default: . (current directory)
  -s, --sep-string=SEP_STRING  # Separtor string to use
                               # Default: .
  -v, [--version=VERSION]      # Display version number

Cleanup and rename folders
```
### Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

[Semantic Versioning]: http://semver.org
[filename_cleaner]: http://rubygems.org/gems/filename_cleaner
