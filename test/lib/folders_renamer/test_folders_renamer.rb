require_relative "../../test_helper"
require "minitest/filesystem"
require "tmpdir"
describe FoldersRenamer do
  before :each do
    @tmp_dir = Dir.mktmpdir(%w[foo bar])
    FileUtils.cd @tmp_dir
    FileUtils.mkdir_p "base/aa_!01/bb@02"
    @base_dir = "#{@tmp_dir}/base"
  end
  context "#rename" do
    it "works with default separator string" do
      FileUtils.cd @base_dir
      FoldersRenamer.rename(@base_dir, ".")
      filesystem do
        dir "base" do
          dir "aa.01" do
            dir "bb.02"
          end
        end
      end.must_exist_within File.absolute_path(@tmp_dir)
    end
    it "works with non-default separator string" do
      FileUtils.cd @base_dir
      FoldersRenamer.rename(@base_dir, "_")
      filesystem do
        dir "base" do
          dir "aa_01" do
            dir "bb_02"
          end
        end
      end.must_exist_within File.absolute_path(@tmp_dir)
    end
  end
end
