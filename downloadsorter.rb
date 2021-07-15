class Downloadsorter < Formula
  desc "Tool to sort downloads base on their origin"
  homepage "https://github.com/Lutzifer/downloadSorter"
  url "https://github.com/Lutzifer/downloadSorter/archive/0.0.4.tar.gz"
  version "0.0.4"
  sha256 "4a08c3ea1b2de2dc4e1a24f509659efe4bd9443a571233725263b8eb5603eb68"

  def install
    xcodebuild "-target downloadSorter -configuration Release"
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
