class Keyboardswitcher < Formula
  desc ""
  homepage ""
  url "https://github.com/Lutzifer/keyboardSwitcher/archive/1.0.1.tar.gz"
  version "1.0.1"
  sha256 "3c925eda22be982ebe2d619cccb1c6ce3bdef715725b7cdee312c769d1cb6f9c"

  def install
   xcodebuild
   bin.install("build/release/keyboardSwitcher")
  end

  test do
    system "keyboardSwitcher"
  end
end
