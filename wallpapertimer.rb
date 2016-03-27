# Documentation: https://github.com/Homebrew/homebrew/blob/master/share/doc/homebrew/Formula-Cookbook.md
#                http://www.rubydoc.info/github/Homebrew/homebrew/master/frames
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!

class Wallpapertimer < Formula
  desc ""
  homepage ""
  url "https://github.com/Lutzifer/Wallpapertimer/archive/0.0.3.tar.gz"
  version "0.0.3"
  sha256 "05fc300ec7220c61163623d4afb12ea981f916b4daffdb95f7b06dad5b5a0a53"

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
