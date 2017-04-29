class Keyboardswitcher < Formula
  desc ""
  homepage ""
  url "https://github.com/Lutzifer/keyboardSwitcher/archive/1.0.0.tar.gz"
  version "1.0.0"
  sha256 "4e3199a0ca738f18577411a135940db8bff5db25e9a5228c652f988b5d4177a0"

  def install
   xcodebuild
   bin.install("build/release/keyboardSwitcher")
  end

  test do
    system "keyboardSwitcher"
  end
end
