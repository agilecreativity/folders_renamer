require "thor"
module FoldersRenamer
  class CLI < Thor
    desc "rename", "Cleanup and rename folders"
    method_option "base_dir",
                  aliases: "-b",
                  desc: "Starting directory",
                  default: Dir.pwd,
                  required: true
    method_option "sep_string",
                  aliases: "-s",
                  desc: "Separtor string to use",
                  default: ".",
                  required: true
    method_option "version",
                  aliases: "-v",
                  desc: "Display version number"
    def rename
      opts = options.symbolize_keys
      if opts[:version]
        puts "You are using FoldersRenamer version #{FoldersRenamer::VERSION}"
        exit
      end
      puts "Your options #{opts}"
      process(opts)
    end

    desc "usage", "Display help screen"
    def usage
      puts <<-EOS
Usage:
  folders_renamer rename -b, --base-dir=BASE_DIR -s, --sep-string=SEP_STRING

Options:
  -b, --base-dir=BASE_DIR      # Starting directory
                               # Default: . (current directory)
  -s, --sep-string=SEP_STRING  # Separtor string to use
                               # Default: .
  -v, [--version=VERSION]      # Display version number

Cleanup and rename folders
      EOS
    end

    default_task :usage

  private

    def process(opts = {})
      puts "FYI: your options #{opts}"
      FoldersRenamer.rename(opts[:base_dir], opts[:sep_string])
    end
  end
end
