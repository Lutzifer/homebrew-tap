class KeyboardSwitcher < Formula
  desc "Tool that allows to switch Keyboard layouts from the command-line"
  homepage "https://github.com/Lutzifer/keyboardSwitcher"
  url "https://github.com/Lutzifer/keyboardSwitcher/releases/download/v2.2.0/keyboardSwitcher"
  version "2.2.0"
  sha256 "400b24145592a4671729c76fca7f8caf0d058ac6817e215ab79d814493d2a577"

  def install
    bin.install("keyboardSwitcher")
  end

  test do
    system "keyboardSwitcher"
  end
end
