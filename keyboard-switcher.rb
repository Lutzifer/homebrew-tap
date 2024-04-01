class KeyboardSwitcher < Formula
  desc "Tool that allows to switch Keyboard layouts from the command-line"
  homepage "https://github.com/Lutzifer/keyboardSwitcher"
  url "https://github.com/Lutzifer/keyboardSwitcher/releases/download/v2.1.0/keyboardSwitcher"
  version "2.1.0"
  sha256 "91309d1f2dbbce61fb919e925e9f426efde694046645ccc751993f5a839a97fa"

  def install
    bin.install("keyboardSwitcher")
  end

  test do
    system "keyboardSwitcher"
  end
end
