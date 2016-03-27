# Documentation: https://github.com/Homebrew/homebrew/blob/master/share/doc/homebrew/Formula-Cookbook.md
#                http://www.rubydoc.info/github/Homebrew/homebrew/master/frames
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!

class Downloadsorter < Formula
  desc ""
  homepage ""
  url "https://github.com/Lutzifer/downloadSorter/archive/0.0.3.tar.gz"
  version "0.0.3"
  sha256 "093c6bd5507b4e9a5246d99dc16843b2be8e5ad220347947796f4c343b761968"

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
