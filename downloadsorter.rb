# Documentation: https://github.com/Homebrew/homebrew/blob/master/share/doc/homebrew/Formula-Cookbook.md
#                http://www.rubydoc.info/github/Homebrew/homebrew/master/frames
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!

class Downloadsorter < Formula
  desc ""
  homepage ""
  url "https://github.com/Lutzifer/downloadSorter/archive/0.0.1.tar.gz"
  version "0.0.1"
  sha256 "e14b6c3d97dd0b68244b836ad3db5d6cf1d10beeac73a02ff26de4377ff85256"

  # depends_on "cmake" => :build
  depends_on :x11 # if your formula requires any X11/XQuartz components

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
