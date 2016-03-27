# Documentation: https://github.com/Homebrew/homebrew/blob/master/share/doc/homebrew/Formula-Cookbook.md
#                http://www.rubydoc.info/github/Homebrew/homebrew/master/frames
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!

class Keyboardswitcher < Formula
  desc ""
  homepage ""
  url "https://github.com/Lutzifer/keyboardSwitcher/archive/0.0.5.tar.gz"
  version "0.0.5"
  sha256 "cd116f23214d49fc36b34c11e741bc4567c752abda96eae07bc896ce88757762"

  def install
   xcodebuild
   bin.install("build/release/keyboardSwitcher")
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! It's enough to just replace
    # "false" with the main program this formula installs, but it'd be nice if you
    # were more thorough. Run the test with `brew test keyboardSwitcher`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "false"
  end
end
