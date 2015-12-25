# Documentation: https://github.com/Homebrew/homebrew/blob/master/share/doc/homebrew/Formula-Cookbook.md
#                http://www.rubydoc.info/github/Homebrew/homebrew/master/frames
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!

class Downloadsorter < Formula
  desc ""
  homepage ""
  url "https://github.com/Lutzifer/downloadSorter/archive/0.0.2.tar.gz"
  version "0.0.2"
  sha256 "b49a3c3bf148035bd522bf362e90a4958aea2d5ceafc6fa2d5fe5be95dbb54ee"

  def install
    system "xcodebuild", "-target", "downloadSorter", "-configuration", "Release"
    bin.install("build/release/downloadSorter")
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
