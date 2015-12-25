# Documentation: https://github.com/Homebrew/homebrew/blob/master/share/doc/homebrew/Formula-Cookbook.md
#                http://www.rubydoc.info/github/Homebrew/homebrew/master/frames
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!

class Wallpapertimer < Formula
  desc ""
  homepage ""
  url "https://github.com/Lutzifer/Wallpapertimer/archive/0.0.2.tar.gz"
  version "0.0.2"
  sha256 "ecafa29ae9d56460523c0b9a23724a3a1ab458021a002f19e0cbbbf5db7cfaf1"

  def install
    system "xcodebuild", "-target", "wallpaperTimer", "-configuration", "Release"
    bin.install("build/release/wallpaperTimer")
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! It's enough to just replace
    # "false" with the main program this formula installs, but it'd be nice if you
    # were more thorough. Run the test with `brew test downloadSorter`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "false"
  end
end
