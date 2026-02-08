class KeyboardSwitcher < Formula
  desc "Tool that allows to switch Keyboard layouts from the command-line"
  homepage "https://github.com/Lutzifer/keyboardSwitcher"
  url "https://github.com/Lutzifer/keyboardSwitcher/releases/download/v2.4.0/keyboardSwitcher"
  version "2.4.0"
  sha256 "4ab14129891b469049cc779e903132cc76ec45e3d27a48888371a40ddde7b7db"

  def install
    bin.install("keyboardSwitcher")
  end

  test do
    system "keyboardSwitcher"
  end
end
