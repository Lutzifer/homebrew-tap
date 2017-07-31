# Documentation: https://github.com/Homebrew/homebrew/blob/master/share/doc/homebrew/Formula-Cookbook.md
#                http://www.rubydoc.info/github/Homebrew/homebrew/master/frames
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!

class Wallpapertimer < Formula
  desc "Automatically set groups of wallpapers to multiple screens"
  homepage "https://github.com/Lutzifer/wallpaperTimer"
  url "https://github.com/Lutzifer/wallpaperTimer/archive/0.9.0.tar.gz"
  version "0.9.0"
  sha256 "190c3e4025b14b85313a7ced57cf632e25f35bebc07c258cfd0dc9329ab68e42"

  bottle do
      cellar :any_skip_relocation
      sha256 "b246817251d66490a16b6ac85eb86841bdec331dfc65040e735d159f5aeb3333" => :sierra
  end

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
