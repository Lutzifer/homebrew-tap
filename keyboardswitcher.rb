# Documentation: https://github.com/Homebrew/homebrew/blob/master/share/doc/homebrew/Formula-Cookbook.md
#                http://www.rubydoc.info/github/Homebrew/homebrew/master/frames
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!

class Keyboardswitcher < Formula
  desc ""
  homepage ""
  url "https://github.com/Lutzifer/keyboardSwitcher/archive/0.0.3.tar.gz"
  version "0.0.3"
  sha256 "8c90b87caca856326dc4ec703147d8ad66be7900c0054ca2a07b8ca5f565fc31"

  # depends_on "cmake" => :build
  depends_on :x11 # if your formula requires any X11/XQuartz components

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
