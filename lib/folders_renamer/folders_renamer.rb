require "fileutils"
require "pathname"
require "filename_cleaner"
module FoldersRenamer
  CustomError = Class.new(StandardError)
  class << self
    def rename(base_dir = Dir.pwd, sep_string = ".")
      base_dir = File.expand_path(base_dir)

      unless File.directory?(base_dir) && File.readable?(base_dir)
        fail "#{base_dir} is not a valid directory or not readable!"
      end

      find_depth_first(Pathname(base_dir)) do |path|
        if path.directory?
          new_path = path.dirname + Pathname(FilenameCleaner.sanitize(path.basename.to_s, sep_string))
          unless new_path == path
            puts "FYI: rename from: #{path}"
            puts "FYI: rename to  : #{new_path}"
            path.rename(new_path)
          end
        end
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
