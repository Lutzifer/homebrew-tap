class Keyboardswitcher < Formula
  desc "Tool that allows to switch Keyboard layouts from the command-line"
  homepage "https://github.com/Lutzifer/keyboardSwitcher"
  url "https://github.com/Lutzifer/keyboardSwitcher/archive/1.0.3.tar.gz"
  version "1.0.3"
  sha256 "8e7409e963643f60054e7282d1f71bf7efbe270bb37c075973c4d4110666e2ec"

  def install
    xcodebuild
    bin.install("build/release/keyboardSwitcher")
  end

  test do
    system "keyboardSwitcher"
  end
end
