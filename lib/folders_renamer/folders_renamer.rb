require "fileutils"
require "pathname"
require "filename_cleaner"
module FoldersRenamer
  CustomError = Class.new(StandardError)
  class << self
    def rename(options)
      base_dir   = File.expand_path(options[:base_dir])
      sep_string = options[:sep_string]
      commit     = options[:commit]

      unless File.directory?(base_dir) && File.readable?(base_dir)
        fail "#{base_dir} is not a valid directory or not readable!"
      end

      find_depth_first(Pathname(base_dir)) do |path|
        if path.directory?
          new_path = path.dirname + Pathname(FilenameCleaner.sanitize(path.basename.to_s, sep_string))
          if new_path != path && !File.exist?(new_path)
            puts "FYI: rename from: #{path}"
            puts "FYI: rename to  : #{new_path}"
            path.rename(new_path) if commit
          else
            puts "FYI: skip folder: #{path}"
          end
        end
      end
      unless commit
        puts "---------------------------------------------------------------------"
        puts "This is the dry run only, use --commit to make your changes permanent"
        puts "---------------------------------------------------------------------"
      end
    end

  private

    def find_depth_first(pathname)
      acc = []
      pathname.find { |file| acc << file }
      acc.reverse!
      acc.each { |path| yield path }
    end
  end
end
