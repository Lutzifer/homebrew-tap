class Keyboardswitcher < Formula
  desc "Tool that allows to switch Keyboard layouts from the command-line"
  homepage "https://github.com/Lutzifer/keyboardSwitcher"
  url "https://github.com/Lutzifer/keyboardSwitcher/releases/download/v2.0.0/keyboardSwitcher"
  version "2.0.0"
  sha256 "ff2ea7ba102a0bdf46375a94c75ea223a1712288a5a2b72188661ba15246f58c"

  def install
    bin.install("keyboardSwitcher")
  end

  test do
    system "keyboardSwitcher"
  end
end
